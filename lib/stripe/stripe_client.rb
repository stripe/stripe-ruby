# frozen_string_literal: true
# typed: true

require "json"

module Stripe
  class StripeClient
    # attr_readers: The beginning of the section generated from our OpenAPI spec
    attr_reader :v1
    attr_reader :v2
    # attr_readers: The end of the section generated from our OpenAPI spec

    # Comment to prevent OAuthService being grouped with generated accessors by Rubocop
    attr_reader :oauth

    # Initializes a new StripeClient
    def initialize(api_key,
                   stripe_account: nil,
                   stripe_context: nil,
                   stripe_version: nil,
                   api_base: nil,
                   uploads_base: nil,
                   connect_base: nil,
                   client_id: nil)
      unless api_key
        raise AuthenticationError, "No API key provided. " \
                                   'Set your API key using "client = Stripe::StripeClient.new(<API-KEY>)". ' \
                                   "You can generate API keys from the Stripe web interface. " \
                                   "See https://stripe.com/api for details, or email " \
                                   "support@stripe.com if you have any questions."
      end

      config_opts = {
        api_key: api_key,
        stripe_account: stripe_account,
        stripe_context: stripe_context,
        api_version: stripe_version,
        api_base: api_base,
        uploads_base: uploads_base,
        connect_base: connect_base,
        client_id: client_id,
      }.reject { |_k, v| v.nil? }

      @requestor = APIRequestor.new(config_opts)
      @oauth = OAuthService.new(@requestor)

      # top-level services: The beginning of the section generated from our OpenAPI spec
      @v1 = Stripe::V1Service.new(@requestor)
      @v2 = Stripe::V2Service.new(@requestor)
      # top-level services: The end of the section generated from our OpenAPI spec
    end

    # TODO: thread safety investigate
    def request(&block)
      @requestor.request(&block)
    end

    def parse_thin_event(payload, sig_header, secret, tolerance: Webhook::DEFAULT_TOLERANCE)
      payload = payload.force_encoding("UTF-8") if payload.respond_to?(:force_encoding)

      # v2 events use the same signing mechanism as v1 events
      Webhook::Signature.verify_header(payload, sig_header, secret, tolerance: tolerance)

      parsed = JSON.parse(payload, symbolize_names: true)

      Stripe::ThinEvent.new(parsed)
    end

    # Initializes an Event object from a JSON payload.
    # This is the client-pattern equivalent of Webhook.construct_event
    #
    # This may raise JSON::ParserError if the payload is not valid JSON, or
    # SignatureVerificationError if the signature verification fails.
    def parse_snapshot_event(payload, sig_header, secret,
                             tolerance: Webhook::DEFAULT_TOLERANCE)
      Webhook::Signature.verify_header(payload, sig_header, secret, tolerance: tolerance)

      event_data = JSON.parse(payload, symbolize_names: true)
      Event.construct_from(event_data, {}, nil, :v1, @requestor)
    end

    def raw_request(method, url, base_address: :api, params: {}, opts: {})
      opts = Util.normalize_opts(opts)
      req_opts = RequestOptions.extract_opts_from_hash(opts)

      resp, = @requestor.send(:execute_request_internal, method, url, base_address, params, req_opts, usage: ["raw_request"])

      @requestor.interpret_response(resp)
    end

    def deserialize(data, api_mode: :v1)
      data = JSON.parse(data) if data.is_a?(String)
      Util.convert_to_stripe_object(data, {}, api_mode: api_mode)
    end
  end
end
