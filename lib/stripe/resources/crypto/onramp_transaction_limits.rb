# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Crypto
    # This object represents the limit for the remaining amount that the crypto customer can onramp.
    class OnrampTransactionLimits < SingletonAPIResource
      OBJECT_NAME = "crypto.onramp_transaction_limits"
      def self.object_name
        "crypto.onramp_transaction_limits"
      end

      # The ID of the crypto customer.
      attr_reader :crypto_customer_id
      # The remaining onramp limit for the crypto customer, separated by currency, payment method, and settlement speed.
      #
      # Limits are shown for currencies that correspond to the regions where the customer previously transacted. If the customer has no prior transactions, we return limits for all supported currencies.
      attr_reader :limits
      # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
      attr_reader :livemode
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object

      def self.inner_class_types
        @inner_class_types = {}
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end
  end
end
