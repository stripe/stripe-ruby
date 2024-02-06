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

      # [Deprecated] Approves a pending Issuing Authorization object. This request should be made within the timeout window of the [real-time authorization](https://stripe.com/docs/issuing/controls/real-time-authorizations) flow.
      # This method is deprecated. Instead, [respond directly to the webhook request to approve an authorization](https://stripe.com/docs/issuing/controls/real-time-authorizations#authorization-handling).
      def approve(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/issuing/authorizations/%<authorization>s/approve", { authorization: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # [Deprecated] Declines a pending Issuing Authorization object. This request should be made within the timeout window of the [real time authorization](https://stripe.com/docs/issuing/controls/real-time-authorizations) flow.
      # This method is deprecated. Instead, [respond directly to the webhook request to decline an authorization](https://stripe.com/docs/issuing/controls/real-time-authorizations#authorization-handling).
      def decline(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/issuing/authorizations/%<authorization>s/decline", { authorization: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # [Deprecated] Approves a pending Issuing Authorization object. This request should be made within the timeout window of the [real-time authorization](https://stripe.com/docs/issuing/controls/real-time-authorizations) flow.
      # This method is deprecated. Instead, [respond directly to the webhook request to approve an authorization](https://stripe.com/docs/issuing/controls/real-time-authorizations#authorization-handling).
      def self.approve(authorization, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/issuing/authorizations/%<authorization>s/approve", { authorization: CGI.escape(authorization) }),
          params: params,
          opts: opts
        )
      end

      # [Deprecated] Declines a pending Issuing Authorization object. This request should be made within the timeout window of the [real time authorization](https://stripe.com/docs/issuing/controls/real-time-authorizations) flow.
      # This method is deprecated. Instead, [respond directly to the webhook request to decline an authorization](https://stripe.com/docs/issuing/controls/real-time-authorizations#authorization-handling).
      def self.decline(authorization, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/issuing/authorizations/%<authorization>s/decline", { authorization: CGI.escape(authorization) }),
          params: params,
          opts: opts
        )
      end

      # Returns a list of Issuing Authorization objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.
      def self.list(filters = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/issuing/authorizations",
          params: filters,
          opts: opts
        )
      end

      # Updates the specified Issuing Authorization object by setting the values of the parameters passed. Any parameters not provided will be left unchanged.
      def self.update(id, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/issuing/authorizations/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts
        )
      end

      def test_helpers
        TestHelpers.new(self)
      end

      class TestHelpers < APIResourceTestHelpers
        RESOURCE_CLASS = Authorization

        # Capture a test-mode authorization.
        def self.capture(authorization, params = {}, opts = {})
          request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/issuing/authorizations/%<authorization>s/capture", { authorization: CGI.escape(authorization) }),
            params: params,
            opts: opts
          )
        end

        # Create a test-mode authorization.
        def self.create(params = {}, opts = {})
          request_stripe_object(
            method: :post,
            path: "/v1/test_helpers/issuing/authorizations",
            params: params,
            opts: opts
          )
        end

        # Expire a test-mode Authorization.
        def self.expire(authorization, params = {}, opts = {})
          request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/issuing/authorizations/%<authorization>s/expire", { authorization: CGI.escape(authorization) }),
            params: params,
            opts: opts
          )
        end

        # Increment a test-mode Authorization.
        def self.increment(authorization, params = {}, opts = {})
          request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/issuing/authorizations/%<authorization>s/increment", { authorization: CGI.escape(authorization) }),
            params: params,
            opts: opts
          )
        end

        # Reverse a test-mode Authorization.
        def self.reverse(authorization, params = {}, opts = {})
          request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/issuing/authorizations/%<authorization>s/reverse", { authorization: CGI.escape(authorization) }),
            params: params,
            opts: opts
          )
        end

        # Capture a test-mode authorization.
        def capture(params = {}, opts = {})
          @resource.request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/issuing/authorizations/%<authorization>s/capture", { authorization: CGI.escape(@resource["id"]) }),
            params: params,
            opts: opts
          )
        end

        # Expire a test-mode Authorization.
        def expire(params = {}, opts = {})
          @resource.request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/issuing/authorizations/%<authorization>s/expire", { authorization: CGI.escape(@resource["id"]) }),
            params: params,
            opts: opts
          )
        end

        # Increment a test-mode Authorization.
        def increment(params = {}, opts = {})
          @resource.request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/issuing/authorizations/%<authorization>s/increment", { authorization: CGI.escape(@resource["id"]) }),
            params: params,
            opts: opts
          )
        end

        # Reverse a test-mode Authorization.
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
