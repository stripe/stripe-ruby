# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      class ApprovalRequestListParams < ::Stripe::RequestParams
        class Created < ::Stripe::RequestParams
          # Filter for objects created after the specified timestamp.
          # Must be an RFC 3339 date & time value, for example: 2022-09-18T13:22:00Z.
          attr_accessor :gt
          # Filter for objects created on or after the specified timestamp.
          # Must be an RFC 3339 date & time value, for example: 2022-09-18T13:22:00Z.
          attr_accessor :gte
          # Filter for objects created before the specified timestamp.
          # Must be an RFC 3339 date & time value, for example: 2022-09-18T13:22:00Z.
          attr_accessor :lt
          # Filter for objects created on or before the specified timestamp.
          # Must be an RFC 3339 date & time value, for example: 2022-09-18T13:22:00Z.
          attr_accessor :lte

          def initialize(gt: nil, gte: nil, lt: nil, lte: nil)
            @gt = gt
            @gte = gte
            @lt = lt
            @lte = lte
          end
        end
        # Filter by action type (e.g. "refund.create", "payment_intent.create", "payout.create").
        attr_accessor :action
        # Filter by creation time.
        attr_accessor :created
        # Maximum number of results to return.
        attr_accessor :limit
        # Filter by approval request status (e.g. "requires_review", "approved", "succeeded", "failed", "rejected", "canceled", "expired").
        attr_accessor :status

        def initialize(action: nil, created: nil, limit: nil, status: nil)
          @action = action
          @created = created
          @limit = limit
          @status = status
        end
      end
    end
  end
end
