# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Sigma
    class SchemaService < StripeService
      class ListParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # Attribute for param field product
        attr_accessor :product

        def initialize(expand: nil, product: nil)
          @expand = expand
          @product = product
        end
      end

      # Lists the schemas available to the authorized merchant in Stripe's data products
      def list(params = {}, opts = {})
        request(
          method: :get,
          path: "/v1/sigma/schemas",
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
