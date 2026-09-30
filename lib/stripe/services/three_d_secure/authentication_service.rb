# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module ThreeDSecure
    class AuthenticationService < StripeService
      # This endpoint cancels a 3DS Authentication. You can cancel a 3DS Authentication object when it's in a non-final status:
      # requires_submission or requires_challenge.
      def cancel(authentication, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/three_d_secure/authentications/%<authentication>s/cancel", { authentication: CGI.escape(authentication) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # This endpoint creates a 3DS Authentication. Refer to the [Create a 3DS Authentication object section of the Standalone 3DS guide](https://docs.stripe.com/payments/3d-secure/standalone-3d-secure#create-a-3ds-authentication-object) for more information.
      #
      # You can pass the submit parameter to automatically submit the 3DS Authentication object when you create it. Refer to the [Submit at creation section of the Standalone 3DS guide](https://docs.stripe.com/payments/3d-secure/standalone-3d-secure#submit-at-creation) for more information.
      def create(params = {}, opts = {})
        request(
          method: :post,
          path: "/v1/three_d_secure/authentications",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Returns a list of 3D Secure Authentications.
      def list(params = {}, opts = {})
        request(
          method: :get,
          path: "/v1/three_d_secure/authentications",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # This endpoint retrieves a 3DS Authentication.
      def retrieve(authentication, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/three_d_secure/authentications/%<authentication>s", { authentication: CGI.escape(authentication) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # This endpoint submits a 3DS Authentication. You can submit a 3DS Authentication object when it has status requires_submission. Refer to the [Submit the 3DS Authentication object section of the Standalone 3DS guide](https://docs.stripe.com/payments/3d-secure/standalone-3d-secure#submit-the-3ds-authentication-object) for more information.
      def submit(authentication, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/three_d_secure/authentications/%<authentication>s/submit", { authentication: CGI.escape(authentication) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
