# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class OutboundPaymentQuoteService < StripeService
        class CreateParams < Stripe::RequestParams
          class DeliveryOptions < Stripe::RequestParams
            # Open Enum. Method for bank account.
            attr_accessor :bank_account
            def initialize(bank_account: nil)
              @bank_account = bank_account
            end
          end
          class From < Stripe::RequestParams
            # Describes the FinancialAccount's currency drawn from.
            attr_accessor :currency
            # The FinancialAccount that funds were pulled from.
            attr_accessor :financial_account
            def initialize(currency: nil, financial_account: nil)
              @currency = currency
              @financial_account = financial_account
            end
          end
          class To < Stripe::RequestParams
            # Describes the currency to send to the recipient.
            # If included, this currency must match a currency supported by the destination.
            # Can be omitted in the following cases:
            # - destination only supports one currency
            # - destination supports multiple currencies and one of the currencies matches the FA currency
            # - destination supports multiple currencies and one of the currencies matches the presentment currency
            # Note - when both FA currency and presentment currency are supported, we pick the FA currency to minimize FX.
            attr_accessor :currency
            # The payout method which the OutboundPayment uses to send payout.
            attr_accessor :payout_method
            # To which account the OutboundPayment is sent.
            attr_accessor :recipient
            def initialize(currency: nil, payout_method: nil, recipient: nil)
              @currency = currency
              @payout_method = payout_method
              @recipient = recipient
            end
          end
          # The "presentment amount" to be sent to the recipient.
          attr_accessor :amount
          # Method to be used to send the OutboundPayment.
          attr_accessor :delivery_options
          # Request details about the sender of an OutboundPaymentQuote.
          attr_accessor :from
          # Request details about the recipient of an OutboundPaymentQuote.
          attr_accessor :to
          def initialize(amount: nil, delivery_options: nil, from: nil, to: nil)
            @amount = amount
            @delivery_options = delivery_options
            @from = from
            @to = to
          end
        end
        class RetrieveParams < Stripe::RequestParams; end
        # Creates an OutboundPaymentQuote usable in an OutboundPayment.
        #
        # ** raises FeatureNotEnabledError
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: '/v2/money_management/outbound_payment_quotes',
            params: params,
            opts: opts,
            base_address: :api,
          )
        end

        # Retrieves the details of an existing OutboundPaymentQuote by passing the unique OutboundPaymentQuote ID.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format('/v2/money_management/outbound_payment_quotes/%<id>s', {:id => CGI.escape(id)}),
            params: params,
            opts: opts,
            base_address: :api,
          )
        end
      end
    end
  end
end