# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Payments
      # OffSessionPayment resource.
      class OffSessionPayment < APIResource
        class AmountCapturable < ::Stripe::StripeObject
          # A non-negative integer representing how much to charge in the [smallest currency unit](https://docs.stripe.com/currencies#minor-units).
          sig { returns(T.nilable(Integer)) }
          def value; end
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(T.nilable(String)) }
          def currency; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class AmountRequested < ::Stripe::StripeObject
          # A non-negative integer representing how much to charge in the [smallest currency unit](https://docs.stripe.com/currencies#minor-units).
          sig { returns(T.nilable(Integer)) }
          def value; end
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(T.nilable(String)) }
          def currency; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class Capture < ::Stripe::StripeObject
          # The timestamp when this payment is no longer eligible to be captured.
          sig { returns(T.nilable(String)) }
          def capture_before; end
          # The method to use to capture the payment.
          sig { returns(String) }
          def capture_method; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class PaymentsOrchestration < ::Stripe::StripeObject
          # True when you want to enable payments orchestration for this off-session payment. False otherwise.
          sig { returns(T::Boolean) }
          def enabled; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class RetryDetails < ::Stripe::StripeObject
          # Number of authorization attempts so far.
          sig { returns(Integer) }
          def attempts; end
          # The pre-configured retry policy to use for the payment.
          sig { returns(T.nilable(String)) }
          def retry_policy; end
          # Indicates the strategy for how you want Stripe to retry the payment.
          sig { returns(String) }
          def retry_strategy; end
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
          sig { returns(T.nilable(Integer)) }
          def amount; end
          # The account (if any) that the payment is attributed to for tax reporting, and
          # where funds from the payment are transferred to after payment success.
          sig { returns(String) }
          def destination; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The amount available to be captured.
        sig { returns(T.nilable(AmountCapturable)) }
        def amount_capturable; end
        # The “presentment amount” to be collected from the customer.
        sig { returns(AmountRequested) }
        def amount_requested; end
        # The frequency of the underlying payment.
        sig { returns(String) }
        def cadence; end
        # Details about the capture configuration for the OffSessionPayment.
        sig { returns(T.nilable(Capture)) }
        def capture; end
        # ID of the owning compartment.
        sig { returns(String) }
        def compartment_id; end
        # Creation time of the OffSessionPayment. Represented as a RFC 3339 date & time UTC
        # value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
        sig { returns(String) }
        def created; end
        # ID of the Customer to which this OffSessionPayment belongs.
        sig { returns(String) }
        def customer; end
        # The reason why the OffSessionPayment failed.
        sig { returns(T.nilable(String)) }
        def failure_reason; end
        # Unique identifier for the object.
        sig { returns(String) }
        def id; end
        # The payment error encountered in the previous attempt to authorize the payment.
        sig { returns(T.nilable(String)) }
        def last_authorization_attempt_error; end
        # Payment attempt record for the latest attempt, if one exists.
        sig { returns(T.nilable(String)) }
        def latest_payment_attempt_record; end
        # Has the value true if the object exists in live mode or the value false if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can
        # attach to an object. This can be useful for storing additional information about
        # the object in a structured format. Learn more about
        # [storing information in metadata](https://docs.stripe.com/payments/payment-intents#storing-information-in-metadata).
        sig { returns(T::Hash[String, String]) }
        def metadata; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # The account (if any) for which the funds of the OffSessionPayment are intended.
        sig { returns(T.nilable(String)) }
        def on_behalf_of; end
        # ID of the payment method used in this OffSessionPayment.
        sig { returns(String) }
        def payment_method; end
        # Payment record associated with the OffSessionPayment.
        sig { returns(T.nilable(String)) }
        def payment_record; end
        # Details about the payments orchestration configuration.
        sig { returns(PaymentsOrchestration) }
        def payments_orchestration; end
        # Details about the OffSessionPayment retries.
        sig { returns(RetryDetails) }
        def retry_details; end
        # Text that appears on the customer’s statement as the statement descriptor for a
        # non-card charge. This value overrides the account’s default statement descriptor.
        # For information about requirements, including the 22-character limit, see the
        # [Statement Descriptor docs](https://docs.stripe.com/get-started/account/statement-descriptors).
        sig { returns(T.nilable(String)) }
        def statement_descriptor; end
        # Provides information about a card charge. Concatenated to the account’s
        # [statement descriptor prefix](https://docs.stripe.com/get-started/account/statement-descriptors#static)
        # to form the complete statement descriptor that appears on the customer’s statement.
        sig { returns(T.nilable(String)) }
        def statement_descriptor_suffix; end
        # Status of this OffSessionPayment, one of `pending`, `pending_retry`, `processing`,
        # `failed`, `canceled`, `requires_capture`, or `succeeded`.
        sig { returns(String) }
        def status; end
        # Test clock that can be used to advance the retry attempts in a sandbox.
        sig { returns(T.nilable(String)) }
        def test_clock; end
        # The data that automatically creates a Transfer after the payment finalizes. Learn more about the use case for [connected accounts](https://docs.stripe.com/payments/connected-accounts).
        sig { returns(T.nilable(TransferData)) }
        def transfer_data; end
      end
    end
  end
end