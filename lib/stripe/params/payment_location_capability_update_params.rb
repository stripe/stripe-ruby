# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class PaymentLocationCapabilityUpdateParams < ::Stripe::RequestParams
    # Specifies which fields in the response should be expanded.
    attr_accessor :expand
    # The location for which the capability enables functionality.
    attr_accessor :location
    # To request a new capability for the location, set this to `true`. You can remove it from the location by passing `false`.
    attr_accessor :requested

    def initialize(expand: nil, location: nil, requested: nil)
      @expand = expand
      @location = location
      @requested = requested
    end
  end
end
