# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # The FX Quotes API provides three functions:
  # - View Stripe's current exchange rate for any given currency pair.
  # - Extend quoted rates for a 1-hour period or a 24-hour period, minimizing uncertainty from FX fluctuations.
  # - Preview the FX fees Stripe will charge on your FX transaction, allowing you to anticipate specific settlement amounts before payment costs.
  #
  # [View the docs](https://docs.stripe.com/payments/currencies/localize-prices/fx-quotes-api)
  class FxQuote < APIResource
    class Rates < Stripe::StripeObject
      class RateDetails < Stripe::StripeObject
        # The rate for the currency pair.
        sig { returns(Float) }
        def base_rate; end
        # The fee for locking the conversion rates.
        sig { returns(Float) }
        def duration_premium; end
        # The FX fee for the currency pair.
        sig { returns(Float) }
        def fx_fee_rate; end
        # A reference rate for the currency pair provided by the reference rate provider.
        sig { returns(T.nilable(Float)) }
        def reference_rate; end
        # The reference rate provider.
        sig { returns(T.nilable(String)) }
        def reference_rate_provider; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # The rate that includes the FX fee rate.
      sig { returns(Float) }
      def exchange_rate; end
      # Attribute for field rate_details
      sig { returns(RateDetails) }
      def rate_details; end
      def self.inner_class_types
        @inner_class_types = {rate_details: RateDetails}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    class Usage < Stripe::StripeObject
      class Payment < Stripe::StripeObject
        # The Stripe account ID that the funds will be transferred to.
        #
        # This field should match the account ID that would be used in the PaymentIntent’s transfer_data[destination] field.
        sig { returns(T.nilable(String)) }
        def destination; end
        # The Stripe account ID that these funds are intended for.
        #
        # This field must match the account ID that would be used in the PaymentIntent’s on_behalf_of field.
        sig { returns(T.nilable(String)) }
        def on_behalf_of; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class Transfer < Stripe::StripeObject
        # The Stripe account ID that the funds will be transferred to.
        #
        # This field should match the account ID that would be used in the Transfer’s destination field.
        sig { returns(String) }
        def destination; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # The details required to use an FX Quote for a payment
      sig { returns(T.nilable(Payment)) }
      def payment; end
      # The details required to use an FX Quote for a transfer
      sig { returns(T.nilable(Transfer)) }
      def transfer; end
      # The transaction type for which the FX Quote will be used.
      #
      # Can be 'payment' or 'transfer'.
      sig { returns(String) }
      def type; end
      def self.inner_class_types
        @inner_class_types = {payment: Payment, transfer: Transfer}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    # Time at which the quote was created, measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    def created; end
    # Unique identifier for the object.
    sig { returns(String) }
    def id; end
    # The duration the exchange rate quote remains valid from creation time. Allowed values are none, hour, and day. Note that for the test mode API available in alpha, you can request an extended quote, but it won't be usable for any transactions.
    sig { returns(String) }
    def lock_duration; end
    # Time at which the quote will expire, measured in seconds since the Unix epoch.
    #
    # If lock_duration is set to ‘none’ this field will be set to null.
    sig { returns(T.nilable(Integer)) }
    def lock_expires_at; end
    # Lock status of the quote. Transitions from active to expired once past the lock_expires_at timestamp.
    #
    # Can return value none, active, or expired.
    sig { returns(String) }
    def lock_status; end
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    def object; end
    # Information about the rates.
    sig { returns(T::Hash[String, Rates]) }
    def rates; end
    # The currency to convert into, typically this is the currency that you want to settle to your Stripe balance. Three-letter ISO currency code, in lowercase. Must be a supported currency.
    sig { returns(String) }
    def to_currency; end
    # Attribute for field usage
    sig { returns(Usage) }
    def usage; end
    # Creates an FX Quote object
    sig {
      params(params: T.any(::Stripe::FxQuoteCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::FxQuote)
     }
    def self.create(params = {}, opts = {}); end

    # Returns a list of FX quotes that have been issued. The FX quotes are returned in sorted order, with the most recent FX quotes appearing first.
    sig {
      params(params: T.any(::Stripe::FxQuoteListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def self.list(params = {}, opts = {}); end
  end
end