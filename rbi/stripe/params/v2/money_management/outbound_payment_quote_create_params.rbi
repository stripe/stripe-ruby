# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class OutboundPaymentQuoteCreateParams < ::Stripe::RequestParams
        class Amount < ::Stripe::RequestParams
          # A non-negative integer representing how much to charge in the [smallest currency unit](https://docs.stripe.com/currencies#minor-units).
          sig { returns(T.nilable(Integer)) }
          def value; end
          sig { params(_value: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def value=(_value); end
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(T.nilable(String)) }
          def currency; end
          sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_currency); end
          sig { params(value: T.nilable(Integer), currency: T.nilable(String)).void }
          def initialize(value: nil, currency: nil); end
        end
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
        sig { returns(::Stripe::V2::MoneyManagement::OutboundPaymentQuoteCreateParams::Amount) }
        def amount; end
        sig {
          params(_amount: ::Stripe::V2::MoneyManagement::OutboundPaymentQuoteCreateParams::Amount).returns(::Stripe::V2::MoneyManagement::OutboundPaymentQuoteCreateParams::Amount)
         }
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
          params(amount: ::Stripe::V2::MoneyManagement::OutboundPaymentQuoteCreateParams::Amount, delivery_options: T.nilable(::Stripe::V2::MoneyManagement::OutboundPaymentQuoteCreateParams::DeliveryOptions), from: ::Stripe::V2::MoneyManagement::OutboundPaymentQuoteCreateParams::From, to: ::Stripe::V2::MoneyManagement::OutboundPaymentQuoteCreateParams::To).void
         }
        def initialize(amount: nil, delivery_options: nil, from: nil, to: nil); end
      end
    end
  end
end