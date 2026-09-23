# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Treasury
    class InboundTransferCreateParams < ::Stripe::RequestParams
      class OriginPaymentMethodOptions < ::Stripe::RequestParams
        class UsBankAccount < ::Stripe::RequestParams
          class Ach < ::Stripe::RequestParams
            # Freeform payment-related information to transmit in the ACH addenda record. Maximum 80 characters, ACH character set. Applied only when the payment routes over ACH. Immutable after creation.
            attr_accessor :addenda

            def initialize(addenda: nil)
              @addenda = addenda
            end
          end
          # Specify details about the ACH transaction.
          attr_accessor :ach

          def initialize(ach: nil)
            @ach = ach
          end
        end
        # Includes additional payment method options if the destination is a us_bank_account.
        attr_accessor :us_bank_account

        def initialize(us_bank_account: nil)
          @us_bank_account = us_bank_account
        end
      end
      # Amount (in cents) to be transferred.
      attr_accessor :amount
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_accessor :currency
      # An arbitrary string attached to the object. Often useful for displaying to users.
      attr_accessor :description
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # The FinancialAccount to send funds to.
      attr_accessor :financial_account
      # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata
      # The origin payment method to be debited for the InboundTransfer.
      attr_accessor :origin_payment_method
      # Additional options about the origin PaymentMethod.
      attr_accessor :origin_payment_method_options
      # The complete description that appears on your customers' statements. Maximum 10 characters. Can only include -#.$&*, spaces, and alphanumeric characters.
      attr_accessor :statement_descriptor

      def initialize(
        amount: nil,
        currency: nil,
        description: nil,
        expand: nil,
        financial_account: nil,
        metadata: nil,
        origin_payment_method: nil,
        origin_payment_method_options: nil,
        statement_descriptor: nil
      )
        @amount = amount
        @currency = currency
        @description = description
        @expand = expand
        @financial_account = financial_account
        @metadata = metadata
        @origin_payment_method = origin_payment_method
        @origin_payment_method_options = origin_payment_method_options
        @statement_descriptor = statement_descriptor
      end
    end
  end
end
