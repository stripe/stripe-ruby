# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Payments
      module SettlementAllocationIntents
        class SplitListParams < ::Stripe::RequestParams
          # The page size.
          attr_accessor :limit
          # Filter the SettlementAllocationIntentSplits by status.
          attr_accessor :status

          def initialize(limit: nil, status: nil)
            @limit = limit
            @status = status
          end
        end
      end
    end
  end
end
