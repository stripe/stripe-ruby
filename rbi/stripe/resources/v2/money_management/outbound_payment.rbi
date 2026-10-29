# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      # OutboundPayment represents a single money movement from one FinancialAccount you own to a payout method someone else owns.
      class OutboundPayment < APIResource
        class DeliveryOptions < ::Stripe::StripeObject
          # Open Enum. Method for bank account.
          sig { returns(T.nilable(String)) }
          def bank_account; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class From < ::Stripe::StripeObject
          # The monetary amount debited from the sender, only set on responses.
          sig { returns(::Stripe::V2::Amount) }
          def debited; end
          # The FinancialAccount that funds were pulled from.
          sig { returns(String) }
          def financial_account; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class RecipientNotification < ::Stripe::StripeObject
          # Closed Enum. Configuration option to enable or disable notifications to recipients.
          # Do not send notifications when `setting` is `none`. Use the account setting when `setting` is `configured` or omitted.
          sig { returns(String) }
          def setting; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class StatusDetails < ::Stripe::StripeObject
          class Failed < ::Stripe::StripeObject
            # Open Enum. The `failed` status reason.
            sig { returns(String) }
            def reason; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class Processing < ::Stripe::StripeObject
            # Open Enum. The `processing` status reason.
            sig { returns(String) }
            def reason; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class Returned < ::Stripe::StripeObject
            # Open Enum. The `returned` status reason.
            sig { returns(String) }
            def reason; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The `failed` status reason.
          sig { returns(T.nilable(Failed)) }
          def failed; end
          # The `processing` status details.
          sig { returns(T.nilable(Processing)) }
          def processing; end
          # The `returned` status reason.
          sig { returns(T.nilable(Returned)) }
          def returned; end
          def self.inner_class_types
            @inner_class_types = {failed: Failed, processing: Processing, returned: Returned}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class StatusTransitions < ::Stripe::StripeObject
          # Timestamp describing when an OutboundPayment changed status to `canceled`.
          # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
          sig { returns(T.nilable(String)) }
          def canceled_at; end
          # Timestamp describing when an OutboundPayment changed status to `failed`.
          # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
          sig { returns(T.nilable(String)) }
          def failed_at; end
          # Timestamp describing when an OutboundPayment changed status to `posted`.
          # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
          sig { returns(T.nilable(String)) }
          def posted_at; end
          # Timestamp describing when an OutboundPayment changed status to `returned`.
          # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
          sig { returns(T.nilable(String)) }
          def returned_at; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class To < ::Stripe::StripeObject
          class PayoutMethodOptions < ::Stripe::StripeObject
            class BankAccount < ::Stripe::StripeObject
              class PreferredNetworkOptions < ::Stripe::StripeObject
                class Ach < ::Stripe::StripeObject
                  # Open Enum. ACH submission timing.
                  sig { returns(T.nilable(String)) }
                  def submission; end
                  # The transaction purpose for this ACH payment.
                  sig { returns(T.nilable(String)) }
                  def transaction_purpose; end
                  def self.inner_class_types
                    @inner_class_types = {}
                  end
                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # ACH-specific network options.
                sig { returns(T.nilable(Ach)) }
                def ach; end
                def self.inner_class_types
                  @inner_class_types = {ach: Ach}
                end
                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # Per-network configuration options.
              sig { returns(T.nilable(PreferredNetworkOptions)) }
              def preferred_network_options; end
              # The preferred networks to use for this OutboundPayment.
              sig { returns(T.nilable(T::Array[String])) }
              def preferred_networks; end
              def self.inner_class_types
                @inner_class_types = {preferred_network_options: PreferredNetworkOptions}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Options for bank account payout methods.
            sig { returns(T.nilable(BankAccount)) }
            def bank_account; end
            def self.inner_class_types
              @inner_class_types = {bank_account: BankAccount}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The monetary amount being credited to the destination.
          sig { returns(::Stripe::V2::Amount) }
          def credited; end
          # The payout method which the OutboundPayment uses to send payout.
          sig { returns(T.nilable(String)) }
          def payout_method; end
          # Payout method options for the OutboundPayment.
          sig { returns(T.nilable(PayoutMethodOptions)) }
          def payout_method_options; end
          # To which account the OutboundPayment is sent.
          sig { returns(String) }
          def recipient; end
          def self.inner_class_types
            @inner_class_types = {payout_method_options: PayoutMethodOptions}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class TraceId < ::Stripe::StripeObject
          # Possible values are `pending`, `supported`, and `unsupported`. Initially set to `pending`, it changes to
          # `supported` when the recipient bank provides a trace ID, or `unsupported` if the recipient bank doesn't support it.
          # This status may not align with the OutboundPayment or OutboundTransfer status and can remain `pending`
          # even after the payment or transfer is posted.
          sig { returns(String) }
          def status; end
          # The trace ID value if `trace_id.status` is `supported`, otherwise empty.
          sig { returns(T.nilable(String)) }
          def value; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class TrackingDetails < ::Stripe::StripeObject
          class BankAccount < ::Stripe::StripeObject
            # A unique identifier that can be used to track this OutboundPayment with the recipient bank. Banks might call this a “reference number” or something similar.
            sig { returns(T.nilable(String)) }
            def trace_id; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class Card < ::Stripe::StripeObject
            # A unique identifier that can be used to track this OutboundPayment with the recipient card.
            sig { returns(T.nilable(String)) }
            def retrieval_reference; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class CryptoWallet < ::Stripe::StripeObject
            # A unique identifier that can be used to track this OutboundPayment with the recipient crypto wallet.
            sig { returns(T.nilable(String)) }
            def blockchain_transaction; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Bank account tracking details.
          sig { returns(T.nilable(BankAccount)) }
          def bank_account; end
          # Card tracking details.
          sig { returns(T.nilable(Card)) }
          def card; end
          # Crypto wallet tracking details.
          sig { returns(T.nilable(CryptoWallet)) }
          def crypto_wallet; end
          # The status of the tracking details for this OutboundPayment.
          sig { returns(String) }
          def status; end
          # The type of tracking details for this OutboundPayment.
          sig { returns(String) }
          def type; end
          def self.inner_class_types
            @inner_class_types = {
              bank_account: BankAccount,
              card: Card,
              crypto_wallet: CryptoWallet,
            }
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The amount and currency requested for this OutboundPayment.
        sig { returns(::Stripe::V2::Amount) }
        def amount; end
        # Returns true if the OutboundPayment can be canceled, and false otherwise.
        sig { returns(T::Boolean) }
        def cancelable; end
        # Time at which the OutboundPayment was created.
        # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
        sig { returns(String) }
        def created; end
        # Delivery options to be used to send the OutboundPayment.
        sig { returns(T.nilable(DeliveryOptions)) }
        def delivery_options; end
        # An arbitrary string attached to the OutboundPayment. Often useful for displaying to users.
        sig { returns(T.nilable(String)) }
        def description; end
        # The date when funds are expected to arrive in the payout method. This field is not set if the payout method is in a `failed`, `canceled`, or `returned` state.
        # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
        sig { returns(T.nilable(String)) }
        def expected_arrival_date; end
        # The FinancialAccount that funds were pulled from.
        sig { returns(From) }
        def from; end
        # Unique identifier for the OutboundPayment.
        sig { returns(String) }
        def id; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # The quote for this OutboundPayment. Only required for countries with regulatory mandates to display fee estimates before OutboundPayment creation.
        sig { returns(T.nilable(String)) }
        def outbound_payment_quote; end
        # The PayoutIntent ID that triggered this OutboundPayment.
        sig { returns(T.nilable(String)) }
        def payout_intent; end
        # The purpose of the OutboundPayment.
        sig { returns(T.nilable(String)) }
        def purpose; end
        # A link to the Stripe-hosted receipt for this OutboundPayment. The receipt link remains active for 60 days from the OutboundPayment creation date. After this period, the link will expire and the receipt url value will be null.
        sig { returns(T.nilable(String)) }
        def receipt_url; end
        # Details about the OutboundPayment notification settings for recipient.
        sig { returns(RecipientNotification) }
        def recipient_notification; end
        # The ID of the RecipientVerification for this OutboundPayment. Required where recipient-name verification is mandated before creating an OutboundPayment.
        sig { returns(T.nilable(String)) }
        def recipient_verification; end
        # The description that appears on the receiving end of an OutboundPayment (for example, on a bank statement). Defaults to `STRIPE` if not configured in the account settings.
        sig { returns(String) }
        def statement_descriptor; end
        # Current status of the OutboundPayment.
        # An OutboundPayment is `processing` after creation. It becomes `posted` when funds leave the account,
        # `failed` if it cannot be sent, `canceled` if canceled before posting, or `returned` if the funds are returned.
        sig { returns(String) }
        def status; end
        # Status details for an OutboundPayment in a `processing`, `failed`, or `returned` state.
        sig { returns(T.nilable(StatusDetails)) }
        def status_details; end
        # Hash containing timestamps of when the object transitioned to a particular status.
        sig { returns(T.nilable(StatusTransitions)) }
        def status_transitions; end
        # To which payout method the OutboundPayment was sent.
        sig { returns(To) }
        def to; end
        # A unique identifier that can be used to track this OutboundPayment with recipient bank. Banks might call this a "reference number" or something similar.
        sig { returns(TraceId) }
        def trace_id; end
        # Information to track this OutboundPayment with the recipient bank.
        sig { returns(T.nilable(TrackingDetails)) }
        def tracking_details; end
      end
    end
  end
end