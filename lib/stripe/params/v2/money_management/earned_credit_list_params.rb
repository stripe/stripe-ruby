# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class EarnedCreditListParams < ::Stripe::RequestParams
        # The FinancialAccount to list EarnedCredits for.
        attr_accessor :financial_account
        # The maximum number of EarnedCredits to return.
        attr_accessor :limit

        def initialize(financial_account: nil, limit: nil)
          @financial_account = financial_account
          @limit = limit
        end
      end
    end
  end
end
