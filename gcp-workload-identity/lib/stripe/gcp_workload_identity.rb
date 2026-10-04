# frozen_string_literal: true

require "googleauth"

require "stripe/gcp_workload_identity/version"

module Stripe
  module GcpWorkloadIdentity
    # The fixed audience that Stripe expects for GCP workload identity
    # assertions. Not configurable: the Stripe Dashboard's workload identity
    # configuration trusts assertions issued for this exact audience.
    AUDIENCE = "https://api.stripe.com/workload-identity"

    # Error is raised when a Google-signed identity assertion can't be
    # obtained. The original exception, if any, is available via `#cause`.
    class Error < StandardError
    end

    # Implements the workload identity provider duck type
    # (`provider` + `get_identity_assertion`) expected by
    # `Stripe::StripeClient.for_workload_identity`, backed by a
    # Google-signed ID token obtained from the GCE-compatible instance
    # metadata server. Works on Compute Engine and Cloud Run.
    class GcpWorkloadIdentity
      def provider
        "gcp"
      end

      # rubocop:disable Naming/AccessorMethodName -- matches the duck-typed provider interface
      def get_identity_assertion
        credentials = Google::Auth::GCECredentials.new(token_type: :id_token, target_audience: AUDIENCE)

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
      # rubocop:enable Naming/AccessorMethodName
    end
  end
end
