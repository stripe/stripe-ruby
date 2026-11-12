# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class ReceivedDebitListParams < ::Stripe::RequestParams
        class Created < ::Stripe::RequestParams
          # Return ReceivedDebits created after this timestamp.
          attr_accessor :gt
          # Return ReceivedDebits created on or after this timestamp.
          attr_accessor :gte
          # Return ReceivedDebits created before this timestamp.
          attr_accessor :lt
          # Return ReceivedDebits created on or before this timestamp.
          attr_accessor :lte

          def initialize(gt: nil, gte: nil, lt: nil, lte: nil)
            @gt = gt
            @gte = gte
            @lt = lt
            @lte = lte
          end
        end
        # Filter ReceivedDebits by their creation time.
        attr_accessor :created
        # The page limit.
        attr_accessor :limit

        def initialize(created: nil, limit: nil)
          @created = created
          @limit = limit
        end
      end
    end
  end
end
