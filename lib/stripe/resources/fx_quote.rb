# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # The FX Quotes API provides three functions:
  # - View Stripe's current exchange rate for any given currency pair.
  # - Extend quoted rates for a 1-hour period or a 24-hour period, minimizing uncertainty from FX fluctuations.
  # - Preview the FX fees Stripe will charge on your FX transaction, allowing you to anticipate specific settlement amounts before payment costs.
  #
  # [View the docs](https://docs.stripe.com/payments/currencies/localize-prices/fx-quotes-api)
  class FxQuote < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List

    OBJECT_NAME = "fx_quote"
    def self.object_name
      "fx_quote"
    end

    class Rates < ::Stripe::StripeObject
      class RateDetails < ::Stripe::StripeObject
        # The rate for the currency pair.
        attr_reader :base_rate
        # The fee for locking the conversion rates.
        attr_reader :duration_premium
        # The FX fee for the currency pair.
        attr_reader :fx_fee_rate
        # A reference rate for the currency pair provided by the reference rate provider.
        attr_reader :reference_rate
        # The reference rate provider.
        attr_reader :reference_rate_provider

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
      # The rate that includes the FX fee rate.
      attr_reader :exchange_rate
      # Attribute for field rate_details
      attr_reader :rate_details

      def self.inner_class_types
        @inner_class_types = { rate_details: RateDetails }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end

    class Usage < ::Stripe::StripeObject
      class Payment < ::Stripe::StripeObject
        # The Stripe account ID that the funds will be transferred to.
        #
        # This field should match the account ID that would be used in the PaymentIntent’s transfer_data[destination] field.
        attr_reader :destination
        # The Stripe account ID that these funds are intended for.
        #
        # This field must match the account ID that would be used in the PaymentIntent’s on_behalf_of field.
        attr_reader :on_behalf_of

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class Transfer < ::Stripe::StripeObject
        # The Stripe account ID that the funds will be transferred to.
        #
        # This field should match the account ID that would be used in the Transfer’s destination field.
        attr_reader :destination

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
      # The details required to use an FX Quote for a payment
      attr_reader :payment
      # The details required to use an FX Quote for a transfer
      attr_reader :transfer
      # The transaction type for which the FX Quote will be used.
      #
      # Can be 'payment' or 'transfer'.
      attr_reader :type

      def self.inner_class_types
        @inner_class_types = { payment: Payment, transfer: Transfer }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end
    # Time at which the quote was created, measured in seconds since the Unix epoch.
    attr_reader :created
    # Unique identifier for the object.
    attr_reader :id
    # The duration the exchange rate quote remains valid from creation time. Allowed values are none, hour, and day. Note that for the test mode API available in alpha, you can request an extended quote, but it won't be usable for any transactions.
    attr_reader :lock_duration
    # Time at which the quote will expire, measured in seconds since the Unix epoch.
    #
    # If lock_duration is set to ‘none’ this field will be set to null.
    attr_reader :lock_expires_at
    # Lock status of the quote. Transitions from active to expired once past the lock_expires_at timestamp.
    #
    # Can return value none, active, or expired.
    attr_reader :lock_status
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # Information about the rates.
    attr_reader :rates
    # The currency to convert into, typically this is the currency that you want to settle to your Stripe balance. Three-letter ISO currency code, in lowercase. Must be a supported currency.
    attr_reader :to_currency
    # Attribute for field usage
    attr_reader :usage

    # Creates an FX Quote object
    def self.create(params = {}, opts = {})
      request_stripe_object(method: :post, path: "/v1/fx_quotes", params: params, opts: opts)
    end

    # Returns a list of FX quotes that have been issued. The FX quotes are returned in sorted order, with the most recent FX quotes appearing first.
    def self.list(params = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/fx_quotes", params: params, opts: opts)
    end

    def self.inner_class_types
      @inner_class_types = { rates: Rates, usage: Usage }
    end

    def self.field_remappings
      @field_remappings = {}
    end
  end
end
