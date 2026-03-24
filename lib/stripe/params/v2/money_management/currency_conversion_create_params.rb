# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class CurrencyConversionCreateParams < ::Stripe::RequestParams
        class From < ::Stripe::RequestParams
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
