# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module TestHelpers
      class FinancialAddressCreditParams < ::Stripe::RequestParams
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
        # Object containing the amount value and currency to credit.
        sig { returns(V2::TestHelpers::FinancialAddressCreditParams::Amount) }
        def amount; end
        sig {
          params(_amount: V2::TestHelpers::FinancialAddressCreditParams::Amount).returns(V2::TestHelpers::FinancialAddressCreditParams::Amount)
         }
        def amount=(_amount); end
        # Open Enum. The network to use in simulating the funds flow. This will be the reflected in the resulting ReceivedCredit.
        sig { returns(String) }
        def network; end
        sig { params(_network: String).returns(String) }
        def network=(_network); end
        # String explaining funds flow. Use this field to populate the statement descriptor of the ReceivedCredit created as an eventual result of this simulation.
        sig { returns(T.nilable(String)) }
        def statement_descriptor; end
        sig { params(_statement_descriptor: T.nilable(String)).returns(T.nilable(String)) }
        def statement_descriptor=(_statement_descriptor); end
        sig {
          params(amount: V2::TestHelpers::FinancialAddressCreditParams::Amount, network: String, statement_descriptor: T.nilable(String)).void
         }
        def initialize(amount: nil, network: nil, statement_descriptor: nil); end
      end
    end
  end
end