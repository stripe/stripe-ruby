# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class GiftCardReloadParams < ::Stripe::RequestParams
    # The amount to add to the gift card balance, in the smallest currency unit.
    sig { returns(Integer) }
    def amount; end
    sig { params(_amount: Integer).returns(Integer) }
    def amount=(_amount); end
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    sig { returns(String) }
    def currency; end
    sig { params(_currency: String).returns(String) }
    def currency=(_currency); end
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
      params(amount: Integer, currency: String, expand: T.nilable(T::Array[String]), on_behalf_of: T.nilable(String)).void
     }
    def initialize(amount: nil, currency: nil, expand: nil, on_behalf_of: nil); end
  end
end