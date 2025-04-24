# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      # OutboundPaymentQuote represents a quote
      class OutboundPaymentQuote < APIResource
        class DeliveryOptions < Stripe::StripeObject
          # Open Enum. Method for bank account.
          sig { returns(T.nilable(String)) }
          attr_reader :bank_account
        end
        class EstimatedFee < Stripe::StripeObject
          # The fee amount for corresponding fee type.
          sig { returns(Stripe::V2::Amount) }
          attr_reader :amount
          # The fee type.
          sig { returns(String) }
          attr_reader :type
        end
        class From < Stripe::StripeObject
          # The monetary amount debited from the sender, only set on responses.
          sig { returns(Stripe::V2::Amount) }
          attr_reader :debited
          # The FinancialAccount that funds were pulled from.
          sig { returns(String) }
          attr_reader :financial_account
        end
        class FxQuote < Stripe::StripeObject
          class Rates < Stripe::StripeObject
            # The exchange rate going from_currency -> to_currency.
            sig { returns(String) }
            attr_reader :exchange_rate
          end
          # The duration the exchange rate lock remains valid from creation time. Allowed value is five_minutes.
          sig { returns(String) }
          attr_reader :lock_duration
          # Time at which the rate lock will expire, measured in seconds since the Unix epoch.
          sig { returns(String) }
          attr_reader :lock_expires_at
          # Lock status of the quote. Transitions from active to expired once past the lock_expires_at timestamp. Value can be active or expired.
          sig { returns(String) }
          attr_reader :lock_status
          # Key pair: from currency Value: exchange rate going from_currency -> to_currency.
          sig { returns(T::Hash[String, Rates]) }
          attr_reader :rates
          # The currency that the transaction is exchanging to.
          sig { returns(String) }
          attr_reader :to_currency
        end
        class To < Stripe::StripeObject
          # The monetary amount being credited to the destination.
          sig { returns(Stripe::V2::Amount) }
          attr_reader :credited
          # The payout method which the OutboundPayment uses to send payout.
          sig { returns(String) }
          attr_reader :payout_method
          # To which account the OutboundPayment is sent.
          sig { returns(String) }
          attr_reader :recipient
        end
        # The "presentment amount" for the OutboundPaymentQuote.
        sig { returns(Stripe::V2::Amount) }
        attr_reader :amount
        # Time at which the OutboundPaymentQuote was created.
        # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
        sig { returns(String) }
        attr_reader :created
        # Delivery options to be used to send the OutboundPayment.
        sig { returns(T.nilable(DeliveryOptions)) }
        attr_reader :delivery_options
        # The estimated fees for the OutboundPaymentQuote.
        sig { returns(T::Array[EstimatedFee]) }
        attr_reader :estimated_fees
        # Details about the sender of an OutboundPaymentQuote.
        sig { returns(From) }
        attr_reader :from
        # The underlying FXQuote details for the OutboundPaymentQuote.
        sig { returns(FxQuote) }
        attr_reader :fx_quote
        # Unique identifier for the OutboundPaymentQuote.
        sig { returns(String) }
        attr_reader :id
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        attr_reader :object
        # Details about the recipient of an OutboundPaymentQuote.
        sig { returns(To) }
        attr_reader :to
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        attr_reader :livemode
      end
    end
  end
end