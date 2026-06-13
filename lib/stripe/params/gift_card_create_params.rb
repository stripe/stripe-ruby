# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class GiftCardCreateParams < ::Stripe::RequestParams
    # The brand of the gift card.
    attr_accessor :brand
    # Two-digit number representing the gift card's expiration month.
    attr_accessor :exp_month
    # Four-digit number representing the gift card's expiration year.
    attr_accessor :exp_year
    # Specifies which fields in the response should be expanded.
    attr_accessor :expand
    # The gift card number.
    attr_accessor :number
    # The gift card PIN.
    attr_accessor :pin

    def initialize(brand: nil, exp_month: nil, exp_year: nil, expand: nil, number: nil, pin: nil)
      @brand = brand
      @exp_month = exp_month
      @exp_year = exp_year
      @expand = expand
      @number = number
      @pin = pin
    end
  end
end
