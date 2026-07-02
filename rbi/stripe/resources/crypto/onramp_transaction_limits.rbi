# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Crypto
    # This object represents the limit for the remaining amount that the crypto customer can onramp.
    class OnrampTransactionLimits < SingletonAPIResource
      # The ID of the crypto customer.
      sig { returns(String) }
      def crypto_customer_id; end
      # The remaining onramp limit for the crypto customer, separated by currency, payment method, and settlement speed.
      #
      # Limits are shown for currencies that correspond to the regions where the customer previously transacted. If the customer has no prior transactions, we return limits for all supported currencies.
      sig { returns(T::Hash[String, T.untyped]) }
      def limits; end
      # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
      sig { returns(T::Boolean) }
      def livemode; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
    end
  end
end