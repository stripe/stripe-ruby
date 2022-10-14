# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Radar
    # An early fraud warning indicates that the card issuer has notified us that a
    # charge may be fraudulent.
    #
    # Related guide: [Early Fraud Warnings](https://stripe.com/docs/disputes/measuring#early-fraud-warnings).
    class EarlyFraudWarning < APIResource
      extend Stripe::APIOperations::List

      OBJECT_NAME = "radar.early_fraud_warning"
    end
  end
end
