# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Issuing
    # An issuing token object is created when an issued card is added to a digital wallet. As a [card issuer](https://stripe.com/docs/issuing), you can [view and manage these tokens](https://stripe.com/docs/issuing/controls/token-management) through Stripe.
    class Token < APIResource
      extend Stripe::APIOperations::List
      include Stripe::APIOperations::Save

      OBJECT_NAME = "issuing.token"

      # Lists all Issuing Token objects for a given card.
      def self.list(filters = {}, opts = {})
        request_stripe_object(method: :get, path: "/v1/issuing/tokens", params: filters, opts: opts)
      end

      # Attempts to update the specified Issuing Token object to the status specified.
      def self.update(id, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/issuing/tokens/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts
        )
      end
    end
  end
end
