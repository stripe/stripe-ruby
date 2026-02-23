# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class AccountSignalsService < StripeService
    # Retrieves the account's Signal objects
    sig {
      params(account_id: String, params: T.any(::Stripe::AccountSignalsRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::AccountSignals)
     }
    def retrieve(account_id, params = {}, opts = {}); end
  end
end