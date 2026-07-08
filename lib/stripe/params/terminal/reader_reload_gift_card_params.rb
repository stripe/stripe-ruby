# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Terminal
    class ReaderReloadGiftCardParams < ::Stripe::RequestParams
      # The amount to add to the gift card balance, in the smallest currency unit.
      attr_accessor :amount
      # The brand of the gift card.
      attr_accessor :brand
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_accessor :currency
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # The Stripe account ID to process the gift card operation on behalf of.
      attr_accessor :on_behalf_of

      def initialize(amount: nil, brand: nil, currency: nil, expand: nil, on_behalf_of: nil)
        @amount = amount
        @brand = brand
        @currency = currency
        @expand = expand
        @on_behalf_of = on_behalf_of
      end
    end
  end
end
