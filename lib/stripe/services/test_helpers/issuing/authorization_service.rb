# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module TestHelpers
    module Issuing
      class AuthorizationService < StripeService
        # Capture a test-mode authorization.
        def capture(id, params = {}, opts = {})
          unless params.is_a?(Stripe::RequestParams)
            params = ::Stripe::TestHelpers::Issuing::AuthorizationCaptureParams.coerce_params(params)
          end

          request(
            method: :post,
            path: format("/v1/test_helpers/issuing/authorizations/%<id>s/capture", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Create a test-mode authorization.
        def create(params = {}, opts = {})
          unless params.is_a?(Stripe::RequestParams)
            params = ::Stripe::TestHelpers::Issuing::AuthorizationCreateParams.coerce_params(params)
          end

          request(
            method: :post,
            path: "/v1/test_helpers/issuing/authorizations",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Expire a test-mode Authorization.
        def expire(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v1/test_helpers/issuing/authorizations/%<id>s/expire", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Finalize the amount on an Authorization prior to capture, when the initial authorization was for an estimated amount.
        def finalize_amount(id, params = {}, opts = {})
          unless params.is_a?(Stripe::RequestParams)
            params = ::Stripe::TestHelpers::Issuing::AuthorizationFinalizeAmountParams.coerce_params(params)
          end

          request(
            method: :post,
            path: format("/v1/test_helpers/issuing/authorizations/%<id>s/finalize_amount", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Increment a test-mode Authorization.
        def increment(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v1/test_helpers/issuing/authorizations/%<id>s/increment", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Respond to a fraud challenge on a testmode Issuing authorization, simulating either a confirmation of fraud or a correction of legitimacy.
        def respond(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v1/test_helpers/issuing/authorizations/%<id>s/fraud_challenges/respond", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Reverse a test-mode Authorization.
        def reverse(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v1/test_helpers/issuing/authorizations/%<id>s/reverse", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
