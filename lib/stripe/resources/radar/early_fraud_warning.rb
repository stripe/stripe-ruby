# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Radar
    # An early fraud warning indicates that the card issuer has notified us that a
    # charge may be fraudulent.
    #
    # Related guide: [Early fraud warnings](https://stripe.com/docs/disputes/measuring#early-fraud-warnings)
    class EarlyFraudWarning < APIResource
      extend Stripe::APIOperations::List

      OBJECT_NAME = "radar.early_fraud_warning"
      def self.object_name
        "radar.early_fraud_warning"
      end

      # Returns a list of early fraud warnings.
      def self.list(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/radar/early_fraud_warnings",
          params: params,
          opts: opts
        )
      end
    end
  end
end
