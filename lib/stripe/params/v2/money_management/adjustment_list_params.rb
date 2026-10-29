# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class AdjustmentListParams < ::Stripe::RequestParams
        class Created < ::Stripe::RequestParams
          # Filter for Adjustments created after the specified timestamp.
          # The timestamp must be in RFC 3339 format, for example `2022-09-18T13:22:00Z`.
          attr_accessor :gt
          # Filter for Adjustments created on or after the specified timestamp.
          # The timestamp must be in RFC 3339 format, for example `2022-09-18T13:22:00Z`.
          attr_accessor :gte
          # Filter for Adjustments created before the specified timestamp.
          # The timestamp must be in RFC 3339 format, for example `2022-09-18T13:22:00Z`.
          attr_accessor :lt
          # Filter for Adjustments created on or before the specified timestamp.
          # The timestamp must be in RFC 3339 format, for example `2022-09-18T13:22:00Z`.
          attr_accessor :lte

          def initialize(gt: nil, gte: nil, lt: nil, lte: nil)
            @gt = gt
            @gte = gte
            @lt = lt
            @lte = lte
          end
        end
        # Filter for Adjustments linked to a specific flow object. This filter only supports filtering by
        # the flow object's ID, such as `ibt_123` for an InboundTransfer.
        attr_accessor :adjusted_flow
        # Filter for Adjustments by their creation time using `gt`, `gte`, `lt`, or `lte`.
        attr_accessor :created
        # The page limit.
        attr_accessor :limit

        def initialize(adjusted_flow: nil, created: nil, limit: nil)
          @adjusted_flow = adjusted_flow
          @created = created
          @limit = limit
        end
      end
    end
  end
end
