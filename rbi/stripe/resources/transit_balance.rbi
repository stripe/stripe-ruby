# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # Funds that are in transit and destined for another balance or another connected account.
  class TransitBalance < APIResource
    class Balance < ::Stripe::StripeObject
      # Attribute for field available
      sig { returns(Integer) }
      def available; end
      # Attribute for field pending
      sig { returns(Integer) }
      def pending; end
      def self.inner_class_types
        @inner_class_types = {}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    # Attribute for field balance
    sig { returns(Balance) }
    def balance; end
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    def created; end
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    sig { returns(String) }
    def currency; end
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    def livemode; end
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    def object; end
  end
end