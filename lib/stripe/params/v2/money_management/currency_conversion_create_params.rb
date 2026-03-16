# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class CurrencyConversionCreateParams < ::Stripe::RequestParams
        class From < ::Stripe::RequestParams
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
          # Amount object.
          attr_accessor :amount
          # A lowercase alpha3 currency code like "usd".
          attr_accessor :currency

          def initialize(amount: nil, currency: nil)
            @amount = amount
            @currency = currency
          end
        end

        class To < ::Stripe::RequestParams
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
          # Amount object.
          attr_accessor :amount
          # A lowercase alpha3 currency code like "usd".
          attr_accessor :currency

          def initialize(amount: nil, currency: nil)
            @amount = amount
            @currency = currency
          end
        end
        # The FinancialAccount id to create the CurrencyConversion on.
        attr_accessor :financial_account
        # From amount object indicating the from currency or optional amount.
        attr_accessor :from
        # To amount object indicating the to currency or optional amount.
        attr_accessor :to

        def initialize(financial_account: nil, from: nil, to: nil)
          @financial_account = financial_account
          @from = from
          @to = to
        end
      end
    end
  end
end
