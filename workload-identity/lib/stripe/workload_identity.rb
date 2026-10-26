# frozen_string_literal: true

require "stripe/workload_identity/version"

module Stripe
  module WorkloadIdentity
    # The fixed audience that Stripe expects for workload identity
    AUDIENCE = "https://access.stripe.com/wif"

    # Error is raised when a Google-signed identity assertion can't be
    # obtained. The original exception, if any, is available via `#cause`.
    class Error < StandardError
    end

    # Implements the workload identity provider, matching the
    # type expected by `Stripe::StripeClient.for_workload_identity`
    class GcpWorkloadIdentity
      def provider
        "gcp"
      end

      def identity_assertion
        require "googleauth"

        credentials = Google::Auth::GCECredentials.new(token_type: :id_token, target_audience: AUDIENCE)

        begin
          credentials.fetch_access_token!
        rescue StandardError => e
          raise Error, "Unable to obtain a GCP workload identity assertion: #{e.message}. Check that this " \
                       "process is running in a GCP environment that exposes the metadata identity-token " \
                       "endpoint, that its workload identity is allowed to request an identity token, and " \
                       "that it can reach the metadata server. For local development, tests, and CI, use " \
                       "a Stripe API key with Stripe::StripeClient.new(...) instead."
        end

        token = credentials.id_token
        raise Error, "The GCP metadata server returned no identity token." if token.nil? || token.empty?

        token
      end
    end

    # Implements the workload identity provider, matching the
    # type expected by `Stripe::StripeClient.for_workload_identity`
    class AwsWorkloadIdentity
      DEFAULT_SIGNING_ALGORITHM = "ES384"

      SETUP_GUIDANCE = "Check that the process is running on AWS infrastructure with an identity that is " \
                       "allowed to call sts:GetWebIdentityToken, and that a region is configured (the " \
                       "operation is not available on the STS global endpoint). For local development, unit " \
                       "tests, and CI that are not running on AWS, use a Stripe API key with " \
                       "Stripe::StripeClient.new(...) instead."
      private_constant :SETUP_GUIDANCE

      # `audience` and `signing_algorithm` override the JWT requested from AWS STS; only set
      # these if Stripe has told you to use different values. Any other keyword is forwarded
      # to `Aws::STS::Client.new`.
      def initialize(audience: AUDIENCE, signing_algorithm: DEFAULT_SIGNING_ALGORITHM, **sts_client_options)
        @audience = audience
        @signing_algorithm = signing_algorithm
        @sts_client_options = sts_client_options
      end

      def provider
        "aws"
      end

      def identity_assertion
        require "aws-sdk-core"

        client = Aws::STS::Client.new(**@sts_client_options)

        begin
          response = client.get_web_identity_token(audience: [@audience], signing_algorithm: @signing_algorithm)
        rescue StandardError
          raise Error, "Unable to obtain an AWS workload identity assertion: sts:GetWebIdentityToken failed. " \
                       "#{SETUP_GUIDANCE}"
        end

        token = response.web_identity_token
        if token.nil? || token.empty?
          raise Error, "Unable to obtain an AWS workload identity assertion: sts:GetWebIdentityToken " \
                       "returned no WebIdentityToken. #{SETUP_GUIDANCE}"
        end

        token
      end
    end
  end
end
