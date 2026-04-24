# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Payments
      class OffSessionPaymentCaptureParams < ::Stripe::RequestParams
        class AmountDetails < ::Stripe::RequestParams
          class LineItem < ::Stripe::RequestParams
            class Tax < ::Stripe::RequestParams
              # Total portion of the amount that is for tax.
              attr_accessor :total_tax_amount

              def initialize(total_tax_amount: nil)
                @total_tax_amount = total_tax_amount
              end
            end
            # The amount an item was discounted for. Positive integer.
            attr_accessor :discount_amount
            # Unique identifier of the product. At most 12 characters long.
            attr_accessor :product_code
            # Name of the product. At most 100 characters long.
            attr_accessor :product_name
            # Number of items of the product. Positive integer.
            attr_accessor :quantity
            # Contains information about the tax on the item.
            attr_accessor :tax
            # Cost of the product. Positive integer.
            attr_accessor :unit_cost
            # A unit of measure for the line item, such as gallons, feet, meters, etc.
            # The maximum length is 12 characters.
            attr_accessor :unit_of_measure

            def initialize(
              discount_amount: nil,
              product_code: nil,
              product_name: nil,
              quantity: nil,
              tax: nil,
              unit_cost: nil,
              unit_of_measure: nil
            )
              @discount_amount = discount_amount
              @product_code = product_code
              @product_name = product_name
              @quantity = quantity
              @tax = tax
              @unit_cost = unit_cost
              @unit_of_measure = unit_of_measure
            end
          end

          class Shipping < ::Stripe::RequestParams
            # Portion of the amount that is for shipping.
            attr_accessor :amount
            # The postal code that represents the shipping source.
            attr_accessor :from_postal_code
            # The postal code that represents the shipping destination.
            attr_accessor :to_postal_code

            def initialize(amount: nil, from_postal_code: nil, to_postal_code: nil)
              @amount = amount
              @from_postal_code = from_postal_code
              @to_postal_code = to_postal_code
            end
          end

          class Tax < ::Stripe::RequestParams
            # Total portion of the amount that is for tax.
            attr_accessor :total_tax_amount

            def initialize(total_tax_amount: nil)
              @total_tax_amount = total_tax_amount
            end
          end
          # The amount the total transaction was discounted for.
          attr_accessor :discount_amount
          # Set to `false` to return arithmetic validation errors in the response without failing the request. Use this when you want the operation to proceed regardless of arithmetic errors in the line item data.
          # Omit or set to `true` to immediately return a 400 error when arithmetic validation fails. Use this for strict validation that prevents processing with line item data that has arithmetic inconsistencies.
          # For card payments, Stripe doesn't send line item data to card networks if there's an arithmetic validation error.
          attr_accessor :enforce_arithmetic_validation
          # A list of line items, each containing information about a product in the OffSessionPayment. There is a maximum of 10 line items.
          attr_accessor :line_items
          # Contains information about the shipping portion of the amount.
          attr_accessor :shipping
          # Contains information about the tax portion of the amount.
          attr_accessor :tax

          def initialize(
            discount_amount: nil,
            enforce_arithmetic_validation: nil,
            line_items: nil,
            shipping: nil,
            tax: nil
          )
            @discount_amount = discount_amount
            @enforce_arithmetic_validation = enforce_arithmetic_validation
            @line_items = line_items
            @shipping = shipping
            @tax = tax
          end
        end

        class PaymentDetails < ::Stripe::RequestParams
          # A unique value to identify the customer. This field is applicable only for card payments. For card payments, this field is truncated to 25 alphanumeric characters, excluding spaces, before being sent to card networks.
          attr_accessor :customer_reference
          # A unique value assigned by the business to identify the transaction. Required for L2 and L3 rates.
          # For Cards, this field is truncated to 25 alphanumeric characters, excluding spaces, before being sent to card networks.
          attr_accessor :order_reference

          def initialize(customer_reference: nil, order_reference: nil)
            @customer_reference = customer_reference
            @order_reference = order_reference
          end
        end

        class TransferData < ::Stripe::RequestParams
          # The amount transferred to the destination account. This transfer will occur
          # automatically after the payment succeeds. If no amount is specified, by default
          # the entire payment amount is transferred to the destination account. The amount
          # must be less than or equal to the
          # [amount_requested](https://docs.stripe.com/api/v2/off-session-payments/object?api-version=2025-05-28.preview#v2_off_session_payment_object-amount_requested),
          # and must be a positive integer representing how much to transfer in the smallest
          # currency unit (e.g., 100 cents to charge $1.00).
          attr_accessor :amount

          def initialize(amount: nil)
            @amount = amount
          end
        end
        # Provides industry-specific information about the amount.
        attr_accessor :amount_details
        # The amount to capture.
        attr_accessor :amount_to_capture
        # The amount of the application fee for this capture.
        attr_accessor :application_fee_amount
        # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can
        # attach to an object. This can be useful for storing additional information about
        # the object in a structured format. Learn more about
        # [storing information in metadata](https://docs.stripe.com/payments/payment-intents#storing-information-in-metadata).
        attr_accessor :metadata
        # Provides industry-specific information about the payment.
        attr_accessor :payment_details
        # Text that appears on the customer’s statement as the statement descriptor for a
        # non-card charge. This value overrides the account’s default statement descriptor.
        # For information about requirements, including the 22-character limit, see the
        # [Statement Descriptor docs](https://docs.stripe.com/get-started/account/statement-descriptors).
        attr_accessor :statement_descriptor
        # Provides information about a card charge. Concatenated to the account's
        # [statement descriptor prefix](https://docs.stripe.com/get-started/account/statement-descriptors#static)
        # to form the complete statement descriptor that appears on the customer's statement.
        attr_accessor :statement_descriptor_suffix
        # The data that automatically creates a Transfer after the payment finalizes. Learn more about the use case for [connected accounts](https://docs.stripe.com/payments/connected-accounts).
        attr_accessor :transfer_data

        def initialize(
          amount_details: nil,
          amount_to_capture: nil,
          application_fee_amount: nil,
          metadata: nil,
          payment_details: nil,
          statement_descriptor: nil,
          statement_descriptor_suffix: nil,
          transfer_data: nil
        )
          @amount_details = amount_details
          @amount_to_capture = amount_to_capture
          @application_fee_amount = application_fee_amount
          @metadata = metadata
          @payment_details = payment_details
          @statement_descriptor = statement_descriptor
          @statement_descriptor_suffix = statement_descriptor_suffix
          @transfer_data = transfer_data
        end
      end
    end
  end
end
