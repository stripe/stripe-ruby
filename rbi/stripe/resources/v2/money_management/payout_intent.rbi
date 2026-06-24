# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      # PayoutIntent represents an intent to send funds from a Financial Account to a payout method.
      class PayoutIntent < APIResource
        class From < ::Stripe::StripeObject
          # The currency of the financial account.
          sig { returns(String) }
          def currency; end
          # The FinancialAccount that funds are pulled from.
          sig { returns(String) }
          def financial_account; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class LatestPayout < ::Stripe::StripeObject
          # The ID of the OutboundPayment, if applicable.
          sig { returns(T.nilable(String)) }
          def outbound_payment; end
          # The ID of the OutboundTransfer, if applicable.
          sig { returns(T.nilable(String)) }
          def outbound_transfer; end
          # The type of payout.
          sig { returns(String) }
          def type; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class NextAction < ::Stripe::StripeObject
          class HandleFailure < ::Stripe::StripeObject
            # Open Enum. The reason for the failure.
            sig { returns(String) }
            def failure_reason; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Details about a failure that requires user action. Populated when type is handle_failure.
          sig { returns(T.nilable(HandleFailure)) }
          def handle_failure; end
          # Open Enum. The type of next action required.
          sig { returns(String) }
          def type; end
          def self.inner_class_types
            @inner_class_types = {handle_failure: HandleFailure}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class RecipientNotification < ::Stripe::StripeObject
          # Closed Enum. Configuration option to enable or disable notifications to recipients.
          # Do not send notifications when setting is NONE. Default to account setting when setting is CONFIGURED or not set.
          sig { returns(String) }
          def setting; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class ScheduleOptions < ::Stripe::StripeObject
          # The date when the payout should be executed, in YYYY-MM-DD format.
          sig { returns(T.nilable(String)) }
          def execute_on; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class StatusTransitions < ::Stripe::StripeObject
          # Timestamp describing when a PayoutIntent changed status to `canceled`.
          # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
          sig { returns(T.nilable(String)) }
          def canceled_at; end
          # Timestamp describing when a PayoutIntent changed status to `posted`.
          # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
          sig { returns(T.nilable(String)) }
          def posted_at; end
          # Timestamp describing when a PayoutIntent changed status to `processing`.
          # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
          sig { returns(T.nilable(String)) }
          def processing_at; end
          # Timestamp describing when a PayoutIntent changed status to `requires_action`.
          # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
          sig { returns(T.nilable(String)) }
          def requires_action_at; end
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
              # The preferred networks to use for this PayoutIntent.
              sig { returns(T::Array[String]) }
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
          # The currency to send to the recipient.
          sig { returns(T.nilable(String)) }
          def currency; end
          # The payout method ID. Optional for OutboundPayment if recipient has default payment method. Required for OutboundTransfer.
          sig { returns(T.nilable(String)) }
          def payout_method; end
          # Payout method options for the PayoutIntent.
          sig { returns(T.nilable(PayoutMethodOptions)) }
          def payout_method_options; end
          # The recipient ID. Only relevant for OutboundPayment.
          sig { returns(T.nilable(String)) }
          def recipient; end
          def self.inner_class_types
            @inner_class_types = {payout_method_options: PayoutMethodOptions}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The monetary amount to be sent.
        sig { returns(::Stripe::V2::Amount) }
        def amount; end
        # Time at which the PayoutIntent was created.
        # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
        sig { returns(String) }
        def created; end
        # An arbitrary string attached to the PayoutIntent. Often useful for displaying to users.
        sig { returns(T.nilable(String)) }
        def description; end
        # The FinancialAccount that funds are pulled from.
        sig { returns(From) }
        def from; end
        # Unique identifier for the PayoutIntent.
        sig { returns(String) }
        def id; end
        # Details about the latest payout associated with this PayoutIntent.
        sig { returns(LatestPayout) }
        def latest_payout; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        # Next action required for a PayoutIntent in the requires_action state. Populated when status is requires_action.
        sig { returns(T.nilable(NextAction)) }
        def next_action; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # Details about the OutboundPayment notification settings for recipient. Only applicable to OutboundPayment.
        sig { returns(T.nilable(RecipientNotification)) }
        def recipient_notification; end
        # Scheduling options for the payout. If this is nil, we assume immediate execution.
        sig { returns(T.nilable(ScheduleOptions)) }
        def schedule_options; end
        # The description that appears on the receiving end for the payout (for example, on a bank statement).
        sig { returns(T.nilable(String)) }
        def statement_descriptor; end
        # Open Enum. Current status of the PayoutIntent: `pending`, `processing`, `posted`, `canceled`, `requires_action`.
        sig { returns(String) }
        def status; end
        # Hash containing timestamps of when transitioned to a particular status.
        sig { returns(T.nilable(StatusTransitions)) }
        def status_transitions; end
        # To which payout method the payout is sent.
        sig { returns(To) }
        def to; end
      end
    end
  end
end