# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Climate
    # A supplier of carbon removal.
    class Supplier < APIResource
      extend Stripe::APIOperations::List

      OBJECT_NAME = "climate.supplier"

      # Lists all available Climate supplier objects.
      def self.list(filters = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/climate/suppliers",
          params: filters,
          opts: opts
        )
      end
    end
  end
end
