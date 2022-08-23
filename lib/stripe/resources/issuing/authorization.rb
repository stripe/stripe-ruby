# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Issuing
    # When an [issued card](https://stripe.com/docs/issuing) is used to make a purchase, an Issuing `Authorization`
    # object is created. [Authorizations](https://stripe.com/docs/issuing/purchases/authorizations) must be approved for the
    # purchase to be completed successfully.
    #
    # Related guide: [Issued Card Authorizations](https://stripe.com/docs/issuing/purchases/authorizations).
    class Authorization < APIResource
      extend Stripe::APIOperations::List
      include Stripe::APIOperations::Save

      OBJECT_NAME = "issuing.authorization"

      def approve(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/issuing/authorizations/%<authorization>s/approve", { authorization: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      def decline(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/issuing/authorizations/%<authorization>s/decline", { authorization: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      def self.approve(authorization, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/issuing/authorizations/%<authorization>s/approve", { authorization: CGI.escape(authorization) }),
          params: params,
          opts: opts
        )
      end

      def self.decline(authorization, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/issuing/authorizations/%<authorization>s/decline", { authorization: CGI.escape(authorization) }),
          params: params,
          opts: opts
        )
      end
    end
  end
end
