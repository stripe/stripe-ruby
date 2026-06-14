# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class PaymentAttemptRecordReportGuaranteedParams < ::Stripe::RequestParams
    class PaymentMethodDetails < ::Stripe::RequestParams
      class Card < ::Stripe::RequestParams
        class Checks < ::Stripe::RequestParams
          # The result of the check on the cardholder's address line 1.
          attr_accessor :address_line1_check
          # The result of the check on the cardholder's postal code.
          attr_accessor :address_postal_code_check
          # The result of the check on the card's CVC.
          attr_accessor :cvc_check

          def initialize(address_line1_check: nil, address_postal_code_check: nil, cvc_check: nil)
            @address_line1_check = address_line1_check
            @address_postal_code_check = address_postal_code_check
            @cvc_check = cvc_check
          end
        end
        # Verification checks performed on the card.
        attr_accessor :checks

        def initialize(checks: nil)
          @checks = checks
        end
      end
      # Information about the card payment method used to make this payment.
      attr_accessor :card
      # The type of the payment method details. An additional hash is included on the payment_method_details with a name matching this value. It contains additional information specific to the type.
      attr_accessor :type

      def initialize(card: nil, type: nil)
        @card = card
        @type = type
      end
    end

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
    # Payment evaluations associated with this reported payment.
    attr_accessor :payment_evaluations
    # Information about the Payment Method debited for this payment.
    attr_accessor :payment_method_details
    # Processor information for this payment.
    attr_accessor :processor_details

    def initialize(
      expand: nil,
      guaranteed_at: nil,
      metadata: nil,
      payment_evaluations: nil,
      payment_method_details: nil,
      processor_details: nil
    )
      @expand = expand
      @guaranteed_at = guaranteed_at
      @metadata = metadata
      @payment_evaluations = payment_evaluations
      @payment_method_details = payment_method_details
      @processor_details = processor_details
    end
  end
end
