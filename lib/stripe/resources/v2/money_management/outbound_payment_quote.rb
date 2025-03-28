# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      # OutboundPaymentQuote represents a quote
      class OutboundPaymentQuote < APIResource
        OBJECT_NAME = "v2.money_management.outbound_payment_quote"
        def self.object_name
          "v2.money_management.outbound_payment_quote"
        end

        class DeliveryOptions < Stripe::StripeObject
          # Open Enum. Method for bank account.
          attr_reader :bank_account
        end

        class EstimatedFee < Stripe::StripeObject
          # The fee amount for corresponding fee type.
          attr_reader :amount
          # The fee type.
          attr_reader :type
        end

        class From < Stripe::StripeObject
          # The monetary amount debited from the sender, only set on responses.
          attr_reader :debited
          # The FinancialAccount that funds were pulled from.
          attr_reader :financial_account
        end

        class FxQuote < Stripe::StripeObject
          class Rates < Stripe::StripeObject
            # The exchange rate going from_currency -> to_currency.
            attr_reader :exchange_rate
          end
          # Key pair: from currency Value: exchange rate going from_currency -> to_currency.
          attr_reader :rates
          # The currency that the transaction is exchanging to.
          attr_reader :to_currency
        end

        class To < Stripe::StripeObject
          # The monetary amount being credited to the destination.
          attr_reader :credited
          # The payout method which the OutboundPayment uses to send payout.
          attr_reader :payout_method
          # To which account the OutboundPayment is sent.
          attr_reader :recipient
        end
        # The "presentment amount" for the OutboundPaymentQuote.
        attr_reader :amount
        # Time at which the OutboundPaymentQuote was created.
        # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
        attr_reader :created
        # Delivery options to be used to send the OutboundPayment.
        attr_reader :delivery_options
        # The estimated fees for the OutboundPaymentQuote.
        attr_reader :estimated_fees
        # Details about the sender of an OutboundPaymentQuote.
        attr_reader :from
        # The underlying FXQuote details for the OutboundPaymentQuote.
        attr_reader :fx_quote
        # Unique identifier for the OutboundPaymentQuote.
        attr_reader :id
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # Details about the recipient of an OutboundPaymentQuote.
        attr_reader :to
      end
    end
  end
end
