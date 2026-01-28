# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class FrMealVouchersOnboardingUpdateParams < ::Stripe::RequestParams
    # Specifies which fields in the response should be expanded.
    attr_accessor :expand
    # Corrected Postal code of the restaurant.
    attr_accessor :postal_code

    def initialize(expand: nil, postal_code: nil)
      @expand = expand
      @postal_code = postal_code
    end
  end
end
