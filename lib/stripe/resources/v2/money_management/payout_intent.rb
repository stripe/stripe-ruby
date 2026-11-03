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

        class EstimatedFee < ::Stripe::StripeObject
          class NetworkFeeDetails < ::Stripe::StripeObject
            class NetworkOptions < ::Stripe::StripeObject
              class Ach < ::Stripe::StripeObject
                # Open Enum. ACH submission timing.
                attr_reader :submission

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # ACH-specific network fee options.
              attr_reader :ach

              def self.inner_class_types
                @inner_class_types = { ach: Ach }
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The network associated with the fee.
            attr_reader :network
            # Per-network options that affect the fee.
            attr_reader :network_options

            def self.inner_class_types
              @inner_class_types = { network_options: NetworkOptions }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class TaxAmount < ::Stripe::StripeObject
            # Currency code.
            attr_reader :currency
            # Tax amount value represented as a decimal string in major units.
            attr_reader :value_decimal

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The fee amount.
          attr_reader :amount
          # Details about the network and options associated with this fee. Present when `type` is `network_fee`.
          attr_reader :network_fee_details
          # Tax charged for this fee, if applicable. Value expressed as a decimal string in major units.
          attr_reader :tax_amount
          # Open Enum. The type of fee.
          attr_reader :type

          def self.inner_class_types
            @inner_class_types = { network_fee_details: NetworkFeeDetails, tax_amount: TaxAmount }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class From < ::Stripe::StripeObject
          # The currency of the financial account.
          attr_reader :currency
          # Estimated amount to be debited from the financial account.
          attr_reader :debited
          # The FinancialAccount that funds are pulled from.
          attr_reader :financial_account

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class FxQuote < ::Stripe::StripeObject
          class Rates < ::Stripe::StripeObject
            # The exchange rate from the source currency to `to_currency`, represented as a decimal string
            # (for example, `1.1520`) to preserve the full precision of the rate.
            attr_reader :exchange_rate

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Open Enum. Duration of the FX rate lock.
          attr_reader :lock_duration
          # Timestamp when the rate lock expires. Null when rate locking is not supported.
          attr_reader :lock_expires_at
          # Open Enum. Lock status of the FX rate.
          attr_reader :lock_status
          # Maps each source currency to its exchange rate into `to_currency`.
          attr_reader :rates
          # The destination currency.
          attr_reader :to_currency

          def self.inner_class_types
            @inner_class_types = { rates: Rates }
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
          class Confirm < ::Stripe::StripeObject
            # The PayoutIntent fields that must be reviewed before confirmation.
            attr_reader :fields_to_review
            # Open Enum. The reason the PayoutIntent requires confirmation.
            attr_reader :reason

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

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
          # Details about a confirmation required. Populated when `type` is `confirm`.
          attr_reader :confirm
          # Details about a failure that requires user action. Populated when `type` is `handle_failure`.
          attr_reader :handle_failure
          # Open Enum. The type of next action required.
          attr_reader :type

          def self.inner_class_types
            @inner_class_types = { confirm: Confirm, handle_failure: HandleFailure }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class RecipientNotification < ::Stripe::StripeObject
          # Closed Enum. Configuration option to enable or disable notifications to recipients.
          # Do not send notifications when `setting` is `none`. Use the account setting when `setting` is `configured` or omitted.
          attr_reader :setting

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class RecipientVerification < ::Stripe::StripeObject
          class MatchResultDetails < ::Stripe::StripeObject
            # The business type returned by the recipient-verification provider.
            attr_reader :matched_business_type
            # The account name returned by the recipient-verification provider.
            attr_reader :matched_name
            # A message describing the match result.
            attr_reader :message
            # The business type provided for recipient verification.
            attr_reader :provided_business_type
            # The name associated with the provided recipient.
            attr_reader :provided_name

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Closed Enum. The recipient-verification provider's match result.
          attr_reader :match_result
          # Details associated with the match result.
          attr_reader :match_result_details

          def self.inner_class_types
            @inner_class_types = { match_result_details: MatchResultDetails }
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
          # Estimated amount to be credited to the recipient in the destination currency.
          attr_reader :credited
          # The currency to send to the recipient.
          attr_reader :currency
          # The payout method ID for the PayoutIntent. Optional when the PayoutIntent creates an OutboundPayment and the recipient has a default payout method. Required when the PayoutIntent creates an OutboundTransfer.
          attr_reader :payout_method
          # Payout method options for the PayoutIntent.
          attr_reader :payout_method_options
          # The recipient ID for the PayoutIntent.
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
        # Controls whether the PayoutIntent requires explicit confirmation before transitioning to `pending`.
        # Even when `automatic`, regulatory requirements may require confirmation. See [Send money with Global Payouts](https://docs.stripe.com/global-payouts/send-money) for details.
        attr_reader :confirmation_method
        # Time at which the PayoutIntent was created.
        # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
        attr_reader :created
        # An arbitrary string attached to the PayoutIntent. Often useful for displaying to users.
        attr_reader :description
        # Estimated fees and taxes.
        attr_reader :estimated_fees
        # The FinancialAccount that funds are pulled from.
        attr_reader :from
        # FX rate information for fee transparency.
        attr_reader :fx_quote
        # Unique identifier for the PayoutIntent.
        attr_reader :id
        # Details about the latest payout associated with this PayoutIntent.
        attr_reader :latest_payout
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        attr_reader :metadata
        # Next action required for a PayoutIntent in the `requires_action` state. Populated when `status` is `requires_action`.
        attr_reader :next_action
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # Recipient notification settings for the PayoutIntent. Only applicable when the PayoutIntent creates an OutboundPayment.
        attr_reader :recipient_notification
        # Recipient verification details for this PayoutIntent.
        attr_reader :recipient_verification
        # Scheduling options for the payout. If omitted, the payout is scheduled for immediate execution.
        attr_reader :schedule_options
        # The description that appears on the receiving end for the payout (for example, on a bank statement).
        attr_reader :statement_descriptor
        # Current status of the PayoutIntent.
        attr_reader :status
        # Hash containing timestamps of when transitioned to a particular status.
        attr_reader :status_transitions
        # To which payout method the payout is sent.
        attr_reader :to

        def self.inner_class_types
          @inner_class_types = {
            estimated_fees: EstimatedFee,
            from: From,
            fx_quote: FxQuote,
            latest_payout: LatestPayout,
            next_action: NextAction,
            recipient_notification: RecipientNotification,
            recipient_verification: RecipientVerification,
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
