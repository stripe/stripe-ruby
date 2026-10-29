# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class PayoutMethodListParams < ::Stripe::RequestParams
        class UsageStatus < ::Stripe::RequestParams
          # List of payments status to filter by.
          attr_accessor :payments
          # List of transfers status to filter by.
          attr_accessor :transfers

          def initialize(payments: nil, transfers: nil)
            @payments = payments
            @transfers = transfers
          end
        end
        # The page size.
        attr_accessor :limit
        # Usage status filter.
        attr_accessor :usage_status

        def initialize(limit: nil, usage_status: nil)
          @limit = limit
          @usage_status = usage_status
        end
      end
    end
  end
end
