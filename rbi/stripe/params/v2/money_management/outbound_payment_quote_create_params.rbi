# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class OutboundPaymentQuoteCreateParams < ::Stripe::RequestParams
        class DeliveryOptions < ::Stripe::RequestParams
          # Open Enum. Method for bank account.
          sig { returns(T.nilable(String)) }
          def bank_account; end
          sig { params(_bank_account: T.nilable(String)).returns(T.nilable(String)) }
          def bank_account=(_bank_account); end
          # Open Enum. Speed of the payout.
          sig { returns(T.nilable(String)) }
          def speed; end
          sig { params(_speed: T.nilable(String)).returns(T.nilable(String)) }
          def speed=(_speed); end
          sig { params(bank_account: T.nilable(String), speed: T.nilable(String)).void }
          def initialize(bank_account: nil, speed: nil); end
        end
        class From < ::Stripe::RequestParams
          # Describes the FinancialAccount's currency drawn from.
          sig { returns(String) }
          def currency; end
          sig { params(_currency: String).returns(String) }
          def currency=(_currency); end
          # The FinancialAccount that funds were pulled from.
          sig { returns(String) }
          def financial_account; end
          sig { params(_financial_account: String).returns(String) }
          def financial_account=(_financial_account); end
          sig { params(currency: String, financial_account: String).void }
          def initialize(currency: nil, financial_account: nil); end
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
                  returns(T.nilable(::Stripe::V2::MoneyManagement::OutboundPaymentQuoteCreateParams::To::PayoutMethodOptions::BankAccount::PreferredNetworkOptions::Ach))
                 }
                def ach; end
                sig {
                  params(_ach: T.nilable(::Stripe::V2::MoneyManagement::OutboundPaymentQuoteCreateParams::To::PayoutMethodOptions::BankAccount::PreferredNetworkOptions::Ach)).returns(T.nilable(::Stripe::V2::MoneyManagement::OutboundPaymentQuoteCreateParams::To::PayoutMethodOptions::BankAccount::PreferredNetworkOptions::Ach))
                 }
                def ach=(_ach); end
                sig {
                  params(ach: T.nilable(::Stripe::V2::MoneyManagement::OutboundPaymentQuoteCreateParams::To::PayoutMethodOptions::BankAccount::PreferredNetworkOptions::Ach)).void
                 }
                def initialize(ach: nil); end
              end
              # Per-network configuration options.
              sig {
                returns(T.nilable(::Stripe::V2::MoneyManagement::OutboundPaymentQuoteCreateParams::To::PayoutMethodOptions::BankAccount::PreferredNetworkOptions))
               }
              def preferred_network_options; end
              sig {
                params(_preferred_network_options: T.nilable(::Stripe::V2::MoneyManagement::OutboundPaymentQuoteCreateParams::To::PayoutMethodOptions::BankAccount::PreferredNetworkOptions)).returns(T.nilable(::Stripe::V2::MoneyManagement::OutboundPaymentQuoteCreateParams::To::PayoutMethodOptions::BankAccount::PreferredNetworkOptions))
               }
              def preferred_network_options=(_preferred_network_options); end
              # The preferred networks to use for this OutboundPayment.
              sig { returns(T::Array[String]) }
              def preferred_networks; end
              sig { params(_preferred_networks: T::Array[String]).returns(T::Array[String]) }
              def preferred_networks=(_preferred_networks); end
              sig {
                params(preferred_network_options: T.nilable(::Stripe::V2::MoneyManagement::OutboundPaymentQuoteCreateParams::To::PayoutMethodOptions::BankAccount::PreferredNetworkOptions), preferred_networks: T::Array[String]).void
               }
              def initialize(preferred_network_options: nil, preferred_networks: nil); end
            end
            # Options for bank account payout methods.
            sig {
              returns(T.nilable(::Stripe::V2::MoneyManagement::OutboundPaymentQuoteCreateParams::To::PayoutMethodOptions::BankAccount))
             }
            def bank_account; end
            sig {
              params(_bank_account: T.nilable(::Stripe::V2::MoneyManagement::OutboundPaymentQuoteCreateParams::To::PayoutMethodOptions::BankAccount)).returns(T.nilable(::Stripe::V2::MoneyManagement::OutboundPaymentQuoteCreateParams::To::PayoutMethodOptions::BankAccount))
             }
            def bank_account=(_bank_account); end
            sig {
              params(bank_account: T.nilable(::Stripe::V2::MoneyManagement::OutboundPaymentQuoteCreateParams::To::PayoutMethodOptions::BankAccount)).void
             }
            def initialize(bank_account: nil); end
          end
          # Describes the currency to send to the recipient.
          # If included, this currency must match a currency supported by the destination.
          # Can be omitted in the following cases:
          # - destination only supports one currency
          # - destination supports multiple currencies and one of the currencies matches the FA currency
          # - destination supports multiple currencies and one of the currencies matches the presentment currency
          # Note - when both FA currency and presentment currency are supported, we pick the FA currency to minimize FX.
          sig { returns(T.nilable(String)) }
          def currency; end
          sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_currency); end
          # The payout method which the OutboundPayment uses to send payout.
          sig { returns(T.nilable(String)) }
          def payout_method; end
          sig { params(_payout_method: T.nilable(String)).returns(T.nilable(String)) }
          def payout_method=(_payout_method); end
          # Payout method options for the OutboundPaymentQuote.
          sig {
            returns(T.nilable(::Stripe::V2::MoneyManagement::OutboundPaymentQuoteCreateParams::To::PayoutMethodOptions))
           }
          def payout_method_options; end
          sig {
            params(_payout_method_options: T.nilable(::Stripe::V2::MoneyManagement::OutboundPaymentQuoteCreateParams::To::PayoutMethodOptions)).returns(T.nilable(::Stripe::V2::MoneyManagement::OutboundPaymentQuoteCreateParams::To::PayoutMethodOptions))
           }
          def payout_method_options=(_payout_method_options); end
          # To which account the OutboundPayment is sent.
          sig { returns(String) }
          def recipient; end
          sig { params(_recipient: String).returns(String) }
          def recipient=(_recipient); end
          sig {
            params(currency: T.nilable(String), payout_method: T.nilable(String), payout_method_options: T.nilable(::Stripe::V2::MoneyManagement::OutboundPaymentQuoteCreateParams::To::PayoutMethodOptions), recipient: String).void
           }
          def initialize(
            currency: nil,
            payout_method: nil,
            payout_method_options: nil,
            recipient: nil
          ); end
        end
        # The "presentment amount" to be sent to the recipient.
        sig { returns(::Stripe::V2::Amount) }
        def amount; end
        sig { params(_amount: ::Stripe::V2::Amount).returns(::Stripe::V2::Amount) }
        def amount=(_amount); end
        # Method to be used to send the OutboundPayment.
        sig {
          returns(T.nilable(::Stripe::V2::MoneyManagement::OutboundPaymentQuoteCreateParams::DeliveryOptions))
         }
        def delivery_options; end
        sig {
          params(_delivery_options: T.nilable(::Stripe::V2::MoneyManagement::OutboundPaymentQuoteCreateParams::DeliveryOptions)).returns(T.nilable(::Stripe::V2::MoneyManagement::OutboundPaymentQuoteCreateParams::DeliveryOptions))
         }
        def delivery_options=(_delivery_options); end
        # Request details about the sender of an OutboundPaymentQuote.
        sig { returns(::Stripe::V2::MoneyManagement::OutboundPaymentQuoteCreateParams::From) }
        def from; end
        sig {
          params(_from: ::Stripe::V2::MoneyManagement::OutboundPaymentQuoteCreateParams::From).returns(::Stripe::V2::MoneyManagement::OutboundPaymentQuoteCreateParams::From)
         }
        def from=(_from); end
        # Request details about the recipient of an OutboundPaymentQuote.
        sig { returns(::Stripe::V2::MoneyManagement::OutboundPaymentQuoteCreateParams::To) }
        def to; end
        sig {
          params(_to: ::Stripe::V2::MoneyManagement::OutboundPaymentQuoteCreateParams::To).returns(::Stripe::V2::MoneyManagement::OutboundPaymentQuoteCreateParams::To)
         }
        def to=(_to); end
        sig {
          params(amount: ::Stripe::V2::Amount, delivery_options: T.nilable(::Stripe::V2::MoneyManagement::OutboundPaymentQuoteCreateParams::DeliveryOptions), from: ::Stripe::V2::MoneyManagement::OutboundPaymentQuoteCreateParams::From, to: ::Stripe::V2::MoneyManagement::OutboundPaymentQuoteCreateParams::To).void
         }
        def initialize(amount: nil, delivery_options: nil, from: nil, to: nil); end
      end
    end
  end
end