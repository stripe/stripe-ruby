# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Payments
      class OffSessionPaymentCaptureParams < ::Stripe::RequestParams
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
        # The amount to capture.
        sig { returns(T.nilable(Integer)) }
        def amount_to_capture; end
        sig { params(_amount_to_capture: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def amount_to_capture=(_amount_to_capture); end
        # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can
        # attach to an object. This can be useful for storing additional information about
        # the object in a structured format. Learn more about
        # [storing information in metadata](https://docs.stripe.com/payments/payment-intents#storing-information-in-metadata).
        sig { returns(T::Hash[String, String]) }
        def metadata; end
        sig { params(_metadata: T::Hash[String, String]).returns(T::Hash[String, String]) }
        def metadata=(_metadata); end
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
          params(amount_to_capture: T.nilable(Integer), metadata: T::Hash[String, String], statement_descriptor: T.nilable(String), statement_descriptor_suffix: T.nilable(String), transfer_data: T.nilable(::Stripe::V2::Payments::OffSessionPaymentCaptureParams::TransferData)).void
         }
        def initialize(
          amount_to_capture: nil,
          metadata: nil,
          statement_descriptor: nil,
          statement_descriptor_suffix: nil,
          transfer_data: nil
        ); end
      end
    end
  end
end