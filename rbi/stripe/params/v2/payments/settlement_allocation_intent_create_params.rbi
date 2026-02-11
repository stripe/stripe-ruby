# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Payments
      class SettlementAllocationIntentCreateParams < ::Stripe::RequestParams
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
        # The amount and currency of the SettlementAllocationIntent. Allowed Currencies are `gbp` | `eur`.
        sig { returns(::Stripe::V2::Payments::SettlementAllocationIntentCreateParams::Amount) }
        def amount; end
        sig {
          params(_amount: ::Stripe::V2::Payments::SettlementAllocationIntentCreateParams::Amount).returns(::Stripe::V2::Payments::SettlementAllocationIntentCreateParams::Amount)
         }
        def amount=(_amount); end
        # Date when we expect to receive the funds. Must be in future .
        sig { returns(String) }
        def expected_settlement_date; end
        sig { params(_expected_settlement_date: String).returns(String) }
        def expected_settlement_date=(_expected_settlement_date); end
        # Financial Account Id where the funds are expected for this SettlementAllocationIntent.
        sig { returns(String) }
        def financial_account; end
        sig { params(_financial_account: String).returns(String) }
        def financial_account=(_financial_account); end
        # Metadata associated with the SettlementAllocationIntent.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
         }
        def metadata=(_metadata); end
        # Reference for the SettlementAllocationIntent. This should be same as the transaction reference used by payments processor to send funds to Stripe. Must have length between 5 and 255 characters and it must be unique among existing SettlementAllocationIntents that have a non-terminal status (`pending`, `submitted`, `matched`, `errored`).
        sig { returns(String) }
        def reference; end
        sig { params(_reference: String).returns(String) }
        def reference=(_reference); end
        sig {
          params(amount: ::Stripe::V2::Payments::SettlementAllocationIntentCreateParams::Amount, expected_settlement_date: String, financial_account: String, metadata: T.nilable(T::Hash[String, String]), reference: String).void
         }
        def initialize(
          amount: nil,
          expected_settlement_date: nil,
          financial_account: nil,
          metadata: nil,
          reference: nil
        ); end
      end
    end
  end
end