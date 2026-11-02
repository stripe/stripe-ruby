# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class CurrencyConversionCreateParams < ::Stripe::RequestParams
        class From < ::Stripe::RequestParams
          # An amount specified for conversion.
          sig { returns(T.nilable(::Stripe::V2::Amount)) }
          def amount; end
          sig {
            params(_amount: T.nilable(::Stripe::V2::Amount)).returns(T.nilable(::Stripe::V2::Amount))
           }
          def amount=(_amount); end
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(T.nilable(String)) }
          def currency; end
          sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_currency); end
          sig { params(amount: T.nilable(::Stripe::V2::Amount), currency: T.nilable(String)).void }
          def initialize(amount: nil, currency: nil); end
        end
        class To < ::Stripe::RequestParams
          # An amount specified for conversion.
          sig { returns(T.nilable(::Stripe::V2::Amount)) }
          def amount; end
          sig {
            params(_amount: T.nilable(::Stripe::V2::Amount)).returns(T.nilable(::Stripe::V2::Amount))
           }
          def amount=(_amount); end
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(T.nilable(String)) }
          def currency; end
          sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_currency); end
          sig { params(amount: T.nilable(::Stripe::V2::Amount), currency: T.nilable(String)).void }
          def initialize(amount: nil, currency: nil); end
        end
        # The ID of the Financial Account in which the Currency Conversion should be created. If omitted, it will be created in the payments balance.
        sig { returns(T.nilable(String)) }
        def financial_account; end
        sig { params(_financial_account: T.nilable(String)).returns(T.nilable(String)) }
        def financial_account=(_financial_account); end
        # The source currency to debit, optionally including an amount. Either `from` or `to` must contain a specific amount (but not both).
        sig { returns(::Stripe::V2::MoneyManagement::CurrencyConversionCreateParams::From) }
        def from; end
        sig {
          params(_from: ::Stripe::V2::MoneyManagement::CurrencyConversionCreateParams::From).returns(::Stripe::V2::MoneyManagement::CurrencyConversionCreateParams::From)
         }
        def from=(_from); end
        # The ID of the [FX Quote](https://docs.stripe.com/api/fx_quotes) to use.
        sig { returns(T.nilable(String)) }
        def fx_quote; end
        sig { params(_fx_quote: T.nilable(String)).returns(T.nilable(String)) }
        def fx_quote=(_fx_quote); end
        # The destination currency to credit, optionally including an amount.
        sig { returns(::Stripe::V2::MoneyManagement::CurrencyConversionCreateParams::To) }
        def to; end
        sig {
          params(_to: ::Stripe::V2::MoneyManagement::CurrencyConversionCreateParams::To).returns(::Stripe::V2::MoneyManagement::CurrencyConversionCreateParams::To)
         }
        def to=(_to); end
        sig {
          params(financial_account: T.nilable(String), from: ::Stripe::V2::MoneyManagement::CurrencyConversionCreateParams::From, fx_quote: T.nilable(String), to: ::Stripe::V2::MoneyManagement::CurrencyConversionCreateParams::To).void
         }
        def initialize(financial_account: nil, from: nil, fx_quote: nil, to: nil); end
      end
    end
  end
end