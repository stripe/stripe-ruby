# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Payments
      class OffSessionPaymentCaptureParams < ::Stripe::RequestParams
        class AmountDetails < ::Stripe::RequestParams
          class LineItem < ::Stripe::RequestParams
            class Tax < ::Stripe::RequestParams
              # Total portion of the amount that is for tax.
              sig { returns(Integer) }
              def total_tax_amount; end
              sig { params(_total_tax_amount: Integer).returns(Integer) }
              def total_tax_amount=(_total_tax_amount); end
              sig { params(total_tax_amount: Integer).void }
              def initialize(total_tax_amount: nil); end
            end
            # The amount an item was discounted for. Positive integer.
            sig { returns(T.nilable(Integer)) }
            def discount_amount; end
            sig { params(_discount_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def discount_amount=(_discount_amount); end
            # Unique identifier of the product. At most 12 characters long.
            sig { returns(T.nilable(String)) }
            def product_code; end
            sig { params(_product_code: T.nilable(String)).returns(T.nilable(String)) }
            def product_code=(_product_code); end
            # Name of the product. At most 100 characters long.
            sig { returns(String) }
            def product_name; end
            sig { params(_product_name: String).returns(String) }
            def product_name=(_product_name); end
            # Number of items of the product. Positive integer.
            sig { returns(Integer) }
            def quantity; end
            sig { params(_quantity: Integer).returns(Integer) }
            def quantity=(_quantity); end
            # Contains information about the tax on the item.
            sig {
              returns(T.nilable(::Stripe::V2::Payments::OffSessionPaymentCaptureParams::AmountDetails::LineItem::Tax))
             }
            def tax; end
            sig {
              params(_tax: T.nilable(::Stripe::V2::Payments::OffSessionPaymentCaptureParams::AmountDetails::LineItem::Tax)).returns(T.nilable(::Stripe::V2::Payments::OffSessionPaymentCaptureParams::AmountDetails::LineItem::Tax))
             }
            def tax=(_tax); end
            # Cost of the product. Positive integer.
            sig { returns(Integer) }
            def unit_cost; end
            sig { params(_unit_cost: Integer).returns(Integer) }
            def unit_cost=(_unit_cost); end
            # A unit of measure for the line item, such as gallons, feet, meters, etc.
            # The maximum length is 12 characters.
            sig { returns(T.nilable(String)) }
            def unit_of_measure; end
            sig { params(_unit_of_measure: T.nilable(String)).returns(T.nilable(String)) }
            def unit_of_measure=(_unit_of_measure); end
            sig {
              params(discount_amount: T.nilable(Integer), product_code: T.nilable(String), product_name: String, quantity: Integer, tax: T.nilable(::Stripe::V2::Payments::OffSessionPaymentCaptureParams::AmountDetails::LineItem::Tax), unit_cost: Integer, unit_of_measure: T.nilable(String)).void
             }
            def initialize(
              discount_amount: nil,
              product_code: nil,
              product_name: nil,
              quantity: nil,
              tax: nil,
              unit_cost: nil,
              unit_of_measure: nil
            ); end
          end
          class Shipping < ::Stripe::RequestParams
            # Portion of the amount that is for shipping.
            sig { returns(T.nilable(Integer)) }
            def amount; end
            sig { params(_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def amount=(_amount); end
            # The postal code that represents the shipping source.
            sig { returns(T.nilable(String)) }
            def from_postal_code; end
            sig { params(_from_postal_code: T.nilable(String)).returns(T.nilable(String)) }
            def from_postal_code=(_from_postal_code); end
            # The postal code that represents the shipping destination.
            sig { returns(T.nilable(String)) }
            def to_postal_code; end
            sig { params(_to_postal_code: T.nilable(String)).returns(T.nilable(String)) }
            def to_postal_code=(_to_postal_code); end
            sig {
              params(amount: T.nilable(Integer), from_postal_code: T.nilable(String), to_postal_code: T.nilable(String)).void
             }
            def initialize(amount: nil, from_postal_code: nil, to_postal_code: nil); end
          end
          class Tax < ::Stripe::RequestParams
            # Total portion of the amount that is for tax.
            sig { returns(Integer) }
            def total_tax_amount; end
            sig { params(_total_tax_amount: Integer).returns(Integer) }
            def total_tax_amount=(_total_tax_amount); end
            sig { params(total_tax_amount: Integer).void }
            def initialize(total_tax_amount: nil); end
          end
          # The amount the total transaction was discounted for.
          sig { returns(T.nilable(Integer)) }
          def discount_amount; end
          sig { params(_discount_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def discount_amount=(_discount_amount); end
          # Set to `false` to return arithmetic validation errors in the response without failing the request. Use this when you want the operation to proceed regardless of arithmetic errors in the line item data.
          # Omit or set to `true` to immediately return a 400 error when arithmetic validation fails. Use this for strict validation that prevents processing with line item data that has arithmetic inconsistencies.
          # For card payments, Stripe doesn't send line item data to card networks if there's an arithmetic validation error.
          sig { returns(T.nilable(T::Boolean)) }
          def enforce_arithmetic_validation; end
          sig {
            params(_enforce_arithmetic_validation: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
           }
          def enforce_arithmetic_validation=(_enforce_arithmetic_validation); end
          # A list of line items, each containing information about a product in the OffSessionPayment. There is a maximum of 10 line items.
          sig {
            returns(T.nilable(T::Array[::Stripe::V2::Payments::OffSessionPaymentCaptureParams::AmountDetails::LineItem]))
           }
          def line_items; end
          sig {
            params(_line_items: T.nilable(T::Array[::Stripe::V2::Payments::OffSessionPaymentCaptureParams::AmountDetails::LineItem])).returns(T.nilable(T::Array[::Stripe::V2::Payments::OffSessionPaymentCaptureParams::AmountDetails::LineItem]))
           }
          def line_items=(_line_items); end
          # Contains information about the shipping portion of the amount.
          sig {
            returns(T.nilable(::Stripe::V2::Payments::OffSessionPaymentCaptureParams::AmountDetails::Shipping))
           }
          def shipping; end
          sig {
            params(_shipping: T.nilable(::Stripe::V2::Payments::OffSessionPaymentCaptureParams::AmountDetails::Shipping)).returns(T.nilable(::Stripe::V2::Payments::OffSessionPaymentCaptureParams::AmountDetails::Shipping))
           }
          def shipping=(_shipping); end
          # Contains information about the tax portion of the amount.
          sig {
            returns(T.nilable(::Stripe::V2::Payments::OffSessionPaymentCaptureParams::AmountDetails::Tax))
           }
          def tax; end
          sig {
            params(_tax: T.nilable(::Stripe::V2::Payments::OffSessionPaymentCaptureParams::AmountDetails::Tax)).returns(T.nilable(::Stripe::V2::Payments::OffSessionPaymentCaptureParams::AmountDetails::Tax))
           }
          def tax=(_tax); end
          sig {
            params(discount_amount: T.nilable(Integer), enforce_arithmetic_validation: T.nilable(T::Boolean), line_items: T.nilable(T::Array[::Stripe::V2::Payments::OffSessionPaymentCaptureParams::AmountDetails::LineItem]), shipping: T.nilable(::Stripe::V2::Payments::OffSessionPaymentCaptureParams::AmountDetails::Shipping), tax: T.nilable(::Stripe::V2::Payments::OffSessionPaymentCaptureParams::AmountDetails::Tax)).void
           }
          def initialize(
            discount_amount: nil,
            enforce_arithmetic_validation: nil,
            line_items: nil,
            shipping: nil,
            tax: nil
          ); end
        end
        class PaymentDetails < ::Stripe::RequestParams
          # A unique value to identify the customer. This field is applicable only for card payments. For card payments, this field is truncated to 25 alphanumeric characters, excluding spaces, before being sent to card networks.
          sig { returns(T.nilable(String)) }
          def customer_reference; end
          sig { params(_customer_reference: T.nilable(String)).returns(T.nilable(String)) }
          def customer_reference=(_customer_reference); end
          # A unique value assigned by the business to identify the transaction. Required for L2 and L3 rates.
          # For Cards, this field is truncated to 25 alphanumeric characters, excluding spaces, before being sent to card networks.
          sig { returns(T.nilable(String)) }
          def order_reference; end
          sig { params(_order_reference: T.nilable(String)).returns(T.nilable(String)) }
          def order_reference=(_order_reference); end
          sig {
            params(customer_reference: T.nilable(String), order_reference: T.nilable(String)).void
           }
          def initialize(customer_reference: nil, order_reference: nil); end
        end
        class TransferData < ::Stripe::RequestParams
          # The amount transferred to the destination account. This transfer will occur
          # automatically after the payment succeeds. If no amount is specified, by default
          # the entire payment amount is transferred to the destination account. The amount
          # must be less than or equal to the
          # [amount_requested](https://docs.stripe.com/api/v2/off-session-payments/object?api-version=2025-05-28.preview#v2_off_session_payment_object-amount_requested),
          # and must be a positive integer representing how much to transfer in the smallest
          # currency unit (e.g., 100 cents to charge $1.00).
          sig { returns(T.nilable(Integer)) }
          def amount; end
          sig { params(_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def amount=(_amount); end
          sig { params(amount: T.nilable(Integer)).void }
          def initialize(amount: nil); end
        end
        # Provides industry-specific information about the amount.
        sig {
          returns(T.nilable(::Stripe::V2::Payments::OffSessionPaymentCaptureParams::AmountDetails))
         }
        def amount_details; end
        sig {
          params(_amount_details: T.nilable(::Stripe::V2::Payments::OffSessionPaymentCaptureParams::AmountDetails)).returns(T.nilable(::Stripe::V2::Payments::OffSessionPaymentCaptureParams::AmountDetails))
         }
        def amount_details=(_amount_details); end
        # The amount to capture.
        sig { returns(T.nilable(Integer)) }
        def amount_to_capture; end
        sig { params(_amount_to_capture: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def amount_to_capture=(_amount_to_capture); end
        # The amount of the application fee for this capture.
        sig { returns(T.nilable(::Stripe::V2::Amount)) }
        def application_fee_amount; end
        sig {
          params(_application_fee_amount: T.nilable(::Stripe::V2::Amount)).returns(T.nilable(::Stripe::V2::Amount))
         }
        def application_fee_amount=(_application_fee_amount); end
        # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can
        # attach to an object. This can be useful for storing additional information about
        # the object in a structured format. Learn more about
        # [storing information in metadata](https://docs.stripe.com/payments/payment-intents#storing-information-in-metadata).
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
         }
        def metadata=(_metadata); end
        # Provides industry-specific information about the payment.
        sig {
          returns(T.nilable(::Stripe::V2::Payments::OffSessionPaymentCaptureParams::PaymentDetails))
         }
        def payment_details; end
        sig {
          params(_payment_details: T.nilable(::Stripe::V2::Payments::OffSessionPaymentCaptureParams::PaymentDetails)).returns(T.nilable(::Stripe::V2::Payments::OffSessionPaymentCaptureParams::PaymentDetails))
         }
        def payment_details=(_payment_details); end
        # Text that appears on the customer’s statement as the statement descriptor for a
        # non-card charge. This value overrides the account’s default statement descriptor.
        # For information about requirements, including the 22-character limit, see the
        # [Statement Descriptor docs](https://docs.stripe.com/get-started/account/statement-descriptors).
        sig { returns(T.nilable(String)) }
        def statement_descriptor; end
        sig { params(_statement_descriptor: T.nilable(String)).returns(T.nilable(String)) }
        def statement_descriptor=(_statement_descriptor); end
        # Provides information about a card charge. Concatenated to the account's
        # [statement descriptor prefix](https://docs.stripe.com/get-started/account/statement-descriptors#static)
        # to form the complete statement descriptor that appears on the customer's statement.
        sig { returns(T.nilable(String)) }
        def statement_descriptor_suffix; end
        sig { params(_statement_descriptor_suffix: T.nilable(String)).returns(T.nilable(String)) }
        def statement_descriptor_suffix=(_statement_descriptor_suffix); end
        # The data that automatically creates a Transfer after the payment finalizes. Learn more about the use case for [connected accounts](https://docs.stripe.com/payments/connected-accounts).
        sig {
          returns(T.nilable(::Stripe::V2::Payments::OffSessionPaymentCaptureParams::TransferData))
         }
        def transfer_data; end
        sig {
          params(_transfer_data: T.nilable(::Stripe::V2::Payments::OffSessionPaymentCaptureParams::TransferData)).returns(T.nilable(::Stripe::V2::Payments::OffSessionPaymentCaptureParams::TransferData))
         }
        def transfer_data=(_transfer_data); end
        sig {
          params(amount_details: T.nilable(::Stripe::V2::Payments::OffSessionPaymentCaptureParams::AmountDetails), amount_to_capture: T.nilable(Integer), application_fee_amount: T.nilable(::Stripe::V2::Amount), metadata: T.nilable(T::Hash[String, String]), payment_details: T.nilable(::Stripe::V2::Payments::OffSessionPaymentCaptureParams::PaymentDetails), statement_descriptor: T.nilable(String), statement_descriptor_suffix: T.nilable(String), transfer_data: T.nilable(::Stripe::V2::Payments::OffSessionPaymentCaptureParams::TransferData)).void
         }
        def initialize(
          amount_details: nil,
          amount_to_capture: nil,
          application_fee_amount: nil,
          metadata: nil,
          payment_details: nil,
          statement_descriptor: nil,
          statement_descriptor_suffix: nil,
          transfer_data: nil
        ); end
      end
    end
  end
end