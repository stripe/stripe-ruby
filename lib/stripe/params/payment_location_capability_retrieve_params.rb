# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class PaymentLocationCapabilityRetrieveParams < ::Stripe::RequestParams
    # Specifies which fields in the response should be expanded.
    attr_accessor :expand
    # The payment location for which the capability enables functionality.
    attr_accessor :location

    def initialize(expand: nil, location: nil)
      @expand = expand
      @location = location
    end
  end
end
