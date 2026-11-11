# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class PaymentAttemptRecordReportAuthorizedParams < ::Stripe::RequestParams
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

        class ThreeDSecure < ::Stripe::RequestParams
          # For authenticated transactions: Indicates how the issuing bank authenticated the customer.
          attr_accessor :authentication_flow
          # The Electronic Commerce Indicator (ECI). A protocol-level field indicating what degree of authentication was performed.
          attr_accessor :electronic_commerce_indicator
          # The exemption requested via 3DS and accepted by the issuer at authentication time.
          attr_accessor :exemption_indicator
          # Indicates the outcome of 3D Secure authentication.
          attr_accessor :result
          # Additional information about why 3D Secure succeeded or failed, based on the `result`.
          attr_accessor :result_reason
          # The version of 3D Secure that was used.
          attr_accessor :version

          def initialize(
            authentication_flow: nil,
            electronic_commerce_indicator: nil,
            exemption_indicator: nil,
            result: nil,
            result_reason: nil,
            version: nil
          )
            @authentication_flow = authentication_flow
            @electronic_commerce_indicator = electronic_commerce_indicator
            @exemption_indicator = exemption_indicator
            @result = result
            @result_reason = result_reason
            @version = version
          end
        end
        # Verification checks performed on the card.
        attr_accessor :checks
        # Populated if this transaction used 3D Secure authentication.
        attr_accessor :three_d_secure

        def initialize(checks: nil, three_d_secure: nil)
          @checks = checks
          @three_d_secure = three_d_secure
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
    # When the reported payment was authorized. Measured in seconds since the Unix epoch.
    attr_accessor :authorized_at
    # Specifies which fields in the response should be expanded.
    attr_accessor :expand
    # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    attr_accessor :metadata
    # Payment evaluations associated with this reported payment.
    attr_accessor :payment_evaluations
    # Information about the Payment Method debited for this payment.
    attr_accessor :payment_method_details
    # Processor information for this payment.
    attr_accessor :processor_details

    def initialize(
      authorized_at: nil,
      expand: nil,
      metadata: nil,
      payment_evaluations: nil,
      payment_method_details: nil,
      processor_details: nil
    )
      @authorized_at = authorized_at
      @expand = expand
      @metadata = metadata
      @payment_evaluations = payment_evaluations
      @payment_method_details = payment_method_details
      @processor_details = processor_details
    end
  end
end
