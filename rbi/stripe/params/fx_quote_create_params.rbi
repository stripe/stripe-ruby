# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class FxQuoteCreateParams < Stripe::RequestParams
    class Usage < Stripe::RequestParams
      class Payment < Stripe::RequestParams
        # The Stripe account ID that the funds will be transferred to.
        #
        # This field should match the account ID that would be used in the PaymentIntent’s transfer_data[destination] field.
        sig { returns(T.nilable(String)) }
        def destination; end
        sig { params(_destination: T.nilable(String)).returns(T.nilable(String)) }
        def destination=(_destination); end
        # The Stripe account ID that these funds are intended for.
        #
        # This field should match the account ID that would be used in the PaymentIntent’s on_behalf_of field.
        sig { returns(T.nilable(String)) }
        def on_behalf_of; end
        sig { params(_on_behalf_of: T.nilable(String)).returns(T.nilable(String)) }
        def on_behalf_of=(_on_behalf_of); end
        sig { params(destination: T.nilable(String), on_behalf_of: T.nilable(String)).void }
        def initialize(destination: nil, on_behalf_of: nil); end
      end
      class Transfer < Stripe::RequestParams
        # The Stripe account ID that the funds will be transferred to.
        #
        # This field should match the account ID that would be used in the Transfer’s destination field.
        sig { returns(String) }
        def destination; end
        sig { params(_destination: String).returns(String) }
        def destination=(_destination); end
        sig { params(destination: String).void }
        def initialize(destination: nil); end
      end
      # The payment transaction details that are intended for the FX Quote.
      sig { returns(T.nilable(FxQuoteCreateParams::Usage::Payment)) }
      def payment; end
      sig {
        params(_payment: T.nilable(FxQuoteCreateParams::Usage::Payment)).returns(T.nilable(FxQuoteCreateParams::Usage::Payment))
       }
      def payment=(_payment); end
      # The transfer transaction details that are intended for the FX Quote.
      sig { returns(T.nilable(FxQuoteCreateParams::Usage::Transfer)) }
      def transfer; end
      sig {
        params(_transfer: T.nilable(FxQuoteCreateParams::Usage::Transfer)).returns(T.nilable(FxQuoteCreateParams::Usage::Transfer))
       }
      def transfer=(_transfer); end
      # Which transaction the FX Quote will be used for
      #
      # Can be “payment” | “transfer”
      sig { returns(String) }
      def type; end
      sig { params(_type: String).returns(String) }
      def type=(_type); end
      sig {
        params(payment: T.nilable(FxQuoteCreateParams::Usage::Payment), transfer: T.nilable(FxQuoteCreateParams::Usage::Transfer), type: String).void
       }
      def initialize(payment: nil, transfer: nil, type: nil); end
    end
    # Specifies which fields in the response should be expanded.
    sig { returns(T.nilable(T::Array[String])) }
    def expand; end
    sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
    def expand=(_expand); end
    # A list of three letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be [supported currencies](https://stripe.com/docs/currencies).
    sig { returns(T::Array[String]) }
    def from_currencies; end
    sig { params(_from_currencies: T::Array[String]).returns(T::Array[String]) }
    def from_currencies=(_from_currencies); end
    # The duration that you wish the quote to be locked for. The quote will be usable for the duration specified. The default is `none`. The maximum is 1 day.
    sig { returns(String) }
    def lock_duration; end
    sig { params(_lock_duration: String).returns(String) }
    def lock_duration=(_lock_duration); end
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    sig { returns(String) }
    def to_currency; end
    sig { params(_to_currency: String).returns(String) }
    def to_currency=(_to_currency); end
    # The usage specific information for the quote.
    sig { returns(T.nilable(FxQuoteCreateParams::Usage)) }
    def usage; end
    sig {
      params(_usage: T.nilable(FxQuoteCreateParams::Usage)).returns(T.nilable(FxQuoteCreateParams::Usage))
     }
    def usage=(_usage); end
    sig {
      params(expand: T.nilable(T::Array[String]), from_currencies: T::Array[String], lock_duration: String, to_currency: String, usage: T.nilable(FxQuoteCreateParams::Usage)).void
     }
    def initialize(
      expand: nil,
      from_currencies: nil,
      lock_duration: nil,
      to_currency: nil,
      usage: nil
    ); end
  end
end