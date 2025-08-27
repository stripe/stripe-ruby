# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class LicenseFeeSubscriptionService < StripeService
        class RetrieveParams < Stripe::RequestParams; end
        # Retrieve a License Fee Subscription object.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::LicenseFeeSubscriptionService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::LicenseFeeSubscription)
         }
        def retrieve(id, params = {}, opts = {}); end
      end
    end
  end
end