# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      class AccountSessionService < StripeService
        # Create an Account Session.
        #
        # ** raises RateLimitError
        sig {
          params(params: T.any(::Stripe::V2::Core::AccountSessionCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Core::AccountSession)
         }
        def create(params = {}, opts = {}); end
      end
    end
  end
end