# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class CurrencyConversionCreateParams < ::Stripe::RequestParams
        class From < ::Stripe::RequestParams
          # An amount specified for conversion.
          attr_accessor :amount
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          attr_accessor :currency

          def initialize(amount: nil, currency: nil)
            @amount = amount
            @currency = currency
          end
        end

        class To < ::Stripe::RequestParams
          # An amount specified for conversion.
          attr_accessor :amount
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          attr_accessor :currency

          def initialize(amount: nil, currency: nil)
            @amount = amount
            @currency = currency
          end
        end
        # The ID of the Financial Account in which the Currency Conversion should be created. If omitted, it will be created in the payments balance.
        attr_accessor :financial_account
        # The source currency to debit, optionally including an amount. Either `from` or `to` must contain a specific amount (but not both).
        attr_accessor :from
        # The ID of the [FX Quote](https://docs.stripe.com/api/fx_quotes) to use.
        attr_accessor :fx_quote
        # The destination currency to credit, optionally including an amount.
        attr_accessor :to

        def initialize(financial_account: nil, from: nil, fx_quote: nil, to: nil)
          @financial_account = financial_account
          @from = from
          @fx_quote = fx_quote
          @to = to
        end
      end
    end
  end
end
