# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class FinancialAddressListParams < ::Stripe::RequestParams
        # The ID of the FinancialAccount for which FinancialAddresses are to be returned.
        attr_accessor :financial_account
        # The page limit.
        attr_accessor :limit

        def initialize(financial_account: nil, limit: nil)
          @financial_account = financial_account
          @limit = limit
        end
      end
    end
  end
end
