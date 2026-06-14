# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Reserve
    class PlanService < StripeService
      # Retrieve a ReservePlan.
      sig {
        params(id: String, params: T.any(::Stripe::Reserve::PlanRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Reserve::Plan)
       }
      def retrieve(id, params = {}, opts = {}); end
    end
  end
end