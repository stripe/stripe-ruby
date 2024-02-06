# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Identity
    # A VerificationReport is the result of an attempt to collect and verify data from a user.
    # The collection of verification checks performed is determined from the `type` and `options`
    # parameters used. You can find the result of each verification check performed in the
    # appropriate sub-resource: `document`, `id_number`, `selfie`.
    #
    # Each VerificationReport contains a copy of any data collected by the user as well as
    # reference IDs which can be used to access collected images through the [FileUpload](https://stripe.com/docs/api/files)
    # API. To configure and create VerificationReports, use the
    # [VerificationSession](https://stripe.com/docs/api/identity/verification_sessions) API.
    #
    # Related guides: [Accessing verification results](https://stripe.com/docs/identity/verification-sessions#results).
    class VerificationReport < APIResource
      extend Stripe::APIOperations::List

      OBJECT_NAME = "identity.verification_report"

      # List all verification reports.
      def self.list(filters = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/identity/verification_reports",
          params: filters,
          opts: opts
        )
      end
    end
  end
end
