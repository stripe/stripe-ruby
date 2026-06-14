# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      module Accounts
        class PersonTokenService < StripeService
          # Creates a single-use token that represents the details for a person. Use this when you create or update persons associated with an Account v2. Learn more about [account tokens](https://docs.stripe.com/connect/account-tokens).
          # You can only create person tokens with your application's publishable key and in live mode. You can use your application's secret key to create person tokens only in test mode.
          #
          # ** raises RateLimitError
          def create(account_id, params = {}, opts = {})
            unless params.is_a?(Stripe::RequestParams)
              params = ::Stripe::V2::Core::Accounts::PersonTokenCreateParams.coerce_params(params)
            end

            request(
              method: :post,
              path: format("/v2/core/accounts/%<account_id>s/person_tokens", { account_id: CGI.escape(account_id) }),
              params: params,
              opts: opts,
              base_address: :api
            )
          end

          # Retrieves a Person Token associated with an Account.
          #
          # ** raises RateLimitError
          def retrieve(account_id, id, params = {}, opts = {})
            request(
              method: :get,
              path: format("/v2/core/accounts/%<account_id>s/person_tokens/%<id>s", { account_id: CGI.escape(account_id), id: CGI.escape(id) }),
              params: params,
              opts: opts,
              base_address: :api
            )
          end
        end
      end
    end
  end
end
