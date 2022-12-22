# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Tax
    # A Tax `Calculation` allows you to calculate the tax to collect from your customer.
    class Calculation < APIResource
      extend Stripe::APIOperations::Create

      OBJECT_NAME = "tax.calculation"

      def list_line_items(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: format("/v1/tax/calculations/%<calculation>s/line_items", { calculation: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

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
