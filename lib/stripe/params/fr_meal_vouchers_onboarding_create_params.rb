# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class FrMealVouchersOnboardingCreateParams < ::Stripe::RequestParams
    # Specifies which fields in the response should be expanded.
    attr_accessor :expand
    # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`. This cannot be changed after creation of this object.
    attr_accessor :metadata
    # Name of the restaurant. This cannot be changed after creation of this object.
    attr_accessor :name
    # Postal code of the restaurant.
    attr_accessor :postal_code
    # SIRET number associated with the restaurant. This cannot be changed after creation of this object.
    attr_accessor :siret

    def initialize(expand: nil, metadata: nil, name: nil, postal_code: nil, siret: nil)
      @expand = expand
      @metadata = metadata
      @name = name
      @postal_code = postal_code
      @siret = siret
    end
  end
end
