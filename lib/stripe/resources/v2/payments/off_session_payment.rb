# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Payments
      # An OffSessionPayment allows you to create your own payment flow for recurring and unscheduled payments. In a single API request, you can
      # initiate a payment and leverage Stripe's AI-powered [Smart Retries](https://docs.stripe.com/payments/off-session-payments/smart-retries)
      # to choose the best times to retry failures to increase the chance of a successful payment.
      # To properly interface with OffSessionPayments, we recommend setting up an event destination to listen to webhook notifications, as the
      # OffSessionPayment will transition through its lifecycle asynchronously.
      # Related guide: [Off-Session Payments API](https://docs.stripe.com/payments/off-session-payments).
      class OffSessionPayment < APIResource
        OBJECT_NAME = "v2.payments.off_session_payment"
        def self.object_name
          "v2.payments.off_session_payment"
        end

        class AmountDetails < ::Stripe::StripeObject
          class Error < ::Stripe::StripeObject
            # The code of the error that occurred when validating the current amount details.
            attr_reader :code
            # A message providing more details about the error.
            attr_reader :message

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class LineItem < ::Stripe::StripeObject
            class Tax < ::Stripe::StripeObject
              # Total portion of the amount that is for tax.
              attr_reader :total_tax_amount

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The amount an item was discounted for. Positive integer.
            attr_reader :discount_amount
            # Unique identifier of the product. At most 12 characters long.
            attr_reader :product_code
            # Name of the product. At most 100 characters long.
            attr_reader :product_name
            # Number of items of the product. Positive integer.
            attr_reader :quantity
            # Contains information about the tax on the item.
            attr_reader :tax
            # Cost of the product. Non-negative integer.
            attr_reader :unit_cost
            # Unit of measure for the product. At most 12 characters long.
            attr_reader :unit_of_measure

            def self.inner_class_types
              @inner_class_types = { tax: Tax }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class Shipping < ::Stripe::StripeObject
            # Portion of the amount that is for shipping.
            attr_reader :amount
            # The postal code that represents the shipping source.
            attr_reader :from_postal_code
            # The postal code that represents the shipping destination.
            attr_reader :to_postal_code

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class Tax < ::Stripe::StripeObject
            # Total portion of the amount that is for tax.
            attr_reader :total_tax_amount

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The amount the total transaction was discounted for.
          attr_reader :discount_amount
          # Contains information about the error that occurred when validating the current amount details.
          # This field populates when the amount details has a validation error that wasn't enforced because the [enforce_arithmetic_validation](https://docs.corp.stripe.com/api/payment_intents/create#create_payment_intent-amount_details-enforce_arithmetic_validation) parameter was set to `false`.
          attr_reader :error
          # A list of line items, each containing information about a product in the PaymentIntent. There is a maximum of 100 line items.
          attr_reader :line_items
          # Contains information about the shipping portion of the amount.
          attr_reader :shipping
          # Contains information about the tax portion of the amount.
          attr_reader :tax

          def self.inner_class_types
            @inner_class_types = { error: Error, line_items: LineItem, shipping: Shipping, tax: Tax }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class Capture < ::Stripe::StripeObject
          # The timestamp when this payment is no longer eligible to be captured.
          attr_reader :capture_before
          # The method to use to capture the payment.
          attr_reader :capture_method

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class PaymentDetails < ::Stripe::StripeObject
          # A unique value to identify the customer. This field is applicable only for card payments. For card payments, this field is truncated to 25 alphanumeric characters, excluding spaces, before being sent to card networks.
          attr_reader :customer_reference
          # A unique value assigned by the business to identify the transaction. Required for L2 and L3 rates.
          # For Cards, this field is truncated to 25 alphanumeric characters, excluding spaces, before being sent to card networks.
          attr_reader :order_reference

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class PaymentsOrchestration < ::Stripe::StripeObject
          # True when you want to enable payments orchestration for this off-session payment. False otherwise.
          attr_reader :enabled

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class RetryDetails < ::Stripe::StripeObject
          # Number of authorization attempts so far.
          attr_reader :attempts
          # The pre-configured retry policy to use for the payment.
          attr_reader :retry_policy
          # Indicates the strategy for how you want Stripe to retry the payment.
          attr_reader :retry_strategy
          # The timestamp when this payment is no longer eligible to be retried. When this timestamp is reached, the payment will be marked as failed.
          attr_reader :retry_until

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class TransferData < ::Stripe::StripeObject
          # The amount transferred to the destination account. This transfer will occur
          # automatically after the payment succeeds. If no amount is specified, by default
          # the entire payment amount is transferred to the destination account. The amount
          # must be less than or equal to the
          # [amount_requested](https://docs.stripe.com/api/v2/off-session-payments/object?api-version=2025-05-28.preview#v2_off_session_payment_object-amount_requested),
          # and must be a positive integer representing how much to transfer in the smallest
          # currency unit (e.g., 100 cents to charge $1.00).
          attr_reader :amount
          # The account (if any) that the payment is attributed to for tax reporting, and
          # where funds from the payment are transferred to after payment success.
          attr_reader :destination

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The amount available to be captured.
        attr_reader :amount_capturable
        # Provides industry-specific information about the amount.
        attr_reader :amount_details
        # The “presentment amount” to be collected from the customer.
        attr_reader :amount_requested
        # The amount of the application fee requested to be applied to the payment.
        attr_reader :application_fee_amount_requested
        # The frequency of the underlying payment.
        attr_reader :cadence
        # Details about the capture configuration for the OffSessionPayment.
        attr_reader :capture
        # Creation time of the OffSessionPayment. Represented as a RFC 3339 date & time UTC
        # value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
        attr_reader :created
        # ID of the Customer to which this OffSessionPayment belongs.
        attr_reader :customer
        # An arbitrary string attached to the object. Often useful for displaying to users.
        attr_reader :description
        # The reason why the OffSessionPayment failed.
        attr_reader :failure_reason
        # Unique identifier for the object.
        attr_reader :id
        # The payment error encountered in the previous attempt to authorize the payment.
        attr_reader :last_authorization_attempt_error
        # Payment attempt record for the latest attempt, if one exists.
        attr_reader :latest_payment_attempt_record
        # Has the value true if the object exists in live mode or the value false if the object exists in test mode.
        attr_reader :livemode
        # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can
        # attach to an object. This can be useful for storing additional information about
        # the object in a structured format. Learn more about
        # [storing information in metadata](https://docs.stripe.com/payments/payment-intents#storing-information-in-metadata).
        attr_reader :metadata
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # The account (if any) for which the funds of the OffSessionPayment are intended.
        attr_reader :on_behalf_of
        # Provides industry-specific information about the payment.
        attr_reader :payment_details
        # ID of the payment method used in this OffSessionPayment.
        attr_reader :payment_method
        # Payment record associated with the OffSessionPayment.
        attr_reader :payment_record
        # Details about the payments orchestration configuration.
        attr_reader :payments_orchestration
        # Details about the OffSessionPayment retries.
        attr_reader :retry_details
        # Text that appears on the customer’s statement as the statement descriptor for a
        # non-card charge. This value overrides the account’s default statement descriptor.
        # For information about requirements, including the 22-character limit, see the
        # [Statement Descriptor docs](https://docs.stripe.com/get-started/account/statement-descriptors).
        attr_reader :statement_descriptor
        # Provides information about a card charge. Concatenated to the account’s
        # [statement descriptor prefix](https://docs.stripe.com/get-started/account/statement-descriptors#static)
        # to form the complete statement descriptor that appears on the customer’s statement.
        attr_reader :statement_descriptor_suffix
        # Status of this OffSessionPayment, one of `pending`, `pending_retry`, `processing`,
        # `failed`, `canceled`, `requires_capture`, or `succeeded`.
        attr_reader :status
        # Test clock that can be used to advance the retry attempts in a sandbox.
        attr_reader :test_clock
        # The data that automatically creates a Transfer after the payment finalizes. Learn more about the use case for [connected accounts](https://docs.stripe.com/payments/connected-accounts).
        attr_reader :transfer_data

        def self.inner_class_types
          @inner_class_types = {
            amount_details: AmountDetails,
            capture: Capture,
            payment_details: PaymentDetails,
            payments_orchestration: PaymentsOrchestration,
            retry_details: RetryDetails,
            transfer_data: TransferData,
          }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
