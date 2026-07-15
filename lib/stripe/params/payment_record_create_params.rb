# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class PaymentRecordCreateParams < ::Stripe::RequestParams
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

    class Closed < ::Stripe::RequestParams
      # When the dispute was closed. Measured in seconds since the Unix epoch.
      attr_accessor :closed_at

      def initialize(closed_at: nil)
        @closed_at = closed_at
      end
    end

    class Funded < ::Stripe::RequestParams
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
      # The amount that has been lost to the customer due to disputes on this payment.
      attr_accessor :amount
      # When the dispute funding event occurred. Measured in seconds since the Unix epoch.
      attr_accessor :funded_at
      # The type of dispute funding event.
      attr_accessor :type

      def initialize(amount: nil, funded_at: nil, type: nil)
        @amount = amount
        @funded_at = funded_at
        @type = type
      end
    end

    class ProcessorDetails < ::Stripe::RequestParams
      class Custom < ::Stripe::RequestParams
        # A reference to the external dispute. This field must be unique across all disputes.
        attr_accessor :dispute_reference

        def initialize(dispute_reference: nil)
          @dispute_reference = dispute_reference
        end
      end
      # Information about the custom processor used to make this payment.
      attr_accessor :custom
      # The type of the processor details. An additional hash is included on processor_details with a name matching this value. It contains additional information specific to the processor.
      attr_accessor :type

      def initialize(custom: nil, type: nil)
        @custom = custom
        @type = type
      end
    end
    # The amount that has been lost to the customer due to disputes on this payment.
    attr_accessor :amount
    # Information about the dispute closing.
    attr_accessor :closed
    # Specifies which fields in the response should be expanded.
    attr_accessor :expand
    # Information about the dispute funding event.
    attr_accessor :funded
    # When the reported payment was initiated. Measured in seconds since the Unix epoch.
    attr_accessor :initiated_at
    # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    attr_accessor :metadata
    # Processor information for this payment.
    attr_accessor :processor_details
    # The reason the payment was disputed.
    attr_accessor :reason

    def initialize(
      amount: nil,
      closed: nil,
      expand: nil,
      funded: nil,
      initiated_at: nil,
      metadata: nil,
      processor_details: nil,
      reason: nil
    )
      @amount = amount
      @closed = closed
      @expand = expand
      @funded = funded
      @initiated_at = initiated_at
      @metadata = metadata
      @processor_details = processor_details
      @reason = reason
    end
  end
end
