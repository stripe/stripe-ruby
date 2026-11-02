# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class FundingIntentListParams < ::Stripe::RequestParams
        class Created < ::Stripe::RequestParams
          # Return FundingIntents created after this timestamp.
          attr_accessor :gt
          # Return FundingIntents created at or after this timestamp.
          attr_accessor :gte
          # Return FundingIntents created before this timestamp.
          attr_accessor :lt
          # Return FundingIntents created at or before this timestamp.
          attr_accessor :lte

          def initialize(gt: nil, gte: nil, lt: nil, lte: nil)
            @gt = gt
            @gte = gte
            @lt = lt
            @lte = lte
          end
        end
        # Filters the results by their creation time.
        attr_accessor :created
        # The maximum number of results to return.
        attr_accessor :limit

        def initialize(created: nil, limit: nil)
          @created = created
          @limit = limit
        end
      end
    end
  end
end
