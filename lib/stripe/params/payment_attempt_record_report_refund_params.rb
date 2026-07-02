# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class PaymentAttemptRecordReportRefundParams < ::Stripe::RequestParams
    class Amount < ::Stripe::RequestParams
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_accessor :currency
      # A positive integer representing the amount in the currency's [minor unit](https://docs.stripe.com/currencies#zero-decimal). For example, `100` can represent 1 USD or 100 JPY.
      attr_accessor :value

      def initialize(currency: nil, value: nil)
        @currency = currency
        @value = value
      end
    end

    class Failed < ::Stripe::RequestParams
      # When the reported refund failed. Measured in seconds since the Unix epoch.
      attr_accessor :failed_at
      # Provides the reason for the refund failure. Possible values are: `lost_or_stolen_card`, `expired_or_canceled_card`, `charge_for_pending_refund_disputed`, `insufficient_funds`, `declined`, `merchant_request`, or `unknown`.
      attr_accessor :failure_reason

      def initialize(failed_at: nil, failure_reason: nil)
        @failed_at = failed_at
        @failure_reason = failure_reason
      end
    end

    class ProcessorDetails < ::Stripe::RequestParams
      class Custom < ::Stripe::RequestParams
        # A reference to the external refund. This field must be unique across all refunds.
        attr_accessor :refund_reference

        def initialize(refund_reference: nil)
          @refund_reference = refund_reference
        end
      end
      # Information about the custom processor used to make this refund.
      attr_accessor :custom
      # The type of the processor details. An additional hash is included on processor_details with a name matching this value. It contains additional information specific to the processor.
      attr_accessor :type

      def initialize(custom: nil, type: nil)
        @custom = custom
        @type = type
      end
    end

    class Refunded < ::Stripe::RequestParams
      # When the reported refund completed. Measured in seconds since the Unix epoch.
      attr_accessor :refunded_at

      def initialize(refunded_at: nil)
        @refunded_at = refunded_at
      end
    end
    # A positive integer in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal) representing how much of this payment to refund. Can refund only up to the remaining, unrefunded amount of the payment.
    attr_accessor :amount
    # Specifies which fields in the response should be expanded.
    attr_accessor :expand
    # Information about the refund failure.
    attr_accessor :failed
    # When the reported refund was initiated. Measured in seconds since the Unix epoch.
    attr_accessor :initiated_at
    # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    attr_accessor :metadata
    # The outcome of the reported refund.
    attr_accessor :outcome
    # Processor information for this refund.
    attr_accessor :processor_details
    # The reason for the refund. One of `duplicate`, `fraudulent`, or `requested_by_customer`.
    attr_accessor :reason
    # A key to group refunds together.
    attr_accessor :refund_group
    # Information about the payment attempt refund.
    attr_accessor :refunded

    def initialize(
      amount: nil,
      expand: nil,
      failed: nil,
      initiated_at: nil,
      metadata: nil,
      outcome: nil,
      processor_details: nil,
      reason: nil,
      refund_group: nil,
      refunded: nil
    )
      @amount = amount
      @expand = expand
      @failed = failed
      @initiated_at = initiated_at
      @metadata = metadata
      @outcome = outcome
      @processor_details = processor_details
      @reason = reason
      @refund_group = refund_group
      @refunded = refunded
    end
  end
end
