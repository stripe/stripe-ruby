# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Issuing
    class Card < APIResource
      extend Stripe::APIOperations::Create
      extend Stripe::APIOperations::List
      include Stripe::APIOperations::Save

      OBJECT_NAME = "issuing.card"

      def details(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: format("/v1/issuing/cards/%<card>s/details", { card: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      def self.details(card, params = {}, opts = {})
        resp, opts = execute_resource_request(
          :get,
          format("/v1/issuing/cards/%<card>s/details", { card: CGI.escape(card) }),
          params,
          opts
        )
        Util.convert_to_stripe_object(resp.data, opts)
      end
    end
  end
end
