# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      class AccountTokenService < StripeService
        # Create an account token with a publishable key and pass it to the Accounts v2 API to
        # create or update an account without its data touching your server.
        # Learn more about [account tokens](https://docs.stripe.com/connect/account-tokens).
        # In live mode, you can only create account tokens with your application's publishable key.
        # In test mode, you can create account tokens with your secret key or publishable key.
        #
        # ** raises RateLimitError
        def create(params = {}, opts = {})
          unless params.is_a?(Stripe::RequestParams)
            params = ::Stripe::V2::Core::AccountTokenCreateParams.coerce_params(params)
          end

          request(
            method: :post,
            path: "/v2/core/account_tokens",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieves an Account Token.
        #
        # ** raises RateLimitError
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/core/account_tokens/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
