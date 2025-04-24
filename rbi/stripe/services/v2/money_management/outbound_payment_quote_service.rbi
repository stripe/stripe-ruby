# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class OutboundPaymentQuoteService < StripeService
        class CreateParams < Stripe::RequestParams
          class DeliveryOptions < Stripe::RequestParams
            # Open Enum. Method for bank account.
            sig { returns(T.nilable(String)) }
            attr_accessor :bank_account
            sig { params(bank_account: T.nilable(String)).void }
            def initialize(bank_account: nil); end
          end
          class From < Stripe::RequestParams
            # Describes the FinancialAccount's currency drawn from.
            sig { returns(String) }
            attr_accessor :currency
            # The FinancialAccount that funds were pulled from.
            sig { returns(String) }
            attr_accessor :financial_account
            sig { params(currency: String, financial_account: String).void }
            def initialize(currency: nil, financial_account: nil); end
          end
          class To < Stripe::RequestParams
            # Describes the currency to send to the recipient.
            # If included, this currency must match a currency supported by the destination.
            # Can be omitted in the following cases:
            # - destination only supports one currency
            # - destination supports multiple currencies and one of the currencies matches the FA currency
            # - destination supports multiple currencies and one of the currencies matches the presentment currency
            # Note - when both FA currency and presentment currency are supported, we pick the FA currency to minimize FX.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency
            # The payout method which the OutboundPayment uses to send payout.
            sig { returns(T.nilable(String)) }
            attr_accessor :payout_method
            # To which account the OutboundPayment is sent.
            sig { returns(String) }
            attr_accessor :recipient
            sig {
              params(currency: T.nilable(String), payout_method: T.nilable(String), recipient: String).void
             }
            def initialize(currency: nil, payout_method: nil, recipient: nil); end
          end
          # The "presentment amount" to be sent to the recipient.
          sig { returns(Stripe::V2::Amount) }
          attr_accessor :amount
          # Method to be used to send the OutboundPayment.
          sig {
            returns(T.nilable(::Stripe::V2::MoneyManagement::OutboundPaymentQuoteService::CreateParams::DeliveryOptions))
           }
          attr_accessor :delivery_options
          # Request details about the sender of an OutboundPaymentQuote.
          sig {
            returns(::Stripe::V2::MoneyManagement::OutboundPaymentQuoteService::CreateParams::From)
           }
          attr_accessor :from
          # Request details about the recipient of an OutboundPaymentQuote.
          sig {
            returns(::Stripe::V2::MoneyManagement::OutboundPaymentQuoteService::CreateParams::To)
           }
          attr_accessor :to
          sig {
            params(amount: Stripe::V2::Amount, delivery_options: T.nilable(::Stripe::V2::MoneyManagement::OutboundPaymentQuoteService::CreateParams::DeliveryOptions), from: ::Stripe::V2::MoneyManagement::OutboundPaymentQuoteService::CreateParams::From, to: ::Stripe::V2::MoneyManagement::OutboundPaymentQuoteService::CreateParams::To).void
           }
          def initialize(amount: nil, delivery_options: nil, from: nil, to: nil); end
        end
        class RetrieveParams < Stripe::RequestParams

        end
        # Creates an OutboundPaymentQuote usable in an OutboundPayment.
        #
        # ** raises FeatureNotEnabledError
        sig {
          params(params: T.any(::Stripe::V2::MoneyManagement::OutboundPaymentQuoteService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::MoneyManagement::OutboundPaymentQuote)
         }
        def create(params = {}, opts = {}); end

        # Retrieves the details of an existing OutboundPaymentQuote by passing the unique OutboundPaymentQuote ID.
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::OutboundPaymentQuoteService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::MoneyManagement::OutboundPaymentQuote)
         }
        def retrieve(id, params = {}, opts = {}); end
      end
    end
  end
end