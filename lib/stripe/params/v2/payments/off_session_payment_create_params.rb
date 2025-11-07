# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Payments
      class OffSessionPaymentCreateParams < ::Stripe::RequestParams
        class Capture < ::Stripe::RequestParams
          # The method to use to capture the payment.
          attr_accessor :capture_method

          def initialize(capture_method: nil)
            @capture_method = capture_method
          end
        end

        class PaymentMethodOptions < ::Stripe::RequestParams
          class Card < ::Stripe::RequestParams
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

        class PaymentsOrchestration < ::Stripe::RequestParams
          # True when you want to enable payments orchestration for this off-session payment. False otherwise.
          attr_accessor :enabled

          def initialize(enabled: nil)
            @enabled = enabled
          end
        end

        class RetryDetails < ::Stripe::RequestParams
          # The pre-configured retry policy to use for the payment.
          attr_accessor :retry_policy
          # Indicates the strategy for how you want Stripe to retry the payment.
          attr_accessor :retry_strategy

          def initialize(retry_policy: nil, retry_strategy: nil)
            @retry_policy = retry_policy
            @retry_strategy = retry_strategy
          end
        end

        class TransferData < ::Stripe::RequestParams
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
        # Details about the capture configuration for the OffSessionPayment.
        attr_accessor :capture
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
          cadence: nil,
          capture: nil,
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
          @cadence = cadence
          @capture = capture
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
    end
  end
end
