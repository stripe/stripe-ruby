# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Payments
      class SettlementAllocationIntentUpdateParams < ::Stripe::RequestParams
        class Amount < ::Stripe::RequestParams
          # A non-negative integer representing how much to charge in the [smallest currency unit](https://docs.stripe.com/currencies#minor-units).
          attr_accessor :value
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          attr_accessor :currency

          def initialize(value: nil, currency: nil)
            @value = value
            @currency = currency
          end
        end
        # The new amount for the SettlementAllocationIntent. Only amount.value can be updated and currency must remain same.
        attr_accessor :amount
        # The new reference for the SettlementAllocationIntent.
        attr_accessor :reference

        def initialize(amount: nil, reference: nil)
          @amount = amount
          @reference = reference
        end
      end
    end
  end
end
