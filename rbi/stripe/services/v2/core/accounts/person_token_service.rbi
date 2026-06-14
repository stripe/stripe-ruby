# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      module Accounts
        class PersonTokenService < StripeService
          # Creates a single-use token that represents the details for a person. Use this when you create or update persons associated with an Account v2. Learn more about [account tokens](https://docs.stripe.com/connect/account-tokens).
          # You can only create person tokens with your application's publishable key and in live mode. You can use your application's secret key to create person tokens only in test mode.
          #
          # ** raises RateLimitError
          sig {
            params(account_id: String, params: T.any(::Stripe::V2::Core::Accounts::PersonTokenCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Core::AccountPersonToken)
           }
          def create(account_id, params = {}, opts = {}); end

          # Retrieves a Person Token associated with an Account.
          #
          # ** raises RateLimitError
          sig {
            params(account_id: String, id: String, params: T.any(::Stripe::V2::Core::Accounts::PersonTokenRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Core::AccountPersonToken)
           }
          def retrieve(account_id, id, params = {}, opts = {}); end
        end
      end
    end
  end
end