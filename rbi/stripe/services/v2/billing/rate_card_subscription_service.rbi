# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class RateCardSubscriptionService < StripeService
        # Cancel an existing, active Rate Card Subscription.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::RateCardSubscriptionCancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::RateCardSubscription)
         }
        def cancel(id, params = {}, opts = {}); end

        # Create a Rate Card Subscription to bill a Rate Card on a specified Billing Cadence.
        sig {
          params(params: T.any(::Stripe::V2::Billing::RateCardSubscriptionCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::RateCardSubscription)
         }
        def create(params = {}, opts = {}); end

        # List all Rate Card Subscription objects.
        sig {
          params(params: T.any(::Stripe::V2::Billing::RateCardSubscriptionListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieve a Rate Card Subscription by ID.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::RateCardSubscriptionRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::RateCardSubscription)
         }
        def retrieve(id, params = {}, opts = {}); end

        # Update fields on an existing, active Rate Card Subscription.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::RateCardSubscriptionUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::RateCardSubscription)
         }
        def update(id, params = {}, opts = {}); end
      end
    end
  end
end