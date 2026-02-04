# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class CurrencyConversionCreateParams < ::Stripe::RequestParams
        class From < ::Stripe::RequestParams
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
          # Amount object.
          sig {
            returns(T.nilable(::Stripe::V2::MoneyManagement::CurrencyConversionCreateParams::From::Amount))
           }
          def amount; end
          sig {
            params(_amount: T.nilable(::Stripe::V2::MoneyManagement::CurrencyConversionCreateParams::From::Amount)).returns(T.nilable(::Stripe::V2::MoneyManagement::CurrencyConversionCreateParams::From::Amount))
           }
          def amount=(_amount); end
          # A lowercase alpha3 currency code like "usd".
          sig { returns(T.nilable(String)) }
          def currency; end
          sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_currency); end
          sig {
            params(amount: T.nilable(::Stripe::V2::MoneyManagement::CurrencyConversionCreateParams::From::Amount), currency: T.nilable(String)).void
           }
          def initialize(amount: nil, currency: nil); end
        end
        class To < ::Stripe::RequestParams
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
          # Amount object.
          sig {
            returns(T.nilable(::Stripe::V2::MoneyManagement::CurrencyConversionCreateParams::To::Amount))
           }
          def amount; end
          sig {
            params(_amount: T.nilable(::Stripe::V2::MoneyManagement::CurrencyConversionCreateParams::To::Amount)).returns(T.nilable(::Stripe::V2::MoneyManagement::CurrencyConversionCreateParams::To::Amount))
           }
          def amount=(_amount); end
          # A lowercase alpha3 currency code like "usd".
          sig { returns(T.nilable(String)) }
          def currency; end
          sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_currency); end
          sig {
            params(amount: T.nilable(::Stripe::V2::MoneyManagement::CurrencyConversionCreateParams::To::Amount), currency: T.nilable(String)).void
           }
          def initialize(amount: nil, currency: nil); end
        end
        # The FinancialAccount id to create the CurrencyConversion on.
        sig { returns(String) }
        def financial_account; end
        sig { params(_financial_account: String).returns(String) }
        def financial_account=(_financial_account); end
        # From amount object indicating the from currency or optional amount.
        sig { returns(::Stripe::V2::MoneyManagement::CurrencyConversionCreateParams::From) }
        def from; end
        sig {
          params(_from: ::Stripe::V2::MoneyManagement::CurrencyConversionCreateParams::From).returns(::Stripe::V2::MoneyManagement::CurrencyConversionCreateParams::From)
         }
        def from=(_from); end
        # To amount object indicating the to currency or optional amount.
        sig { returns(::Stripe::V2::MoneyManagement::CurrencyConversionCreateParams::To) }
        def to; end
        sig {
          params(_to: ::Stripe::V2::MoneyManagement::CurrencyConversionCreateParams::To).returns(::Stripe::V2::MoneyManagement::CurrencyConversionCreateParams::To)
         }
        def to=(_to); end
        sig {
          params(financial_account: String, from: ::Stripe::V2::MoneyManagement::CurrencyConversionCreateParams::From, to: ::Stripe::V2::MoneyManagement::CurrencyConversionCreateParams::To).void
         }
        def initialize(financial_account: nil, from: nil, to: nil); end
      end
    end
  end
end