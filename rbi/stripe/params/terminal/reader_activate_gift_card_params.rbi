# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Terminal
    class ReaderActivateGiftCardParams < ::Stripe::RequestParams
      class Balance < ::Stripe::RequestParams
        # The initial balance amount to be loaded when activating the gift card, in the smallest currency unit
        sig { returns(Integer) }
        def amount; end
        sig { params(_amount: Integer).returns(Integer) }
        def amount=(_amount); end
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        sig { returns(String) }
        def currency; end
        sig { params(_currency: String).returns(String) }
        def currency=(_currency); end
        sig { params(amount: Integer, currency: String).void }
        def initialize(amount: nil, currency: nil); end
      end
      # The initial balance to set on the gift card.
      sig { returns(T.nilable(::Stripe::Terminal::ReaderActivateGiftCardParams::Balance)) }
      def balance; end
      sig {
        params(_balance: T.nilable(::Stripe::Terminal::ReaderActivateGiftCardParams::Balance)).returns(T.nilable(::Stripe::Terminal::ReaderActivateGiftCardParams::Balance))
       }
      def balance=(_balance); end
      # The brand of the gift card.
      sig { returns(String) }
      def brand; end
      sig { params(_brand: String).returns(String) }
      def brand=(_brand); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # The Stripe account ID to process the gift card operation on behalf of.
      sig { returns(T.nilable(String)) }
      def on_behalf_of; end
      sig { params(_on_behalf_of: T.nilable(String)).returns(T.nilable(String)) }
      def on_behalf_of=(_on_behalf_of); end
      sig {
        params(balance: T.nilable(::Stripe::Terminal::ReaderActivateGiftCardParams::Balance), brand: String, expand: T.nilable(T::Array[String]), on_behalf_of: T.nilable(String)).void
       }
      def initialize(balance: nil, brand: nil, expand: nil, on_behalf_of: nil); end
    end
  end
end