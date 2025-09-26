# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Payments
      class OffSessionPaymentService < StripeService
        class ListParams < Stripe::RequestParams
          # The page size limit. If not provided, the default is 20.
          attr_accessor :limit

          def initialize(limit: nil)
            @limit = limit
          end
        end

        class CreateParams < Stripe::RequestParams
          class AmountDetails < Stripe::RequestParams
            class LineItem < Stripe::RequestParams
              class Tax < Stripe::RequestParams
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
              # Cost of the product. Non-negative integer.
              attr_accessor :unit_cost

              def initialize(
                discount_amount: nil,
                product_code: nil,
                product_name: nil,
                quantity: nil,
                tax: nil,
                unit_cost: nil
              )
                @discount_amount = discount_amount
                @product_code = product_code
                @product_name = product_name
                @quantity = quantity
                @tax = tax
                @unit_cost = unit_cost
              end
            end

            class Shipping < Stripe::RequestParams
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

            class Tax < Stripe::RequestParams
              # Total portion of the amount that is for tax.
              attr_accessor :total_tax_amount

              def initialize(total_tax_amount: nil)
                @total_tax_amount = total_tax_amount
              end
            end
            # The amount the total transaction was discounted for.
            attr_accessor :discount_amount
            # A list of line items, each containing information about a product in the PaymentIntent. There is a maximum of 100 line items.
            attr_accessor :line_items
            # Contains information about the shipping portion of the amount.
            attr_accessor :shipping
            # Contains information about the tax portion of the amount.
            attr_accessor :tax

            def initialize(discount_amount: nil, line_items: nil, shipping: nil, tax: nil)
              @discount_amount = discount_amount
              @line_items = line_items
              @shipping = shipping
              @tax = tax
            end
          end

          class Capture < Stripe::RequestParams
            # The method to use to capture the payment.
            attr_accessor :capture_method

            def initialize(capture_method: nil)
              @capture_method = capture_method
            end
          end

          class PaymentMethodOptions < Stripe::RequestParams
            class Card < Stripe::RequestParams
              # If you are making a Credential On File transaction with a previously saved card, you should pass the Network Transaction ID
              # from a prior initial authorization on Stripe (from a successful SetupIntent or a PaymentIntent with `setup_future_usage` set),
              # or one that you have obtained from another payment processor. This is a token from the network which uniquely identifies the transaction.
              # Visa calls this the Transaction ID, Mastercard calls this the Trace ID, and American Express calls this the Acquirer Reference Data.
              # Note that you should pass in a Network Transaction ID if you have one, regardless of whether this is a
              # Customer-Initiated Transaction (CIT) or a Merchant-Initiated Transaction (MIT).
              attr_accessor :network_transaction_id

              def initialize(network_transaction_id: nil)
                @network_transaction_id = network_transaction_id
              end
            end
            # Payment method options for the card payment type.
            attr_accessor :card

            def initialize(card: nil)
              @card = card
            end
          end

          class PaymentsOrchestration < Stripe::RequestParams
            # True when you want to enable payments orchestration for this off-session payment. False otherwise.
            attr_accessor :enabled

            def initialize(enabled: nil)
              @enabled = enabled
            end
          end

          class RetryDetails < Stripe::RequestParams
            # The pre-configured retry policy to use for the payment.
            attr_accessor :retry_policy
            # Indicates the strategy for how you want Stripe to retry the payment.
            attr_accessor :retry_strategy

            def initialize(retry_policy: nil, retry_strategy: nil)
              @retry_policy = retry_policy
              @retry_strategy = retry_strategy
            end
          end

          class TransferData < Stripe::RequestParams
            # The amount transferred to the destination account. This transfer will occur
            # automatically after the payment succeeds. If no amount is specified, by default
            # the entire payment amount is transferred to the destination account. The amount
            # must be less than or equal to the
            # [amount_requested](https://docs.corp.stripe.com/api/v2/off-session-payments/object?api-version=2025-05-28.preview#v2_off_session_payment_object-amount_requested),
            # and must be a positive integer representing how much to transfer in the smallest
            # currency unit (e.g., 100 cents to charge $1.00).
            attr_accessor :amount
            # The account (if any) that the payment is attributed to for tax reporting, and
            # where funds from the payment are transferred to after payment success.
            attr_accessor :destination

            def initialize(amount: nil, destination: nil)
              @amount = amount
              @destination = destination
            end
          end
          # The “presentment amount” to be collected from the customer.
          attr_accessor :amount
          # Provides industry-specific information about the amount.
          attr_accessor :amount_details
          # The frequency of the underlying payment.
          attr_accessor :cadence
          # Details about the capture configuration for the OffSessionPayment.
          attr_accessor :capture
          # Whether the OffSessionPayment should be captured automatically or manually.
          attr_accessor :capture_method
          # ID of the Customer to which this OffSessionPayment belongs.
          attr_accessor :customer
          # Set of [key-value pairs](https://docs.corp.stripe.com/api/metadata) that you can
          # attach to an object. This can be useful for storing additional information about
          # the object in a structured format. Learn more about
          # [storing information in metadata](https://docs.corp.stripe.com/payments/payment-intents#storing-information-in-metadata).
          attr_accessor :metadata
          # The account (if any) for which the funds of the OffSessionPayment are intended.
          attr_accessor :on_behalf_of
          # ID of the payment method used in this OffSessionPayment.
          attr_accessor :payment_method
          # Payment method options for the off-session payment.
          attr_accessor :payment_method_options
          # Details about the payments orchestration configuration.
          attr_accessor :payments_orchestration
          # Details about the OffSessionPayment retries.
          attr_accessor :retry_details
          # Text that appears on the customer’s statement as the statement descriptor for a
          # non-card charge. This value overrides the account’s default statement descriptor.
          # For information about requirements, including the 22-character limit, see the
          # [Statement Descriptor docs](https://docs.stripe.com/get-started/account/statement-descriptors).
          attr_accessor :statement_descriptor
          # Provides information about a card charge. Concatenated to the account’s
          # [statement descriptor prefix](https://docs.stripe.com/get-started/account/statement-descriptors#static)
          # to form the complete statement descriptor that appears on the customer’s statement.
          attr_accessor :statement_descriptor_suffix
          # Test clock that can be used to advance the retry attempts in a sandbox.
          attr_accessor :test_clock
          # The data that automatically creates a Transfer after the payment finalizes. Learn more about the use case for [connected accounts](https://docs.corp.stripe.com/payments/connected-accounts).
          attr_accessor :transfer_data

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
          )
            @amount = amount
            @amount_details = amount_details
            @cadence = cadence
            @capture = capture
            @capture_method = capture_method
            @customer = customer
            @metadata = metadata
            @on_behalf_of = on_behalf_of
            @payment_method = payment_method
            @payment_method_options = payment_method_options
            @payments_orchestration = payments_orchestration
            @retry_details = retry_details
            @statement_descriptor = statement_descriptor
            @statement_descriptor_suffix = statement_descriptor_suffix
            @test_clock = test_clock
            @transfer_data = transfer_data
          end
        end

        class RetrieveParams < Stripe::RequestParams; end
        class CancelParams < Stripe::RequestParams; end

        class CaptureParams < Stripe::RequestParams
          class TransferData < Stripe::RequestParams
            # The amount transferred to the destination account. This transfer will occur
            # automatically after the payment succeeds. If no amount is specified, by default
            # the entire payment amount is transferred to the destination account. The amount
            # must be less than or equal to the
            # [amount_requested](https://docs.corp.stripe.com/api/v2/off-session-payments/object?api-version=2025-05-28.preview#v2_off_session_payment_object-amount_requested),
            # and must be a positive integer representing how much to transfer in the smallest
            # currency unit (e.g., 100 cents to charge $1.00).
            attr_accessor :amount
            # The account (if any) that the payment is attributed to for tax reporting, and
            # where funds from the payment are transferred to after payment success.
            attr_accessor :destination

            def initialize(amount: nil, destination: nil)
              @amount = amount
              @destination = destination
            end
          end
          # The amount to capture.
          attr_accessor :amount_to_capture
          # Set of [key-value pairs](https://docs.corp.stripe.com/api/metadata) that you can
          # attach to an object. This can be useful for storing additional information about
          # the object in a structured format. Learn more about
          # [storing information in metadata](https://docs.corp.stripe.com/payments/payment-intents#storing-information-in-metadata).
          attr_accessor :metadata
          # Text that appears on the customer’s statement as the statement descriptor for a
          # non-card charge. This value overrides the account’s default statement descriptor.
          # For information about requirements, including the 22-character limit, see the
          # [Statement Descriptor docs](https://docs.stripe.com/get-started/account/statement-descriptors).
          attr_accessor :statement_descriptor
          # Provides information about a card charge. Concatenated to the account’s
          # [statement descriptor prefix](https://docs.stripe.com/get-started/account/statement-descriptors#static)
          # to form the complete statement descriptor that appears on the customer’s statement.
          attr_accessor :statement_descriptor_suffix
          # The data that automatically creates a Transfer after the payment finalizes. Learn more about the use case for [connected accounts](https://docs.corp.stripe.com/payments/connected-accounts).
          attr_accessor :transfer_data

          def initialize(
            amount_to_capture: nil,
            metadata: nil,
            statement_descriptor: nil,
            statement_descriptor_suffix: nil,
            transfer_data: nil
          )
            @amount_to_capture = amount_to_capture
            @metadata = metadata
            @statement_descriptor = statement_descriptor
            @statement_descriptor_suffix = statement_descriptor_suffix
            @transfer_data = transfer_data
          end
        end

        # Cancel an OffSessionPayment that has previously been created.
        def cancel(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/payments/off_session_payments/%<id>s/cancel", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Captures an OffSessionPayment that has previously been created.
        def capture(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/payments/off_session_payments/%<id>s/capture", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Creates an OffSessionPayment object.
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/payments/off_session_payments",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Returns a list of OffSessionPayments matching a filter.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/payments/off_session_payments",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieves the details of an OffSessionPayment that has previously been created.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/payments/off_session_payments/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
