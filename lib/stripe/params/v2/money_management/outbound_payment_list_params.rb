# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class OutboundPaymentListParams < ::Stripe::RequestParams
        # Filter for objects created at the specified timestamp.
        # Must be an RFC 3339 date & time value, for example: 2022-09-18T13:22:00Z.
        attr_accessor :created
        # Filter for objects created after the specified timestamp.
        # Must be an RFC 3339 date & time value, for example: 2022-09-18T13:22:00Z.
        attr_accessor :created_gt
        # Filter for objects created on or after the specified timestamp.
        # Must be an RFC 3339 date & time value, for example: 2022-09-18T13:22:00Z.
        attr_accessor :created_gte
        # Filter for objects created before the specified timestamp.
        # Must be an RFC 3339 date & time value, for example: 2022-09-18T13:22:00Z.
        attr_accessor :created_lt
        # Filter for objects created on or before the specified timestamp.
        # Must be an RFC 3339 date & time value, for example: 2022-09-18T13:22:00Z.
        attr_accessor :created_lte
        # The maximum number of results to return.
        attr_accessor :limit
        # Only return OutboundPayments sent to this recipient.
        attr_accessor :recipient
        # Closed Enum. Only return OutboundPayments with this status.
        attr_accessor :status

        def initialize(
          created: nil,
          created_gt: nil,
          created_gte: nil,
          created_lt: nil,
          created_lte: nil,
          limit: nil,
          recipient: nil,
          status: nil
        )
          @created = created
          @created_gt = created_gt
          @created_gte = created_gte
          @created_lt = created_lt
          @created_lte = created_lte
          @limit = limit
          @recipient = recipient
          @status = status
        end
      end
    end
  end
end
