# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Payments
      class OffSessionPaymentCreateParams < Stripe::RequestParams
        class AmountDetails < Stripe::RequestParams
          class LineItem < Stripe::RequestParams
            class Tax < Stripe::RequestParams
              # Total portion of the amount that is for tax.
              sig { returns(T.nilable(Integer)) }
              def total_tax_amount; end
              sig { params(_total_tax_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def total_tax_amount=(_total_tax_amount); end
              sig { params(total_tax_amount: T.nilable(Integer)).void }
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
              returns(T.nilable(V2::Payments::OffSessionPaymentCreateParams::AmountDetails::LineItem::Tax))
             }
            def tax; end
            sig {
              params(_tax: T.nilable(V2::Payments::OffSessionPaymentCreateParams::AmountDetails::LineItem::Tax)).returns(T.nilable(V2::Payments::OffSessionPaymentCreateParams::AmountDetails::LineItem::Tax))
             }
            def tax=(_tax); end
            # Cost of the product. Non-negative integer.
            sig { returns(Integer) }
            def unit_cost; end
            sig { params(_unit_cost: Integer).returns(Integer) }
            def unit_cost=(_unit_cost); end
            sig {
              params(discount_amount: T.nilable(Integer), product_code: T.nilable(String), product_name: String, quantity: Integer, tax: T.nilable(V2::Payments::OffSessionPaymentCreateParams::AmountDetails::LineItem::Tax), unit_cost: Integer).void
             }
            def initialize(
              discount_amount: nil,
              product_code: nil,
              product_name: nil,
              quantity: nil,
              tax: nil,
              unit_cost: nil
            ); end
          end
          class Shipping < Stripe::RequestParams
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
          class Tax < Stripe::RequestParams
            # Total portion of the amount that is for tax.
            sig { returns(T.nilable(Integer)) }
            def total_tax_amount; end
            sig { params(_total_tax_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def total_tax_amount=(_total_tax_amount); end
            sig { params(total_tax_amount: T.nilable(Integer)).void }
            def initialize(total_tax_amount: nil); end
          end
          # The amount the total transaction was discounted for.
          sig { returns(T.nilable(Integer)) }
          def discount_amount; end
          sig { params(_discount_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def discount_amount=(_discount_amount); end
          # A list of line items, each containing information about a product in the PaymentIntent. There is a maximum of 100 line items.
          sig {
            returns(T::Array[V2::Payments::OffSessionPaymentCreateParams::AmountDetails::LineItem])
           }
          def line_items; end
          sig {
            params(_line_items: T::Array[V2::Payments::OffSessionPaymentCreateParams::AmountDetails::LineItem]).returns(T::Array[V2::Payments::OffSessionPaymentCreateParams::AmountDetails::LineItem])
           }
          def line_items=(_line_items); end
          # Contains information about the shipping portion of the amount.
          sig {
            returns(T.nilable(V2::Payments::OffSessionPaymentCreateParams::AmountDetails::Shipping))
           }
          def shipping; end
          sig {
            params(_shipping: T.nilable(V2::Payments::OffSessionPaymentCreateParams::AmountDetails::Shipping)).returns(T.nilable(V2::Payments::OffSessionPaymentCreateParams::AmountDetails::Shipping))
           }
          def shipping=(_shipping); end
          # Contains information about the tax portion of the amount.
          sig {
            returns(T.nilable(V2::Payments::OffSessionPaymentCreateParams::AmountDetails::Tax))
           }
          def tax; end
          sig {
            params(_tax: T.nilable(V2::Payments::OffSessionPaymentCreateParams::AmountDetails::Tax)).returns(T.nilable(V2::Payments::OffSessionPaymentCreateParams::AmountDetails::Tax))
           }
          def tax=(_tax); end
          sig {
            params(discount_amount: T.nilable(Integer), line_items: T::Array[V2::Payments::OffSessionPaymentCreateParams::AmountDetails::LineItem], shipping: T.nilable(V2::Payments::OffSessionPaymentCreateParams::AmountDetails::Shipping), tax: T.nilable(V2::Payments::OffSessionPaymentCreateParams::AmountDetails::Tax)).void
           }
          def initialize(discount_amount: nil, line_items: nil, shipping: nil, tax: nil); end
        end
        class Capture < Stripe::RequestParams
          # The method to use to capture the payment.
          sig { returns(String) }
          def capture_method; end
          sig { params(_capture_method: String).returns(String) }
          def capture_method=(_capture_method); end
          sig { params(capture_method: String).void }
          def initialize(capture_method: nil); end
        end
        class PaymentMethodOptions < Stripe::RequestParams
          class Card < Stripe::RequestParams
            # If you are making a Credential On File transaction with a previously saved card, you should pass the Network Transaction ID
            # from a prior initial authorization on Stripe (from a successful SetupIntent or a PaymentIntent with `setup_future_usage` set),
            # or one that you have obtained from another payment processor. This is a token from the network which uniquely identifies the transaction.
            # Visa calls this the Transaction ID, Mastercard calls this the Trace ID, and American Express calls this the Acquirer Reference Data.
            # Note that you should pass in a Network Transaction ID if you have one, regardless of whether this is a
            # Customer-Initiated Transaction (CIT) or a Merchant-Initiated Transaction (MIT).
            sig { returns(String) }
            def network_transaction_id; end
            sig { params(_network_transaction_id: String).returns(String) }
            def network_transaction_id=(_network_transaction_id); end
            sig { params(network_transaction_id: String).void }
            def initialize(network_transaction_id: nil); end
          end
          # Payment method options for the card payment type.
          sig {
            returns(T.nilable(V2::Payments::OffSessionPaymentCreateParams::PaymentMethodOptions::Card))
           }
          def card; end
          sig {
            params(_card: T.nilable(V2::Payments::OffSessionPaymentCreateParams::PaymentMethodOptions::Card)).returns(T.nilable(V2::Payments::OffSessionPaymentCreateParams::PaymentMethodOptions::Card))
           }
          def card=(_card); end
          sig {
            params(card: T.nilable(V2::Payments::OffSessionPaymentCreateParams::PaymentMethodOptions::Card)).void
           }
          def initialize(card: nil); end
        end
        class PaymentsOrchestration < Stripe::RequestParams
          # True when you want to enable payments orchestration for this off-session payment. False otherwise.
          sig { returns(T::Boolean) }
          def enabled; end
          sig { params(_enabled: T::Boolean).returns(T::Boolean) }
          def enabled=(_enabled); end
          sig { params(enabled: T::Boolean).void }
          def initialize(enabled: nil); end
        end
        class RetryDetails < Stripe::RequestParams
          # The pre-configured retry policy to use for the payment.
          sig { returns(T.nilable(String)) }
          def retry_policy; end
          sig { params(_retry_policy: T.nilable(String)).returns(T.nilable(String)) }
          def retry_policy=(_retry_policy); end
          # Indicates the strategy for how you want Stripe to retry the payment.
          sig { returns(String) }
          def retry_strategy; end
          sig { params(_retry_strategy: String).returns(String) }
          def retry_strategy=(_retry_strategy); end
          sig { params(retry_policy: T.nilable(String), retry_strategy: String).void }
          def initialize(retry_policy: nil, retry_strategy: nil); end
        end
        class TransferData < Stripe::RequestParams
          # The amount transferred to the destination account. This transfer will occur
          # automatically after the payment succeeds. If no amount is specified, by default
          # the entire payment amount is transferred to the destination account. The amount
          # must be less than or equal to the
          # [amount_requested](https://docs.corp.stripe.com/api/v2/off-session-payments/object?api-version=2025-05-28.preview#v2_off_session_payment_object-amount_requested),
          # and must be a positive integer representing how much to transfer in the smallest
          # currency unit (e.g., 100 cents to charge $1.00).
          sig { returns(T.nilable(Integer)) }
          def amount; end
          sig { params(_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def amount=(_amount); end
          # The account (if any) that the payment is attributed to for tax reporting, and
          # where funds from the payment are transferred to after payment success.
          sig { returns(String) }
          def destination; end
          sig { params(_destination: String).returns(String) }
          def destination=(_destination); end
          sig { params(amount: T.nilable(Integer), destination: String).void }
          def initialize(amount: nil, destination: nil); end
        end
        # The “presentment amount” to be collected from the customer.
        sig { returns(Stripe::V2::Amount) }
        def amount; end
        sig { params(_amount: Stripe::V2::Amount).returns(Stripe::V2::Amount) }
        def amount=(_amount); end
        # Provides industry-specific information about the amount.
        sig { returns(T.nilable(V2::Payments::OffSessionPaymentCreateParams::AmountDetails)) }
        def amount_details; end
        sig {
          params(_amount_details: T.nilable(V2::Payments::OffSessionPaymentCreateParams::AmountDetails)).returns(T.nilable(V2::Payments::OffSessionPaymentCreateParams::AmountDetails))
         }
        def amount_details=(_amount_details); end
        # The frequency of the underlying payment.
        sig { returns(String) }
        def cadence; end
        sig { params(_cadence: String).returns(String) }
        def cadence=(_cadence); end
        # Details about the capture configuration for the OffSessionPayment.
        sig { returns(T.nilable(V2::Payments::OffSessionPaymentCreateParams::Capture)) }
        def capture; end
        sig {
          params(_capture: T.nilable(V2::Payments::OffSessionPaymentCreateParams::Capture)).returns(T.nilable(V2::Payments::OffSessionPaymentCreateParams::Capture))
         }
        def capture=(_capture); end
        # Whether the OffSessionPayment should be captured automatically or manually.
        sig { returns(T.nilable(String)) }
        def capture_method; end
        sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
        def capture_method=(_capture_method); end
        # ID of the Customer to which this OffSessionPayment belongs.
        sig { returns(String) }
        def customer; end
        sig { params(_customer: String).returns(String) }
        def customer=(_customer); end
        # Set of [key-value pairs](https://docs.corp.stripe.com/api/metadata) that you can
        # attach to an object. This can be useful for storing additional information about
        # the object in a structured format. Learn more about
        # [storing information in metadata](https://docs.corp.stripe.com/payments/payment-intents#storing-information-in-metadata).
        sig { returns(T::Hash[String, String]) }
        def metadata; end
        sig { params(_metadata: T::Hash[String, String]).returns(T::Hash[String, String]) }
        def metadata=(_metadata); end
        # The account (if any) for which the funds of the OffSessionPayment are intended.
        sig { returns(T.nilable(String)) }
        def on_behalf_of; end
        sig { params(_on_behalf_of: T.nilable(String)).returns(T.nilable(String)) }
        def on_behalf_of=(_on_behalf_of); end
        # ID of the payment method used in this OffSessionPayment.
        sig { returns(String) }
        def payment_method; end
        sig { params(_payment_method: String).returns(String) }
        def payment_method=(_payment_method); end
        # Payment method options for the off-session payment.
        sig {
          returns(T.nilable(V2::Payments::OffSessionPaymentCreateParams::PaymentMethodOptions))
         }
        def payment_method_options; end
        sig {
          params(_payment_method_options: T.nilable(V2::Payments::OffSessionPaymentCreateParams::PaymentMethodOptions)).returns(T.nilable(V2::Payments::OffSessionPaymentCreateParams::PaymentMethodOptions))
         }
        def payment_method_options=(_payment_method_options); end
        # Details about the payments orchestration configuration.
        sig {
          returns(T.nilable(V2::Payments::OffSessionPaymentCreateParams::PaymentsOrchestration))
         }
        def payments_orchestration; end
        sig {
          params(_payments_orchestration: T.nilable(V2::Payments::OffSessionPaymentCreateParams::PaymentsOrchestration)).returns(T.nilable(V2::Payments::OffSessionPaymentCreateParams::PaymentsOrchestration))
         }
        def payments_orchestration=(_payments_orchestration); end
        # Details about the OffSessionPayment retries.
        sig { returns(T.nilable(V2::Payments::OffSessionPaymentCreateParams::RetryDetails)) }
        def retry_details; end
        sig {
          params(_retry_details: T.nilable(V2::Payments::OffSessionPaymentCreateParams::RetryDetails)).returns(T.nilable(V2::Payments::OffSessionPaymentCreateParams::RetryDetails))
         }
        def retry_details=(_retry_details); end
        # Text that appears on the customer’s statement as the statement descriptor for a
        # non-card charge. This value overrides the account’s default statement descriptor.
        # For information about requirements, including the 22-character limit, see the
        # [Statement Descriptor docs](https://docs.stripe.com/get-started/account/statement-descriptors).
        sig { returns(T.nilable(String)) }
        def statement_descriptor; end
        sig { params(_statement_descriptor: T.nilable(String)).returns(T.nilable(String)) }
        def statement_descriptor=(_statement_descriptor); end
        # Provides information about a card charge. Concatenated to the account’s
        # [statement descriptor prefix](https://docs.stripe.com/get-started/account/statement-descriptors#static)
        # to form the complete statement descriptor that appears on the customer’s statement.
        sig { returns(T.nilable(String)) }
        def statement_descriptor_suffix; end
        sig { params(_statement_descriptor_suffix: T.nilable(String)).returns(T.nilable(String)) }
        def statement_descriptor_suffix=(_statement_descriptor_suffix); end
        # Test clock that can be used to advance the retry attempts in a sandbox.
        sig { returns(T.nilable(String)) }
        def test_clock; end
        sig { params(_test_clock: T.nilable(String)).returns(T.nilable(String)) }
        def test_clock=(_test_clock); end
        # The data that automatically creates a Transfer after the payment finalizes. Learn more about the use case for [connected accounts](https://docs.corp.stripe.com/payments/connected-accounts).
        sig { returns(T.nilable(V2::Payments::OffSessionPaymentCreateParams::TransferData)) }
        def transfer_data; end
        sig {
          params(_transfer_data: T.nilable(V2::Payments::OffSessionPaymentCreateParams::TransferData)).returns(T.nilable(V2::Payments::OffSessionPaymentCreateParams::TransferData))
         }
        def transfer_data=(_transfer_data); end
        sig {
          params(amount: Stripe::V2::Amount, amount_details: T.nilable(V2::Payments::OffSessionPaymentCreateParams::AmountDetails), cadence: String, capture: T.nilable(V2::Payments::OffSessionPaymentCreateParams::Capture), capture_method: T.nilable(String), customer: String, metadata: T::Hash[String, String], on_behalf_of: T.nilable(String), payment_method: String, payment_method_options: T.nilable(V2::Payments::OffSessionPaymentCreateParams::PaymentMethodOptions), payments_orchestration: T.nilable(V2::Payments::OffSessionPaymentCreateParams::PaymentsOrchestration), retry_details: T.nilable(V2::Payments::OffSessionPaymentCreateParams::RetryDetails), statement_descriptor: T.nilable(String), statement_descriptor_suffix: T.nilable(String), test_clock: T.nilable(String), transfer_data: T.nilable(V2::Payments::OffSessionPaymentCreateParams::TransferData)).void
         }
        def initialize(
          amount: nil,
          amount_details: nil,
          cadence: nil,
          capture: nil,
          capture_method: nil,
          customer: nil,
          metadata: nil,
          on_behalf_of: nil,
          payment_method: nil,
          payment_method_options: nil,
          payments_orchestration: nil,
          retry_details: nil,
          statement_descriptor: nil,
          statement_descriptor_suffix: nil,
          test_clock: nil,
          transfer_data: nil
        ); end
      end
    end
  end
end