# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class PayoutIntentCreateParams < ::Stripe::RequestParams
        class From < ::Stripe::RequestParams
          # The currency of the financial account.
          sig { returns(String) }
          def currency; end
          sig { params(_currency: String).returns(String) }
          def currency=(_currency); end
          # The FinancialAccount that funds are pulled from.
          sig { returns(String) }
          def financial_account; end
          sig { params(_financial_account: String).returns(String) }
          def financial_account=(_financial_account); end
          sig { params(currency: String, financial_account: String).void }
          def initialize(currency: nil, financial_account: nil); end
        end
        class RecipientNotification < ::Stripe::RequestParams
          # Closed Enum. Configuration option to enable or disable notifications to recipients.
          # Do not send notifications when setting is NONE. Default to account setting when setting is CONFIGURED or not set.
          sig { returns(String) }
          def setting; end
          sig { params(_setting: String).returns(String) }
          def setting=(_setting); end
          sig { params(setting: String).void }
          def initialize(setting: nil); end
        end
        class ScheduleOptions < ::Stripe::RequestParams
          # The date when the payout should be executed, in YYYY-MM-DD format.
          sig { returns(T.nilable(String)) }
          def execute_on; end
          sig { params(_execute_on: T.nilable(String)).returns(T.nilable(String)) }
          def execute_on=(_execute_on); end
          sig { params(execute_on: T.nilable(String)).void }
          def initialize(execute_on: nil); end
        end
        class To < ::Stripe::RequestParams
          class PayoutMethodOptions < ::Stripe::RequestParams
            class BankAccount < ::Stripe::RequestParams
              class PreferredNetworkOptions < ::Stripe::RequestParams
                class Ach < ::Stripe::RequestParams
                  # Open Enum. ACH submission timing.
                  sig { returns(T.nilable(String)) }
                  def submission; end
                  sig { params(_submission: T.nilable(String)).returns(T.nilable(String)) }
                  def submission=(_submission); end
                  # The transaction purpose for this ACH payment.
                  sig { returns(T.nilable(String)) }
                  def transaction_purpose; end
                  sig { params(_transaction_purpose: T.nilable(String)).returns(T.nilable(String)) }
                  def transaction_purpose=(_transaction_purpose); end
                  sig {
                    params(submission: T.nilable(String), transaction_purpose: T.nilable(String)).void
                   }
                  def initialize(submission: nil, transaction_purpose: nil); end
                end
                # ACH-specific network options.
                sig {
                  returns(T.nilable(::Stripe::V2::MoneyManagement::PayoutIntentCreateParams::To::PayoutMethodOptions::BankAccount::PreferredNetworkOptions::Ach))
                 }
                def ach; end
                sig {
                  params(_ach: T.nilable(::Stripe::V2::MoneyManagement::PayoutIntentCreateParams::To::PayoutMethodOptions::BankAccount::PreferredNetworkOptions::Ach)).returns(T.nilable(::Stripe::V2::MoneyManagement::PayoutIntentCreateParams::To::PayoutMethodOptions::BankAccount::PreferredNetworkOptions::Ach))
                 }
                def ach=(_ach); end
                sig {
                  params(ach: T.nilable(::Stripe::V2::MoneyManagement::PayoutIntentCreateParams::To::PayoutMethodOptions::BankAccount::PreferredNetworkOptions::Ach)).void
                 }
                def initialize(ach: nil); end
              end
              # Per-network configuration options.
              sig {
                returns(T.nilable(::Stripe::V2::MoneyManagement::PayoutIntentCreateParams::To::PayoutMethodOptions::BankAccount::PreferredNetworkOptions))
               }
              def preferred_network_options; end
              sig {
                params(_preferred_network_options: T.nilable(::Stripe::V2::MoneyManagement::PayoutIntentCreateParams::To::PayoutMethodOptions::BankAccount::PreferredNetworkOptions)).returns(T.nilable(::Stripe::V2::MoneyManagement::PayoutIntentCreateParams::To::PayoutMethodOptions::BankAccount::PreferredNetworkOptions))
               }
              def preferred_network_options=(_preferred_network_options); end
              # The preferred networks to use for this PayoutIntent.
              sig { returns(T::Array[String]) }
              def preferred_networks; end
              sig { params(_preferred_networks: T::Array[String]).returns(T::Array[String]) }
              def preferred_networks=(_preferred_networks); end
              sig {
                params(preferred_network_options: T.nilable(::Stripe::V2::MoneyManagement::PayoutIntentCreateParams::To::PayoutMethodOptions::BankAccount::PreferredNetworkOptions), preferred_networks: T::Array[String]).void
               }
              def initialize(preferred_network_options: nil, preferred_networks: nil); end
            end
            # Options for bank account payout methods.
            sig {
              returns(T.nilable(::Stripe::V2::MoneyManagement::PayoutIntentCreateParams::To::PayoutMethodOptions::BankAccount))
             }
            def bank_account; end
            sig {
              params(_bank_account: T.nilable(::Stripe::V2::MoneyManagement::PayoutIntentCreateParams::To::PayoutMethodOptions::BankAccount)).returns(T.nilable(::Stripe::V2::MoneyManagement::PayoutIntentCreateParams::To::PayoutMethodOptions::BankAccount))
             }
            def bank_account=(_bank_account); end
            sig {
              params(bank_account: T.nilable(::Stripe::V2::MoneyManagement::PayoutIntentCreateParams::To::PayoutMethodOptions::BankAccount)).void
             }
            def initialize(bank_account: nil); end
          end
          # The currency to send to the recipient.
          sig { returns(T.nilable(String)) }
          def currency; end
          sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_currency); end
          # The payout method ID. Optional for OutboundPayment if recipient has default payment method. Required for OutboundTransfer.
          sig { returns(T.nilable(String)) }
          def payout_method; end
          sig { params(_payout_method: T.nilable(String)).returns(T.nilable(String)) }
          def payout_method=(_payout_method); end
          # Payout method options for the PayoutIntent.
          sig {
            returns(T.nilable(::Stripe::V2::MoneyManagement::PayoutIntentCreateParams::To::PayoutMethodOptions))
           }
          def payout_method_options; end
          sig {
            params(_payout_method_options: T.nilable(::Stripe::V2::MoneyManagement::PayoutIntentCreateParams::To::PayoutMethodOptions)).returns(T.nilable(::Stripe::V2::MoneyManagement::PayoutIntentCreateParams::To::PayoutMethodOptions))
           }
          def payout_method_options=(_payout_method_options); end
          # The recipient ID. Only relevant for OutboundPayment.
          sig { returns(T.nilable(String)) }
          def recipient; end
          sig { params(_recipient: T.nilable(String)).returns(T.nilable(String)) }
          def recipient=(_recipient); end
          sig {
            params(currency: T.nilable(String), payout_method: T.nilable(String), payout_method_options: T.nilable(::Stripe::V2::MoneyManagement::PayoutIntentCreateParams::To::PayoutMethodOptions), recipient: T.nilable(String)).void
           }
          def initialize(
            currency: nil,
            payout_method: nil,
            payout_method_options: nil,
            recipient: nil
          ); end
        end
        # The monetary amount to be sent.
        sig { returns(::Stripe::V2::Amount) }
        def amount; end
        sig { params(_amount: ::Stripe::V2::Amount).returns(::Stripe::V2::Amount) }
        def amount=(_amount); end
        # An arbitrary string attached to the PayoutIntent. Often useful for displaying to users.
        sig { returns(T.nilable(String)) }
        def description; end
        sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
        def description=(_description); end
        # The FinancialAccount that funds are pulled from.
        sig { returns(::Stripe::V2::MoneyManagement::PayoutIntentCreateParams::From) }
        def from; end
        sig {
          params(_from: ::Stripe::V2::MoneyManagement::PayoutIntentCreateParams::From).returns(::Stripe::V2::MoneyManagement::PayoutIntentCreateParams::From)
         }
        def from=(_from); end
        # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
         }
        def metadata=(_metadata); end
        # Details about the OutboundPayment notification settings for recipient. Only applicable to OutboundPayment.
        sig {
          returns(T.nilable(::Stripe::V2::MoneyManagement::PayoutIntentCreateParams::RecipientNotification))
         }
        def recipient_notification; end
        sig {
          params(_recipient_notification: T.nilable(::Stripe::V2::MoneyManagement::PayoutIntentCreateParams::RecipientNotification)).returns(T.nilable(::Stripe::V2::MoneyManagement::PayoutIntentCreateParams::RecipientNotification))
         }
        def recipient_notification=(_recipient_notification); end
        # Scheduling options for the payout. If this is nil, we assume immediate execution.
        sig {
          returns(T.nilable(::Stripe::V2::MoneyManagement::PayoutIntentCreateParams::ScheduleOptions))
         }
        def schedule_options; end
        sig {
          params(_schedule_options: T.nilable(::Stripe::V2::MoneyManagement::PayoutIntentCreateParams::ScheduleOptions)).returns(T.nilable(::Stripe::V2::MoneyManagement::PayoutIntentCreateParams::ScheduleOptions))
         }
        def schedule_options=(_schedule_options); end
        # The description that appears on the receiving end for the payout (for example, on a bank statement).
        sig { returns(T.nilable(String)) }
        def statement_descriptor; end
        sig { params(_statement_descriptor: T.nilable(String)).returns(T.nilable(String)) }
        def statement_descriptor=(_statement_descriptor); end
        # To which payout method the payout is sent.
        sig { returns(::Stripe::V2::MoneyManagement::PayoutIntentCreateParams::To) }
        def to; end
        sig {
          params(_to: ::Stripe::V2::MoneyManagement::PayoutIntentCreateParams::To).returns(::Stripe::V2::MoneyManagement::PayoutIntentCreateParams::To)
         }
        def to=(_to); end
        sig {
          params(amount: ::Stripe::V2::Amount, description: T.nilable(String), from: ::Stripe::V2::MoneyManagement::PayoutIntentCreateParams::From, metadata: T.nilable(T::Hash[String, String]), recipient_notification: T.nilable(::Stripe::V2::MoneyManagement::PayoutIntentCreateParams::RecipientNotification), schedule_options: T.nilable(::Stripe::V2::MoneyManagement::PayoutIntentCreateParams::ScheduleOptions), statement_descriptor: T.nilable(String), to: ::Stripe::V2::MoneyManagement::PayoutIntentCreateParams::To).void
         }
        def initialize(
          amount: nil,
          description: nil,
          from: nil,
          metadata: nil,
          recipient_notification: nil,
          schedule_options: nil,
          statement_descriptor: nil,
          to: nil
        ); end
      end
    end
  end
end