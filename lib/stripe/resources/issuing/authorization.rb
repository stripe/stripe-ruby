# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Issuing
    # When an [issued card](https://stripe.com/docs/issuing) is used to make a purchase, an Issuing `Authorization`
    # object is created. [Authorizations](https://stripe.com/docs/issuing/purchases/authorizations) must be approved for the
    # purchase to be completed successfully.
    #
    # Related guide: [Issued card authorizations](https://stripe.com/docs/issuing/purchases/authorizations)
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

      def test_helpers
        TestHelpers.new(self)
      end

      class TestHelpers < APIResourceTestHelpers
        RESOURCE_CLASS = Authorization

        def self.capture(authorization, params = {}, opts = {})
          request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/issuing/authorizations/%<authorization>s/capture", { authorization: CGI.escape(authorization) }),
            params: params,
            opts: opts
          )
        end

        def self.create(params = {}, opts = {})
          request_stripe_object(
            method: :post,
            path: "/v1/test_helpers/issuing/authorizations",
            params: params,
            opts: opts
          )
        end

        def self.expire(authorization, params = {}, opts = {})
          request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/issuing/authorizations/%<authorization>s/expire", { authorization: CGI.escape(authorization) }),
            params: params,
            opts: opts
          )
        end

        def self.increment(authorization, params = {}, opts = {})
          request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/issuing/authorizations/%<authorization>s/increment", { authorization: CGI.escape(authorization) }),
            params: params,
            opts: opts
          )
        end

        def self.reverse(authorization, params = {}, opts = {})
          request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/issuing/authorizations/%<authorization>s/reverse", { authorization: CGI.escape(authorization) }),
            params: params,
            opts: opts
          )
        end

        def capture(params = {}, opts = {})
          @resource.request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/issuing/authorizations/%<authorization>s/capture", { authorization: CGI.escape(@resource["id"]) }),
            params: params,
            opts: opts
          )
        end

        def expire(params = {}, opts = {})
          @resource.request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/issuing/authorizations/%<authorization>s/expire", { authorization: CGI.escape(@resource["id"]) }),
            params: params,
            opts: opts
          )
        end

        def increment(params = {}, opts = {})
          @resource.request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/issuing/authorizations/%<authorization>s/increment", { authorization: CGI.escape(@resource["id"]) }),
            params: params,
            opts: opts
          )
        end

        def reverse(params = {}, opts = {})
          @resource.request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/issuing/authorizations/%<authorization>s/reverse", { authorization: CGI.escape(@resource["id"]) }),
            params: params,
            opts: opts
          )
        end
      end
    end
  end
end
