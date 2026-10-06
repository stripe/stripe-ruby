# frozen_string_literal: true

require "googleauth"

require "stripe/gcp_workload_identity/version"

module Stripe
  module GcpWorkloadIdentity
    # The fixed audience that Stripe expects for workload identity
    AUDIENCE = "https://api.stripe.com/workload-identity"

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
        credentials = Google::Auth::GCECredentials.new(target_audience: AUDIENCE)

        begin
          credentials.fetch_access_token!
        rescue StandardError => e
          raise Error, "Unable to obtain a GCP workload identity assertion: #{e.message}. Check that this " \
                       "process is running on Compute Engine or Cloud Run with an identity that's allowed " \
                       "to request an identity token, and that it has network access to the metadata " \
                       "server. For local development, tests, and CI, use a Stripe API key with " \
                       "Stripe::StripeClient.new(...) instead."
        end

        token = credentials.id_token
        raise Error, "The GCE metadata server returned no identity token." if token.nil? || token.empty?

        token
      end
    end
  end
end
