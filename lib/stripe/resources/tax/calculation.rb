# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Tax
    # A Tax Calculation allows you to calculate the tax to collect from your customer.
    #
    # Related guide: [Calculate tax in your custom payment flow](https://stripe.com/docs/tax/custom)
    class Calculation < APIResource
      extend Stripe::APIOperations::Create

      OBJECT_NAME = "tax.calculation"
      def self.object_name
        "tax.calculation"
      end

      # Calculates tax based on the input and returns a Tax Calculation object.
      def self.create(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/tax/calculations",
          params: params,
          opts: opts
        )
      end

      # Retrieves the line items of a tax calculation as a collection, if the calculation hasn't expired.
      def list_line_items(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: format("/v1/tax/calculations/%<calculation>s/line_items", { calculation: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # Retrieves the line items of a tax calculation as a collection, if the calculation hasn't expired.
      def self.list_line_items(calculation, params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: format("/v1/tax/calculations/%<calculation>s/line_items", { calculation: CGI.escape(calculation) }),
          params: params,
          opts: opts
        )
      end
    end
  end
end
