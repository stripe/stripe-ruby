# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class OutboundPaymentCreateParams < ::Stripe::RequestParams
        class DeliveryOptions < ::Stripe::RequestParams
          # Open Enum. Method for bank account.
          sig { returns(T.nilable(String)) }
          def bank_account; end
          sig { params(_bank_account: T.nilable(String)).returns(T.nilable(String)) }
          def bank_account=(_bank_account); end
          sig { params(bank_account: T.nilable(String)).void }
          def initialize(bank_account: nil); end
        end
        class From < ::Stripe::RequestParams
          # Describes the FinancialAmount's currency drawn from.
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
        class To < ::Stripe::RequestParams
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
          # To which account the OutboundPayment is sent.
          sig { returns(String) }
          def recipient; end
          sig { params(_recipient: String).returns(String) }
          def recipient=(_recipient); end
          sig {
            params(currency: T.nilable(String), payout_method: T.nilable(String), recipient: String).void
           }
          def initialize(currency: nil, payout_method: nil, recipient: nil); end
        end
        # The "presentment amount" to be sent to the recipient.
        sig { returns(::Stripe::V2::Amount) }
        def amount; end
        sig { params(_amount: ::Stripe::V2::Amount).returns(::Stripe::V2::Amount) }
        def amount=(_amount); end
        # Delivery options to be used to send the OutboundPayment.
        sig {
          returns(T.nilable(V2::MoneyManagement::OutboundPaymentCreateParams::DeliveryOptions))
         }
        def delivery_options; end
        sig {
          params(_delivery_options: T.nilable(V2::MoneyManagement::OutboundPaymentCreateParams::DeliveryOptions)).returns(T.nilable(V2::MoneyManagement::OutboundPaymentCreateParams::DeliveryOptions))
         }
        def delivery_options=(_delivery_options); end
        # An arbitrary string attached to the OutboundPayment. Often useful for displaying to users.
        sig { returns(T.nilable(String)) }
        def description; end
        sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
        def description=(_description); end
        # From which FinancialAccount and BalanceType to pull funds from.
        sig { returns(V2::MoneyManagement::OutboundPaymentCreateParams::From) }
        def from; end
        sig {
          params(_from: V2::MoneyManagement::OutboundPaymentCreateParams::From).returns(V2::MoneyManagement::OutboundPaymentCreateParams::From)
         }
        def from=(_from); end
        # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
         }
        def metadata=(_metadata); end
        # The quote for this OutboundPayment. Only required for countries with regulatory mandates to display fee estimates before OutboundPayment creation.
        sig { returns(T.nilable(String)) }
        def outbound_payment_quote; end
        sig { params(_outbound_payment_quote: T.nilable(String)).returns(T.nilable(String)) }
        def outbound_payment_quote=(_outbound_payment_quote); end
        # Details about the notification settings for the OutboundPayment recipient.
        sig {
          returns(T.nilable(V2::MoneyManagement::OutboundPaymentCreateParams::RecipientNotification))
         }
        def recipient_notification; end
        sig {
          params(_recipient_notification: T.nilable(V2::MoneyManagement::OutboundPaymentCreateParams::RecipientNotification)).returns(T.nilable(V2::MoneyManagement::OutboundPaymentCreateParams::RecipientNotification))
         }
        def recipient_notification=(_recipient_notification); end
        # To which payout method to send the OutboundPayment.
        sig { returns(V2::MoneyManagement::OutboundPaymentCreateParams::To) }
        def to; end
        sig {
          params(_to: V2::MoneyManagement::OutboundPaymentCreateParams::To).returns(V2::MoneyManagement::OutboundPaymentCreateParams::To)
         }
        def to=(_to); end
        sig {
          params(amount: ::Stripe::V2::Amount, delivery_options: T.nilable(V2::MoneyManagement::OutboundPaymentCreateParams::DeliveryOptions), description: T.nilable(String), from: V2::MoneyManagement::OutboundPaymentCreateParams::From, metadata: T.nilable(T::Hash[String, String]), outbound_payment_quote: T.nilable(String), recipient_notification: T.nilable(V2::MoneyManagement::OutboundPaymentCreateParams::RecipientNotification), to: V2::MoneyManagement::OutboundPaymentCreateParams::To).void
         }
        def initialize(
          amount: nil,
          delivery_options: nil,
          description: nil,
          from: nil,
          metadata: nil,
          outbound_payment_quote: nil,
          recipient_notification: nil,
          to: nil
        ); end
      end
    end
  end
end