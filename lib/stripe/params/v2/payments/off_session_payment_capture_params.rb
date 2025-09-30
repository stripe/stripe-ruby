# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Payments
      class OffSessionPaymentCaptureParams < Stripe::RequestParams
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
    end
  end
end
