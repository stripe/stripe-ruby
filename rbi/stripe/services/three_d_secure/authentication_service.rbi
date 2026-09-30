# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module ThreeDSecure
    class AuthenticationService < StripeService
      # This endpoint cancels a 3DS Authentication. You can cancel a 3DS Authentication object when it's in a non-final status:
      # requires_submission or requires_challenge.
      sig {
        params(authentication: String, params: T.any(::Stripe::ThreeDSecure::AuthenticationCancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ThreeDSecure::Authentication)
       }
      def cancel(authentication, params = {}, opts = {}); end

      # This endpoint creates a 3DS Authentication. Refer to the [Create a 3DS Authentication object section of the Standalone 3DS guide](https://docs.stripe.com/payments/3d-secure/standalone-3d-secure#create-a-3ds-authentication-object) for more information.
      #
      # You can pass the submit parameter to automatically submit the 3DS Authentication object when you create it. Refer to the [Submit at creation section of the Standalone 3DS guide](https://docs.stripe.com/payments/3d-secure/standalone-3d-secure#submit-at-creation) for more information.
      sig {
        params(params: T.any(::Stripe::ThreeDSecure::AuthenticationCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ThreeDSecure::Authentication)
       }
      def create(params = {}, opts = {}); end

      # Returns a list of 3D Secure Authentications.
      sig {
        params(params: T.any(::Stripe::ThreeDSecure::AuthenticationListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
       }
      def list(params = {}, opts = {}); end

      # This endpoint retrieves a 3DS Authentication.
      sig {
        params(authentication: String, params: T.any(::Stripe::ThreeDSecure::AuthenticationRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ThreeDSecure::Authentication)
       }
      def retrieve(authentication, params = {}, opts = {}); end

      # This endpoint submits a 3DS Authentication. You can submit a 3DS Authentication object when it has status requires_submission. Refer to the [Submit the 3DS Authentication object section of the Standalone 3DS guide](https://docs.stripe.com/payments/3d-secure/standalone-3d-secure#submit-the-3ds-authentication-object) for more information.
      sig {
        params(authentication: String, params: T.any(::Stripe::ThreeDSecure::AuthenticationSubmitParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ThreeDSecure::Authentication)
       }
      def submit(authentication, params = {}, opts = {}); end
    end
  end
end