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
          class RetryDetails < Stripe::RequestParams
            # Indicates the strategy for how you want Stripe to retry the payment.
            attr_accessor :retry_strategy

            def initialize(retry_strategy: nil)
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
          # The frequency of the underlying payment.
          attr_accessor :cadence
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
            cadence: nil,
            customer: nil,
            metadata: nil,
            on_behalf_of: nil,
            payment_method: nil,
            retry_details: nil,
            statement_descriptor: nil,
            statement_descriptor_suffix: nil,
            test_clock: nil,
            transfer_data: nil
          )
            @amount = amount
            @cadence = cadence
            @customer = customer
            @metadata = metadata
            @on_behalf_of = on_behalf_of
            @payment_method = payment_method
            @retry_details = retry_details
            @statement_descriptor = statement_descriptor
            @statement_descriptor_suffix = statement_descriptor_suffix
            @test_clock = test_clock
            @transfer_data = transfer_data
          end
        end

        class RetrieveParams < Stripe::RequestParams; end
        class CancelParams < Stripe::RequestParams; end

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
