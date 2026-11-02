# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class CurrencyConversionListParams < ::Stripe::RequestParams
        # The ID of the Financial Account for which conversions should be listed.
        attr_accessor :financial_account
        # The maximum number of Currency Conversions to return.
        attr_accessor :limit

        def initialize(financial_account: nil, limit: nil)
          @financial_account = financial_account
          @limit = limit
        end
      end
    end
  end
end
