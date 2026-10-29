# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class PayoutIntentUpdateParams < ::Stripe::RequestParams
        class RecipientNotification < ::Stripe::RequestParams
          # Closed Enum. Configuration option to enable or disable notifications to recipients.
          # Do not send notifications when `setting` is `none`. Use the account setting when `setting` is `configured` or omitted.
          attr_accessor :setting

          def initialize(setting: nil)
            @setting = setting
          end
        end

        class ScheduleOptions < ::Stripe::RequestParams
          # The date when the payout should be executed, in YYYY-MM-DD format.
          attr_accessor :execute_on

          def initialize(execute_on: nil)
            @execute_on = execute_on
          end
        end

        class To < ::Stripe::RequestParams
          class PayoutMethodOptions < ::Stripe::RequestParams
            class BankAccount < ::Stripe::RequestParams
              class PreferredNetworkOptions < ::Stripe::RequestParams
                class Ach < ::Stripe::RequestParams
                  # Open Enum. ACH submission timing.
                  attr_accessor :submission
                  # The transaction purpose for this ACH payment.
                  attr_accessor :transaction_purpose

                  def initialize(submission: nil, transaction_purpose: nil)
                    @submission = submission
                    @transaction_purpose = transaction_purpose
                  end
                end
                # ACH-specific network options.
                attr_accessor :ach

                def initialize(ach: nil)
                  @ach = ach
                end
              end
              # Per-network configuration options.
              attr_accessor :preferred_network_options
              # The preferred networks to use for this PayoutIntent.
              attr_accessor :preferred_networks

              def initialize(preferred_network_options: nil, preferred_networks: nil)
                @preferred_network_options = preferred_network_options
                @preferred_networks = preferred_networks
              end
            end
            # Options for bank account payout methods.
            attr_accessor :bank_account

            def initialize(bank_account: nil)
              @bank_account = bank_account
            end
          end
          # The currency to send to the recipient.
          attr_accessor :currency
          # The payout method ID for the PayoutIntent. Optional when the PayoutIntent creates an OutboundPayment and the recipient has a default payout method. Required when the PayoutIntent creates an OutboundTransfer.
          attr_accessor :payout_method
          # Payout method options for the PayoutIntent.
          attr_accessor :payout_method_options
          # The recipient ID for the PayoutIntent.
          attr_accessor :recipient

          def initialize(
            currency: nil,
            payout_method: nil,
            payout_method_options: nil,
            recipient: nil
          )
            @currency = currency
            @payout_method = payout_method
            @payout_method_options = payout_method_options
            @recipient = recipient
          end
        end
        # An arbitrary string attached to the PayoutIntent. Often useful for displaying to users.
        attr_accessor :description
        # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        attr_accessor :metadata
        # Recipient notification settings for the PayoutIntent. Only applicable when the PayoutIntent creates an OutboundPayment.
        attr_accessor :recipient_notification
        # Scheduling options for the payout. If omitted, the payout is scheduled for immediate execution.
        attr_accessor :schedule_options
        # The description that appears on the receiving end for the payout (for example, on a bank statement).
        attr_accessor :statement_descriptor
        # To which payout method the payout is sent.
        attr_accessor :to

        def initialize(
          description: nil,
          metadata: nil,
          recipient_notification: nil,
          schedule_options: nil,
          statement_descriptor: nil,
          to: nil
        )
          @description = description
          @metadata = metadata
          @recipient_notification = recipient_notification
          @schedule_options = schedule_options
          @statement_descriptor = statement_descriptor
          @to = to
        end
      end
    end
  end
end
