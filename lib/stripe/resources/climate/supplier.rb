# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Climate
    # A supplier of carbon removal.
    class Supplier < APIResource
      extend Stripe::APIOperations::List

      OBJECT_NAME = "climate.supplier"
      def self.object_name
        "climate.supplier"
      end

      # Lists all available Climate supplier objects.
      def self.list(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/climate/suppliers",
          params: params,
          opts: opts
        )
      end
    end
  end
end
