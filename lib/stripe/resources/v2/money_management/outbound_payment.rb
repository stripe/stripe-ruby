# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      # OutboundPayment represents a single money movement from one FinancialAccount you own to a payout method someone else owns.
      class OutboundPayment < APIResource
        OBJECT_NAME = "v2.money_management.outbound_payment"
        def self.object_name
          "v2.money_management.outbound_payment"
        end

        class From < ::Stripe::StripeObject
          # The monetary amount debited from the sender, only set on responses.
          attr_reader :debited
          # The FinancialAccount that funds were pulled from.
          attr_reader :financial_account

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
          attr_reader :setting

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
            attr_reader :reason

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class Processing < ::Stripe::StripeObject
            # Open Enum. The `processing` status reason.
            attr_reader :reason

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class Returned < ::Stripe::StripeObject
            # Open Enum. The `returned` status reason.
            attr_reader :reason

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The `failed` status reason.
          attr_reader :failed
          # The `processing` status details.
          attr_reader :processing
          # The `returned` status reason.
          attr_reader :returned

          def self.inner_class_types
            @inner_class_types = { failed: Failed, processing: Processing, returned: Returned }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class StatusTransitions < ::Stripe::StripeObject
          # Timestamp describing when an OutboundPayment changed status to `canceled`.
          # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
          attr_reader :canceled_at
          # Timestamp describing when an OutboundPayment changed status to `failed`.
          # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
          attr_reader :failed_at
          # Timestamp describing when an OutboundPayment changed status to `posted`.
          # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
          attr_reader :posted_at
          # Timestamp describing when an OutboundPayment changed status to `returned`.
          # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
          attr_reader :returned_at

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
              # The preferred networks to use for this OutboundPayment.
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
          # The monetary amount being credited to the destination.
          attr_reader :credited
          # The payout method which the OutboundPayment uses to send payout.
          attr_reader :payout_method
          # Payout method options for the OutboundPayment.
          attr_reader :payout_method_options
          # To which account the OutboundPayment is sent.
          attr_reader :recipient

          def self.inner_class_types
            @inner_class_types = { payout_method_options: PayoutMethodOptions }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class TrackingDetails < ::Stripe::StripeObject
          class BankAccount < ::Stripe::StripeObject
            # A unique identifier that can be used to track this OutboundPayment with the recipient bank. Banks might call this a “reference number” or something similar.
            attr_reader :trace_id

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class Card < ::Stripe::StripeObject
            # A unique identifier that can be used to track this OutboundPayment with the recipient card.
            attr_reader :retrieval_reference

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Bank account tracking details.
          attr_reader :bank_account
          # Card tracking details.
          attr_reader :card
          # The status of the tracking details for this OutboundPayment.
          attr_reader :status
          # The type of tracking details for this OutboundPayment.
          attr_reader :type

          def self.inner_class_types
            @inner_class_types = { bank_account: BankAccount, card: Card }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The amount and currency requested for this OutboundPayment.
        attr_reader :amount
        # Returns true if the OutboundPayment can be canceled, and false otherwise.
        attr_reader :cancelable
        # Time at which the OutboundPayment was created.
        # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
        attr_reader :created
        # An arbitrary string attached to the OutboundPayment. Often useful for displaying to users.
        attr_reader :description
        # The date when funds are expected to arrive in the payout method. This field is not set if the payout method is in a `failed`, `canceled`, or `returned` state.
        # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
        attr_reader :expected_arrival_date
        # The FinancialAccount that funds were pulled from.
        attr_reader :from
        # Unique identifier for the OutboundPayment.
        attr_reader :id
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        attr_reader :metadata
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # The PayoutIntent ID that triggered this OutboundPayment.
        attr_reader :payout_intent
        # Details about the OutboundPayment notification settings for recipient.
        attr_reader :recipient_notification
        # The ID of the RecipientVerification for this OutboundPayment. Required where recipient-name verification is mandated before creating an OutboundPayment.
        attr_reader :recipient_verification
        # The description that appears on the receiving end of an OutboundPayment (for example, on a bank statement). Defaults to `STRIPE` if not configured in the account settings.
        attr_reader :statement_descriptor
        # Current status of the OutboundPayment.
        # An OutboundPayment is `processing` after creation. It becomes `posted` when funds leave the account,
        # `failed` if it cannot be sent, `canceled` if canceled before posting, or `returned` if the funds are returned.
        attr_reader :status
        # Status details for an OutboundPayment in a `processing`, `failed`, or `returned` state.
        attr_reader :status_details
        # Hash containing timestamps of when the object transitioned to a particular status.
        attr_reader :status_transitions
        # To which payout method the OutboundPayment was sent.
        attr_reader :to
        # Information to track this OutboundPayment with the recipient bank.
        attr_reader :tracking_details

        def self.inner_class_types
          @inner_class_types = {
            from: From,
            recipient_notification: RecipientNotification,
            status_details: StatusDetails,
            status_transitions: StatusTransitions,
            to: To,
            tracking_details: TrackingDetails,
          }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
