# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class DebitDisputeListParams < ::Stripe::RequestParams
        # Filter by a Financial Account.
        attr_accessor :financial_account
        # The page limit.
        attr_accessor :limit
        # Filter by status.
        attr_accessor :status

        def initialize(financial_account: nil, limit: nil, status: nil)
          @financial_account = financial_account
          @limit = limit
          @status = status
        end
      end
    end
  end
end
