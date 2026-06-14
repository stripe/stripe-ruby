# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class PaymentLocationCapabilityListParams < ::Stripe::RequestParams
    # Specifies which fields in the response should be expanded.
    attr_accessor :expand
    # The payment location that the capabilities enable functionality for.
    attr_accessor :location

    def initialize(expand: nil, location: nil)
      @expand = expand
      @location = location
    end
  end
end
