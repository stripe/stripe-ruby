# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Terminal
    class ReaderCheckGiftCardBalanceParams < ::Stripe::RequestParams
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
        params(brand: String, expand: T.nilable(T::Array[String]), on_behalf_of: T.nilable(String)).void
       }
      def initialize(brand: nil, expand: nil, on_behalf_of: nil); end
    end
  end
end