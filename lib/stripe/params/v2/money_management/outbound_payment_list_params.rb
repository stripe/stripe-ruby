# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class OutboundPaymentListParams < ::Stripe::RequestParams
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
        # Filter OutboundPayments by their creation time.
        attr_accessor :created
        # The maximum number of results to return.
        attr_accessor :limit
        # Only return OutboundPayments sent to this recipient.
        attr_accessor :recipient
        # Closed Enum. Only return OutboundPayments with this status.
        attr_accessor :status

        def initialize(created: nil, limit: nil, recipient: nil, status: nil)
          @created = created
          @limit = limit
          @recipient = recipient
          @status = status
        end
      end
    end
  end
end
