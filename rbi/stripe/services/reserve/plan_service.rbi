# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Reserve
    class PlanService < StripeService
      # Returns a list of ReservePlans previously created. The ReservePlans are returned in sorted order, with the most recent ReservePlans appearing first.
      sig {
        params(params: T.any(::Stripe::Reserve::PlanListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
       }
      def list(params = {}, opts = {}); end

      # Retrieve a ReservePlan.
      sig {
        params(id: String, params: T.any(::Stripe::Reserve::PlanRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Reserve::Plan)
       }
      def retrieve(id, params = {}, opts = {}); end
    end
  end
end