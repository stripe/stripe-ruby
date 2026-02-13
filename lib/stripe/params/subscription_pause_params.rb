# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class SubscriptionPauseParams < ::Stripe::RequestParams
    class BillFor < ::Stripe::RequestParams
      class OutstandingUsageThrough < ::Stripe::RequestParams
        # When to bill metered usage in the current period.
        attr_accessor :type

        def initialize(type: nil)
          @type = type
        end
      end

      class UnusedTimeFrom < ::Stripe::RequestParams
        # When to credit for unused time.
        attr_accessor :type

        def initialize(type: nil)
          @type = type
        end
      end
      # Controls when to bill for metered usage in the current period. Defaults to `{ type: "now" }`.
      attr_accessor :outstanding_usage_through
      # Controls when to credit for unused time on licensed items. Defaults to `{ type: "now" }`.
      attr_accessor :unused_time_from

      def initialize(outstanding_usage_through: nil, unused_time_from: nil)
        @outstanding_usage_through = outstanding_usage_through
        @unused_time_from = unused_time_from
      end
    end
    # Controls what to bill for when pausing the subscription.
    attr_accessor :bill_for
    # Specifies which fields in the response should be expanded.
    attr_accessor :expand
    # Determines how to handle debits and credits when pausing. The default is `pending_invoice_item`.
    attr_accessor :invoicing_behavior
    # The type of pause to apply.
    attr_accessor :type

    def initialize(bill_for: nil, expand: nil, invoicing_behavior: nil, type: nil)
      @bill_for = bill_for
      @expand = expand
      @invoicing_behavior = invoicing_behavior
      @type = type
    end
  end
end
