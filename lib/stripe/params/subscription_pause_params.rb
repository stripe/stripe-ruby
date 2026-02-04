# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class SubscriptionPauseParams < ::Stripe::RequestParams
    class BillFor < ::Stripe::RequestParams
      # Controls whether to debit for accrued metered usage in the current billing period. The default is `true`.
      attr_accessor :outstanding_usage
      # Controls whether to credit for licensed items in the current billing period. The default is `true`.
      attr_accessor :unused_time

      def initialize(outstanding_usage: nil, unused_time: nil)
        @outstanding_usage = outstanding_usage
        @unused_time = unused_time
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
