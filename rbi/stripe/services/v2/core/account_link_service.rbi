# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      class AccountLinkService < StripeService
        # Creates an AccountLink object that includes a single-use Stripe URL that the merchant can redirect their user to in order to take them to a Stripe-hosted application such as Recipient Onboarding.
        sig {
          params(params: T.any(::Stripe::V2::Core::AccountLinkCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Core::AccountLink)
         }
        def create(params = {}, opts = {}); end
      end
    end
  end
end