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
        attr_reader :base_rate
        # The fee for locking the conversion rates.
        sig { returns(Float) }
        attr_reader :duration_premium
        # The FX fee for the currency pair.
        sig { returns(Float) }
        attr_reader :fx_fee_rate
        # A reference rate for the currency pair provided by the reference rate provider.
        sig { returns(T.nilable(Float)) }
        attr_reader :reference_rate
        # The reference rate provider.
        sig { returns(T.nilable(String)) }
        attr_reader :reference_rate_provider
      end
      # The rate that includes the FX fee rate.
      sig { returns(Float) }
      attr_reader :exchange_rate
      # Attribute for field rate_details
      sig { returns(RateDetails) }
      attr_reader :rate_details
    end
    class Usage < Stripe::StripeObject
      class Payment < Stripe::StripeObject
        # The Stripe account ID that the funds will be transferred to.
        #
        # This field should match the account ID that would be used in the PaymentIntent’s transfer_data[destination] field.
        sig { returns(T.nilable(String)) }
        attr_reader :destination
        # The Stripe account ID that these funds are intended for.
        #
        # This field must match the account ID that would be used in the PaymentIntent’s on_behalf_of field.
        sig { returns(T.nilable(String)) }
        attr_reader :on_behalf_of
      end
      class Transfer < Stripe::StripeObject
        # The Stripe account ID that the funds will be transferred to.
        #
        # This field should match the account ID that would be used in the Transfer’s destination field.
        sig { returns(String) }
        attr_reader :destination
      end
      # The details required to use an FX Quote for a payment
      sig { returns(T.nilable(Payment)) }
      attr_reader :payment
      # The details required to use an FX Quote for a transfer
      sig { returns(T.nilable(Transfer)) }
      attr_reader :transfer
      # The transaction type for which the FX Quote will be used.
      #
      # Can be 'payment' or 'transfer'.
      sig { returns(String) }
      attr_reader :type
    end
    # Time at which the quote was created, measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    attr_reader :created
    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id
    # The duration the exchange rate quote remains valid from creation time. Allowed values are none, hour, and day. Note that for the test mode API available in alpha, you can request an extended quote, but it won't be usable for any transactions.
    sig { returns(String) }
    attr_reader :lock_duration
    # Time at which the quote will expire, measured in seconds since the Unix epoch.
    #
    # If lock_duration is set to ‘none’ this field will be set to null.
    sig { returns(T.nilable(Integer)) }
    attr_reader :lock_expires_at
    # Lock status of the quote. Transitions from active to expired once past the lock_expires_at timestamp.
    #
    # Can return value none, active, or expired.
    sig { returns(String) }
    attr_reader :lock_status
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object
    # Information about the rates.
    sig { returns(T::Hash[String, Rates]) }
    attr_reader :rates
    # The currency to convert into, typically this is the currency that you want to settle to your Stripe balance. Three-letter ISO currency code, in lowercase. Must be a supported currency.
    sig { returns(String) }
    attr_reader :to_currency
    # Attribute for field usage
    sig { returns(Usage) }
    attr_reader :usage
    class ListParams < Stripe::RequestParams
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      sig { returns(T.nilable(String)) }
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :limit
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(T.nilable(String)) }
      attr_accessor :starting_after
      sig {
        params(ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String)).void
       }
      def initialize(ending_before: nil, expand: nil, limit: nil, starting_after: nil); end
    end
    class CreateParams < Stripe::RequestParams
      class Usage < Stripe::RequestParams
        class Payment < Stripe::RequestParams
          # The Stripe account ID that the funds will be transferred to.
          #
          # This field should match the account ID that would be used in the PaymentIntent’s transfer_data[destination] field.
          sig { returns(T.nilable(String)) }
          attr_accessor :destination
          # The Stripe account ID that these funds are intended for.
          #
          # This field should match the account ID that would be used in the PaymentIntent’s on_behalf_of field.
          sig { returns(T.nilable(String)) }
          attr_accessor :on_behalf_of
          sig { params(destination: T.nilable(String), on_behalf_of: T.nilable(String)).void }
          def initialize(destination: nil, on_behalf_of: nil); end
        end
        class Transfer < Stripe::RequestParams
          # The Stripe account ID that the funds will be transferred to.
          #
          # This field should match the account ID that would be used in the Transfer’s destination field.
          sig { returns(String) }
          attr_accessor :destination
          sig { params(destination: String).void }
          def initialize(destination: nil); end
        end
        # The payment transaction details that are intended for the FX Quote.
        sig { returns(T.nilable(::Stripe::FxQuote::CreateParams::Usage::Payment)) }
        attr_accessor :payment
        # The transfer transaction details that are intended for the FX Quote.
        sig { returns(T.nilable(::Stripe::FxQuote::CreateParams::Usage::Transfer)) }
        attr_accessor :transfer
        # Which transaction the FX Quote will be used for
        #
        # Can be “payment” | “transfer”
        sig { returns(String) }
        attr_accessor :type
        sig {
          params(payment: T.nilable(::Stripe::FxQuote::CreateParams::Usage::Payment), transfer: T.nilable(::Stripe::FxQuote::CreateParams::Usage::Transfer), type: String).void
         }
        def initialize(payment: nil, transfer: nil, type: nil); end
      end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # A list of three letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be [supported currencies](https://stripe.com/docs/currencies).
      sig { returns(T::Array[String]) }
      attr_accessor :from_currencies
      # The duration that you wish the quote to be locked for. The quote will be usable for the duration specified. The default is `none`. The maximum is 1 day.
      sig { returns(String) }
      attr_accessor :lock_duration
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(String) }
      attr_accessor :to_currency
      # The usage specific information for the quote.
      sig { returns(T.nilable(::Stripe::FxQuote::CreateParams::Usage)) }
      attr_accessor :usage
      sig {
        params(expand: T.nilable(T::Array[String]), from_currencies: T::Array[String], lock_duration: String, to_currency: String, usage: T.nilable(::Stripe::FxQuote::CreateParams::Usage)).void
       }
      def initialize(
        expand: nil,
        from_currencies: nil,
        lock_duration: nil,
        to_currency: nil,
        usage: nil
      ); end
    end
    # Creates an FX Quote object
    sig {
      params(params: T.any(::Stripe::FxQuote::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::FxQuote)
     }
    def self.create(params = {}, opts = {}); end

    # Returns a list of FX quotes that have been issued. The FX quotes are returned in sorted order, with the most recent FX quotes appearing first.
    sig {
      params(params: T.any(::Stripe::FxQuote::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def self.list(params = {}, opts = {}); end
  end
end