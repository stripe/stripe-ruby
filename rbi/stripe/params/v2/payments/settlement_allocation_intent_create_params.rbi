# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Payments
      class SettlementAllocationIntentCreateParams < ::Stripe::RequestParams
        class Amount < ::Stripe::RequestParams
          # A non-negative integer representing how much to charge in the [smallest currency unit](https://docs.stripe.com/currencies#minor-units).
          sig { returns(T.nilable(Integer)) }
          def value; end
          sig { params(_value: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def value=(_value); end
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(T.nilable(String)) }
          def currency; end
          sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_currency); end
          sig { params(value: T.nilable(Integer), currency: T.nilable(String)).void }
          def initialize(value: nil, currency: nil); end
        end
        # The amount and currency of the SettlementAllocationIntent.
        sig { returns(V2::Payments::SettlementAllocationIntentCreateParams::Amount) }
        def amount; end
        sig {
          params(_amount: V2::Payments::SettlementAllocationIntentCreateParams::Amount).returns(V2::Payments::SettlementAllocationIntentCreateParams::Amount)
         }
        def amount=(_amount); end
        # Expected date when we expect to receive the funds.
        sig { returns(String) }
        def expected_settlement_date; end
        sig { params(_expected_settlement_date: String).returns(String) }
        def expected_settlement_date=(_expected_settlement_date); end
        # FinancialAccount where the funds are expected to land / FinancialAccount to map this SettlementAllocationIntent to.
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
        # Reference for the settlement intent . Max 255 characters . The reference used by PSP to send funds to Stripe .
        sig { returns(String) }
        def reference; end
        sig { params(_reference: String).returns(String) }
        def reference=(_reference); end
        sig {
          params(amount: V2::Payments::SettlementAllocationIntentCreateParams::Amount, expected_settlement_date: String, financial_account: String, metadata: T.nilable(T::Hash[String, String]), reference: String).void
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