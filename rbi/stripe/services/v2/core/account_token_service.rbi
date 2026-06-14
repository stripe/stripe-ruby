# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
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
        sig {
          params(params: T.any(::Stripe::V2::Core::AccountTokenCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Core::AccountToken)
         }
        def create(params = {}, opts = {}); end

        # Retrieves an Account Token.
        #
        # ** raises RateLimitError
        sig {
          params(id: String, params: T.any(::Stripe::V2::Core::AccountTokenRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Core::AccountToken)
         }
        def retrieve(id, params = {}, opts = {}); end
      end
    end
  end
end