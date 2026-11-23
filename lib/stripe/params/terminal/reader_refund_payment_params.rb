# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Terminal
    class ReaderRefundPaymentParams < ::Stripe::RequestParams
      class RefundPaymentConfig < ::Stripe::RequestParams
        class GiftCard < ::Stripe::RequestParams
          # The brand of the destination gift card to collect on the reader.
          attr_accessor :brand
          # The gift card operation to perform with the refund amount.
          attr_accessor :operation_type

          def initialize(brand: nil, operation_type: nil)
            @brand = brand
            @operation_type = operation_type
          end
        end
        # Enables cancel button on transaction screens.
        attr_accessor :enable_customer_cancellation
        # Collect a destination gift card on the reader to reload or activate with the refund amount. If omitted, refund the original gift card without collecting card data.
        attr_accessor :gift_card

        def initialize(enable_customer_cancellation: nil, gift_card: nil)
          @enable_customer_cancellation = enable_customer_cancellation
          @gift_card = gift_card
        end
      end
      # A positive integer in __cents__ representing how much of this charge to refund.
      attr_accessor :amount
      # ID of the Charge to refund.
      attr_accessor :charge
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata
      # ID of the PaymentIntent to refund.
      attr_accessor :payment_intent
      # Boolean indicating whether the application fee should be refunded when refunding this charge. If a full charge refund is given, the full application fee will be refunded. Otherwise, the application fee will be refunded in an amount proportional to the amount of the charge refunded. An application fee can be refunded only by the application that created the charge.
      attr_accessor :refund_application_fee
      # Configuration overrides for this refund, such as customer cancellation settings.
      attr_accessor :refund_payment_config
      # Boolean indicating whether the transfer should be reversed when refunding this charge. The transfer will be reversed proportionally to the amount being refunded (either the entire or partial amount). A transfer can be reversed only by the application that created the charge.
      attr_accessor :reverse_transfer

      def initialize(
        amount: nil,
        charge: nil,
        expand: nil,
        metadata: nil,
        payment_intent: nil,
        refund_application_fee: nil,
        refund_payment_config: nil,
        reverse_transfer: nil
      )
        @amount = amount
        @charge = charge
        @expand = expand
        @metadata = metadata
        @payment_intent = payment_intent
        @refund_application_fee = refund_application_fee
        @refund_payment_config = refund_payment_config
        @reverse_transfer = reverse_transfer
      end
    end
  end
end
