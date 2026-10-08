# frozen_string_literal: true

require "net/http"
require "uri"

module Stripe
  # Workload identity lets a client authenticate to Stripe using a cloud
  # provider-signed identity assertion instead of a long-lived API key.
  #
  # This module intentionally has no dependency on any cloud provider SDK.
  # Providers (e.g. GCP) are supplied by separately-packaged adapter gems
  # that implement the interface validated by `validate_provider!`.
  module WorkloadIdentity
    GRANT_TYPE = "urn:ietf:params:oauth:grant-type:jwt-bearer"
    TOKEN_HOST = "access.stripe.com"
    TOKEN_PATH = "/wif/oauth2/token"
    TOKEN_URL = "https://#{TOKEN_HOST}#{TOKEN_PATH}".freeze

    SUPPORTED_PROVIDERS = ["gcp"].freeze

    # The exchange endpoint is fixed and deliberately independent of any
    # configurable `api_base`, so a misconfigured or malicious API base can
    # never redirect the identity assertion elsewhere.
    TOKEN_REQUEST_TIMEOUT = 30

    MAX_RELAYED_TEXT_LENGTH = 256
    REDACTED_PLACEHOLDER = "[redacted]"

    # Number of seconds before actual expiry that a cached token is
    # considered stale and eligible for proactive refresh.
    REFRESH_SAFETY_MARGIN_SEC = 300

    def self.validate_provider!(identity_provider)
      unless identity_provider.respond_to?(:provider) && identity_provider.respond_to?(:identity_assertion)
        raise WorkloadIdentityError,
              "The identity_provider passed to Stripe::StripeClient.for_workload_identity must respond to " \
              "`provider` and `identity_assertion`."
      end

      provider = identity_provider.provider
      return if provider.is_a?(String) && SUPPORTED_PROVIDERS.include?(provider)

      raise WorkloadIdentityError,
            "Unsupported workload identity provider #{provider.inspect}. Supported providers: " \
            "#{SUPPORTED_PROVIDERS.join(', ')}."
    end

    # Returns the token substring of a `Bearer <token>` Authorization header
    # value, or `nil` if the header doesn't have that shape.
    def self.extract_bearer_token(header_value)
      return nil unless header_value.is_a?(String)

      match = /\ABearer (.+)\z/.match(header_value)
      match && match[1]
    end

    def self.sanitize_relayed_text(text, assertion: nil)
      return nil if text.nil?

      sanitized = text.to_s
      sanitized = sanitized.gsub(assertion, REDACTED_PLACEHOLDER) if assertion && !assertion.empty?
      sanitized = "#{sanitized[0, MAX_RELAYED_TEXT_LENGTH]}..." if sanitized.length > MAX_RELAYED_TEXT_LENGTH
      sanitized
    end

    # The callable installed as `StripeConfiguration#authenticator` for a
    # workload identity client. Being a distinct class (rather than a bare
    # `Proc`) lets `APIRequestor` recognize workload identity clients via `is_a?`
    class Authenticator
      attr_reader :credentials

      def initialize(credentials)
        @credentials = credentials
      end

      def call
        "Bearer #{credentials.token}"
      end
    end

    # Owns the in-memory credential cache for a single workload identity
    # client: exchanging the provider's identity assertion for a Stripe
    # restricted key, caching it, and refreshing it before it expires.
    #
    # Concurrent callers coalesce onto a single exchange because `token`
    # and `refresh_token` both run under the same mutex.
    class Credentials
      def initialize(client_id, identity_provider, transport: self.class.method(:default_transport))
        @client_id = client_id
        @identity_provider = identity_provider
        @transport = transport
        @mutex = Mutex.new
        @cached = nil
        @pid = Process.pid
      end

      # Returns a cached, valid restricted key, exchanging for a new one if
      # there's no cached key or the cached one is near expiry.
      def token
        @mutex.synchronize do
          reset_after_fork!
          exchange! if @cached.nil? || Util.monotonic_time >= @cached[:refresh_at]
          @cached[:access_token]
        end
      end

      # Forces a refresh, but only if the cache still holds `stale_token` —
      # if another thread already refreshed past it, this is a no-op so a
      # late 401 can't clobber a newer, already-valid key.
      def refresh_token(stale_token)
        @mutex.synchronize do
          reset_after_fork!
          exchange! if @cached.nil? || @cached[:access_token] == stale_token
          @cached[:access_token]
        end
      end

      private def reset_after_fork!
        return if Process.pid == @pid

        @pid = Process.pid
        @cached = nil
      end

      private def exchange!
        assertion = fetch_assertion!
        body = URI.encode_www_form(
          grant_type: GRANT_TYPE,
          client_id: @client_id,
          assertion: assertion
        )

        status, response_body = @transport.call(body)
        handle_exchange_response!(status, response_body, assertion)
      end

      private def fetch_assertion!
        @identity_provider.identity_assertion
      rescue StandardError => e
        raise WorkloadIdentityError, "Unable to obtain an identity assertion from the workload identity " \
                                     "provider: #{e.message}"
      end

      private def handle_exchange_response!(status, response_body, assertion)
        raise WorkloadIdentityError, describe_exchange_rejection(status, response_body, assertion) unless status == 200

        parsed = begin
          JSON.parse(response_body, symbolize_names: true)
        rescue JSON::ParserError
          raise WorkloadIdentityError, "The workload identity token exchange returned a response that " \
                                       "couldn't be parsed as JSON."
        end

        access_token = parsed[:access_token]
        token_type = parsed[:token_type]
        expires_in = parsed[:expires_in]

        unless access_token.is_a?(String) && !access_token.empty?
          raise WorkloadIdentityError, "The workload identity token exchange response did not include a " \
                                       "usable access_token."
        end

        unless token_type.is_a?(String) && token_type.casecmp("bearer").zero?
          raise WorkloadIdentityError, "The workload identity token exchange response had an unexpected " \
                                       "token_type #{token_type.inspect}."
        end

        unless expires_in.is_a?(Numeric) && expires_in.finite? && expires_in.positive?
          raise WorkloadIdentityError, "The workload identity token exchange response had an invalid " \
                                       "expires_in value."
        end

        if expires_in <= REFRESH_SAFETY_MARGIN_SEC
          raise WorkloadIdentityError, "The workload identity token exchange returned a token with too " \
                                       "short a lifetime to be usable."
        end

        @cached = {
          access_token: access_token,
          refresh_at: Util.monotonic_time + (expires_in - REFRESH_SAFETY_MARGIN_SEC),
        }
      end

      private def describe_exchange_rejection(status, response_body, assertion)
        parsed =
          begin
            JSON.parse(response_body, symbolize_names: true)
          rescue JSON::ParserError, TypeError
            nil
          end

        detail =
          if parsed.is_a?(Hash)
            WorkloadIdentity.sanitize_relayed_text(parsed[:error_description] || parsed[:error],
                                                   assertion: assertion)
          end

        message = "The workload identity token exchange was rejected (HTTP status #{status})."
        detail ? "#{message} #{detail}" : message
      end

      # The fixed-endpoint POST transport used by default. Deliberately
      # built on raw `Net::HTTP` rather than `ConnectionManager` so that it's
      # independent of any configurable host/port, and so that it never
      # follows redirects (`Net::HTTP#request` doesn't auto-follow 3xx
      # responses, and we never add code to do so).
      def self.default_transport(body)
        uri = URI(TOKEN_URL)
        http = Net::HTTP.new(uri.host, uri.port)
        http.use_ssl = true
        http.open_timeout = TOKEN_REQUEST_TIMEOUT
        http.read_timeout = TOKEN_REQUEST_TIMEOUT

        request = Net::HTTP::Post.new(uri.request_uri)
        request["Content-Type"] = "application/x-www-form-urlencoded"
        request["Accept"] = "application/json"
        request.body = body

        response = http.request(request)
        [response.code.to_i, response.body]
      end
    end
  end
end
