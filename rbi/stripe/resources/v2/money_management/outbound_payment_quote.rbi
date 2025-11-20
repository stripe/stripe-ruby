# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      # OutboundPaymentQuote represents a quote that provides fee and amount estimates for OutboundPayment.
      class OutboundPaymentQuote < APIResource
        class Amount < ::Stripe::StripeObject
          # A non-negative integer representing how much to charge in the [smallest currency unit](https://docs.stripe.com/currencies#minor-units).
          sig { returns(T.nilable(Integer)) }
          def value; end
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(T.nilable(String)) }
          def currency; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class DeliveryOptions < ::Stripe::StripeObject
          # Open Enum. Method for bank account.
          sig { returns(T.nilable(String)) }
          def bank_account; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class EstimatedFee < ::Stripe::StripeObject
          class Amount < ::Stripe::StripeObject
            # A non-negative integer representing how much to charge in the [smallest currency unit](https://docs.stripe.com/currencies#minor-units).
            sig { returns(T.nilable(Integer)) }
            def value; end
            # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            sig { returns(T.nilable(String)) }
            def currency; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The fee amount for corresponding fee type.
          sig { returns(Amount) }
          def amount; end
          # The fee type.
          sig { returns(String) }
          def type; end
          def self.inner_class_types
            @inner_class_types = {amount: Amount}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class From < ::Stripe::StripeObject
          class Debited < ::Stripe::StripeObject
            # A non-negative integer representing how much to charge in the [smallest currency unit](https://docs.stripe.com/currencies#minor-units).
            sig { returns(T.nilable(Integer)) }
            def value; end
            # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            sig { returns(T.nilable(String)) }
            def currency; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The monetary amount debited from the sender, only set on responses.
          sig { returns(Debited) }
          def debited; end
          # The FinancialAccount that funds were pulled from.
          sig { returns(String) }
          def financial_account; end
          def self.inner_class_types
            @inner_class_types = {debited: Debited}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class FxQuote < ::Stripe::StripeObject
          class Rates < ::Stripe::StripeObject
            # The exchange rate going from_currency -> to_currency.
            sig { returns(String) }
            def exchange_rate; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The duration the exchange rate lock remains valid from creation time. Allowed value is five_minutes or none.
          sig { returns(String) }
          def lock_duration; end
          # Time at which the rate lock will expire, measured in seconds since the Unix epoch. Null when rate locking is not supported.
          sig { returns(T.nilable(String)) }
          def lock_expires_at; end
          # Lock status of the quote. Transitions from active to expired once past the lock_expires_at timestamp. Value can be active, expired or none.
          sig { returns(String) }
          def lock_status; end
          # Key pair: from currency Value: exchange rate going from_currency -> to_currency.
          sig { returns(T::Hash[String, Rates]) }
          def rates; end
          # The currency that the transaction is exchanging to.
          sig { returns(String) }
          def to_currency; end
          def self.inner_class_types
            @inner_class_types = {rates: Rates}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class To < ::Stripe::StripeObject
          class Credited < ::Stripe::StripeObject
            # A non-negative integer representing how much to charge in the [smallest currency unit](https://docs.stripe.com/currencies#minor-units).
            sig { returns(T.nilable(Integer)) }
            def value; end
            # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            sig { returns(T.nilable(String)) }
            def currency; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The monetary amount being credited to the destination.
          sig { returns(Credited) }
          def credited; end
          # The payout method which the OutboundPayment uses to send payout.
          sig { returns(String) }
          def payout_method; end
          # To which account the OutboundPayment is sent.
          sig { returns(String) }
          def recipient; end
          def self.inner_class_types
            @inner_class_types = {credited: Credited}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The "presentment amount" for the OutboundPaymentQuote.
        sig { returns(Amount) }
        def amount; end
        # Time at which the OutboundPaymentQuote was created.
        # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
        sig { returns(String) }
        def created; end
        # Delivery options to be used to send the OutboundPayment.
        sig { returns(T.nilable(DeliveryOptions)) }
        def delivery_options; end
        # The estimated fees for the OutboundPaymentQuote.
        sig { returns(T::Array[EstimatedFee]) }
        def estimated_fees; end
        # Details about the sender of an OutboundPaymentQuote.
        sig { returns(From) }
        def from; end
        # The underlying FXQuote details for the OutboundPaymentQuote.
        sig { returns(FxQuote) }
        def fx_quote; end
        # Unique identifier for the OutboundPaymentQuote.
        sig { returns(String) }
        def id; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # Details about the recipient of an OutboundPaymentQuote.
        sig { returns(To) }
        def to; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
      end
    end
  end
end