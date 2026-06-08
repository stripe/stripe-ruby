# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class GiftCardActivateParams < ::Stripe::RequestParams
    class Balance < ::Stripe::RequestParams
      # The initial balance amount to be loaded when activating the gift card, in the smallest currency unit
      attr_accessor :amount
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_accessor :currency

      def initialize(amount: nil, currency: nil)
        @amount = amount
        @currency = currency
      end
    end
    # The initial balance to set on the gift card.
    attr_accessor :balance
    # Specifies which fields in the response should be expanded.
    attr_accessor :expand
    # The Stripe account ID to process the gift card operation on behalf of.
    attr_accessor :on_behalf_of

    def initialize(balance: nil, expand: nil, on_behalf_of: nil)
      @balance = balance
      @expand = expand
      @on_behalf_of = on_behalf_of
    end
  end
end
