# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class PaymentAttemptRecordReportAuthenticatedParams < ::Stripe::RequestParams
    class PaymentMethodDetails < ::Stripe::RequestParams
      class Card < ::Stripe::RequestParams
        class ThreeDSecure < ::Stripe::RequestParams
          # For authenticated transactions: Indicates how the issuing bank authenticated the customer.
          attr_accessor :authentication_flow
          # The Electronic Commerce Indicator (ECI). A protocol-level field indicating what degree of authentication was performed.
          attr_accessor :electronic_commerce_indicator
          # The exemption requested via 3DS and accepted by the issuer at authentication time.
          attr_accessor :exemption_indicator
          # Indicates the outcome of 3D Secure authentication.
          attr_accessor :result
          # The version of 3D Secure that was used.
          attr_accessor :version

          def initialize(
            authentication_flow: nil,
            electronic_commerce_indicator: nil,
            exemption_indicator: nil,
            result: nil,
            version: nil
          )
            @authentication_flow = authentication_flow
            @electronic_commerce_indicator = electronic_commerce_indicator
            @exemption_indicator = exemption_indicator
            @result = result
            @version = version
          end
        end
        # Populated if this transaction used 3D Secure authentication.
        attr_accessor :three_d_secure

        def initialize(three_d_secure: nil)
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
    # When the reported payment was authenticated. Measured in seconds since the Unix epoch.
    attr_accessor :authenticated_at
    # Specifies which fields in the response should be expanded.
    attr_accessor :expand
    # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    attr_accessor :metadata
    # Information about the Payment Method debited for this payment.
    attr_accessor :payment_method_details

    def initialize(authenticated_at: nil, expand: nil, metadata: nil, payment_method_details: nil)
      @authenticated_at = authenticated_at
      @expand = expand
      @metadata = metadata
      @payment_method_details = payment_method_details
    end
  end
end
