# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Payments
      class SettlementAllocationIntentUpdateParams < ::Stripe::RequestParams
        class Amount < ::Stripe::RequestParams
          # A non-negative integer representing how much to charge in the [smallest currency unit](https://docs.stripe.com/currencies#minor-units).
          sig { returns(Integer) }
          def value; end
          sig { params(_value: Integer).returns(Integer) }
          def value=(_value); end
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(String) }
          def currency; end
          sig { params(_currency: String).returns(String) }
          def currency=(_currency); end
          sig { params(value: Integer, currency: String).void }
          def initialize(value: nil, currency: nil); end
        end
        # The new amount for the SettlementAllocationIntent. Only amount.value can be updated and currency must remain same.
        sig {
          returns(T.nilable(::Stripe::V2::Payments::SettlementAllocationIntentUpdateParams::Amount))
         }
        def amount; end
        sig {
          params(_amount: T.nilable(::Stripe::V2::Payments::SettlementAllocationIntentUpdateParams::Amount)).returns(T.nilable(::Stripe::V2::Payments::SettlementAllocationIntentUpdateParams::Amount))
         }
        def amount=(_amount); end
        # The new reference for the SettlementAllocationIntent.
        sig { returns(T.nilable(String)) }
        def reference; end
        sig { params(_reference: T.nilable(String)).returns(T.nilable(String)) }
        def reference=(_reference); end
        sig {
          params(amount: T.nilable(::Stripe::V2::Payments::SettlementAllocationIntentUpdateParams::Amount), reference: T.nilable(String)).void
         }
        def initialize(amount: nil, reference: nil); end
      end
    end
  end
end