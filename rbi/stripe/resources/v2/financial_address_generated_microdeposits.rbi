# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    class FinancialAddressGeneratedMicrodeposits < APIResource
      class Amount < ::Stripe::StripeObject
        # A non-negative integer representing how much to charge in the [smallest currency unit](https://docs.stripe.com/currencies#minor-units).
        sig { returns(Integer) }
        def value; end
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        sig { returns(String) }
        def currency; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # The amounts of the microdeposits that were generated.
      sig { returns(T::Array[Amount]) }
      def amounts; end
      # String representing the object's type. Objects of the same type share the same value of the object field.
      sig { returns(String) }
      def object; end
      # Closed Enum. The status of the request.
      sig { returns(String) }
      def status; end
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      def livemode; end
    end
  end
end