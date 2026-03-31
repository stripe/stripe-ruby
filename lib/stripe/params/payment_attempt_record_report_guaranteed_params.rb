# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class PaymentAttemptRecordReportGuaranteedParams < ::Stripe::RequestParams
    class ProcessorDetails < ::Stripe::RequestParams
      class Custom < ::Stripe::RequestParams
        # An opaque string for manual reconciliation of this payment, for example a check number or a payment processor ID.
        attr_accessor :payment_reference

        def initialize(payment_reference: nil)
          @payment_reference = payment_reference
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
    # Specifies which fields in the response should be expanded.
    attr_accessor :expand
    # When the reported payment was guaranteed. Measured in seconds since the Unix epoch.
    attr_accessor :guaranteed_at
    # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    attr_accessor :metadata
    # Processor information for this payment.
    attr_accessor :processor_details

    def initialize(expand: nil, guaranteed_at: nil, metadata: nil, processor_details: nil)
      @expand = expand
      @guaranteed_at = guaranteed_at
      @metadata = metadata
      @processor_details = processor_details
    end
  end
end
