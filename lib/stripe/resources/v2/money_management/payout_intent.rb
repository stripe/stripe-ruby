# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      # PayoutIntent represents an intent to send funds from a Financial Account to a payout method.
      class PayoutIntent < APIResource
        OBJECT_NAME = "v2.money_management.payout_intent"
        def self.object_name
          "v2.money_management.payout_intent"
        end

        class From < ::Stripe::StripeObject
          # The currency of the financial account.
          attr_reader :currency
          # The FinancialAccount that funds are pulled from.
          attr_reader :financial_account

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class LatestPayout < ::Stripe::StripeObject
          # The ID of the OutboundPayment, if applicable.
          attr_reader :outbound_payment
          # The ID of the OutboundTransfer, if applicable.
          attr_reader :outbound_transfer
          # The type of payout.
          attr_reader :type

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
            attr_reader :failure_reason

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Details about a failure that requires user action. Populated when type is handle_failure.
          attr_reader :handle_failure
          # Open Enum. The type of next action required.
          attr_reader :type

          def self.inner_class_types
            @inner_class_types = { handle_failure: HandleFailure }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class RecipientNotification < ::Stripe::StripeObject
          # Closed Enum. Configuration option to enable or disable notifications to recipients.
          # Do not send notifications when setting is NONE. Default to account setting when setting is CONFIGURED or not set.
          attr_reader :setting

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class ScheduleOptions < ::Stripe::StripeObject
          # The date when the payout should be executed, in YYYY-MM-DD format.
          attr_reader :execute_on

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
          attr_reader :canceled_at
          # Timestamp describing when a PayoutIntent changed status to `posted`.
          # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
          attr_reader :posted_at
          # Timestamp describing when a PayoutIntent changed status to `processing`.
          # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
          attr_reader :processing_at
          # Timestamp describing when a PayoutIntent changed status to `requires_action`.
          # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
          attr_reader :requires_action_at

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
                  attr_reader :submission
                  # The transaction purpose for this ACH payment.
                  attr_reader :transaction_purpose

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # ACH-specific network options.
                attr_reader :ach

                def self.inner_class_types
                  @inner_class_types = { ach: Ach }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # Per-network configuration options.
              attr_reader :preferred_network_options
              # The preferred networks to use for this PayoutIntent.
              attr_reader :preferred_networks

              def self.inner_class_types
                @inner_class_types = { preferred_network_options: PreferredNetworkOptions }
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Options for bank account payout methods.
            attr_reader :bank_account

            def self.inner_class_types
              @inner_class_types = { bank_account: BankAccount }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The currency to send to the recipient.
          attr_reader :currency
          # The payout method ID. Optional for OutboundPayment if recipient has default payment method. Required for OutboundTransfer.
          attr_reader :payout_method
          # Payout method options for the PayoutIntent.
          attr_reader :payout_method_options
          # The recipient ID. Only relevant for OutboundPayment.
          attr_reader :recipient

          def self.inner_class_types
            @inner_class_types = { payout_method_options: PayoutMethodOptions }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The monetary amount to be sent.
        attr_reader :amount
        # Time at which the PayoutIntent was created.
        # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
        attr_reader :created
        # An arbitrary string attached to the PayoutIntent. Often useful for displaying to users.
        attr_reader :description
        # The FinancialAccount that funds are pulled from.
        attr_reader :from
        # Unique identifier for the PayoutIntent.
        attr_reader :id
        # Details about the latest payout associated with this PayoutIntent.
        attr_reader :latest_payout
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        attr_reader :metadata
        # Next action required for a PayoutIntent in the requires_action state. Populated when status is requires_action.
        attr_reader :next_action
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # Details about the OutboundPayment notification settings for recipient. Only applicable to OutboundPayment.
        attr_reader :recipient_notification
        # Scheduling options for the payout. If this is nil, we assume immediate execution.
        attr_reader :schedule_options
        # The description that appears on the receiving end for the payout (for example, on a bank statement).
        attr_reader :statement_descriptor
        # Open Enum. Current status of the PayoutIntent: `pending`, `processing`, `posted`, `canceled`, `requires_action`.
        attr_reader :status
        # Hash containing timestamps of when transitioned to a particular status.
        attr_reader :status_transitions
        # To which payout method the payout is sent.
        attr_reader :to

        def self.inner_class_types
          @inner_class_types = {
            from: From,
            latest_payout: LatestPayout,
            next_action: NextAction,
            recipient_notification: RecipientNotification,
            schedule_options: ScheduleOptions,
            status_transitions: StatusTransitions,
            to: To,
          }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
