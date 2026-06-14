# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class CurrencyConversionCreateParams < ::Stripe::RequestParams
        class From < ::Stripe::RequestParams
          # Amount object.
          sig { returns(T.nilable(::Stripe::V2::Amount)) }
          def amount; end
          sig {
            params(_amount: T.nilable(::Stripe::V2::Amount)).returns(T.nilable(::Stripe::V2::Amount))
           }
          def amount=(_amount); end
          # A lowercase alpha3 currency code like "usd".
          sig { returns(T.nilable(String)) }
          def currency; end
          sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_currency); end
          sig { params(amount: T.nilable(::Stripe::V2::Amount), currency: T.nilable(String)).void }
          def initialize(amount: nil, currency: nil); end
        end
        class To < ::Stripe::RequestParams
          # Amount object.
          sig { returns(T.nilable(::Stripe::V2::Amount)) }
          def amount; end
          sig {
            params(_amount: T.nilable(::Stripe::V2::Amount)).returns(T.nilable(::Stripe::V2::Amount))
           }
          def amount=(_amount); end
          # A lowercase alpha3 currency code like "usd".
          sig { returns(T.nilable(String)) }
          def currency; end
          sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_currency); end
          sig { params(amount: T.nilable(::Stripe::V2::Amount), currency: T.nilable(String)).void }
          def initialize(amount: nil, currency: nil); end
        end
        # The FinancialAccount id to create the CurrencyConversion on.
        sig { returns(T.nilable(String)) }
        def financial_account; end
        sig { params(_financial_account: T.nilable(String)).returns(T.nilable(String)) }
        def financial_account=(_financial_account); end
        # From amount object indicating the from currency or optional amount.
        sig { returns(::Stripe::V2::MoneyManagement::CurrencyConversionCreateParams::From) }
        def from; end
        sig {
          params(_from: ::Stripe::V2::MoneyManagement::CurrencyConversionCreateParams::From).returns(::Stripe::V2::MoneyManagement::CurrencyConversionCreateParams::From)
         }
        def from=(_from); end
        # The FX quote to use for the conversion.
        sig { returns(T.nilable(String)) }
        def fx_quote; end
        sig { params(_fx_quote: T.nilable(String)).returns(T.nilable(String)) }
        def fx_quote=(_fx_quote); end
        # To amount object indicating the to currency or optional amount.
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