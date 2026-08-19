# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class PaymentPlanService < StripeService
    # Creates a payment plan that splits a single invoice obligation into installments with their own due dates and amounts.
    sig {
      params(params: T.any(::Stripe::PaymentPlanCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::PaymentPlan)
     }
    def create(params = {}, opts = {}); end

    # Returns a list of payment plans.
    sig {
      params(params: T.any(::Stripe::PaymentPlanListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
     }
    def list(params = {}, opts = {}); end

    # Retrieves the payment plan with the given ID.
    sig {
      params(id: String, params: T.any(::Stripe::PaymentPlanRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::PaymentPlan)
     }
    def retrieve(id, params = {}, opts = {}); end

    # Updates the schedule or metadata of an existing payment plan. Only unpaid installments can be updated.
    sig {
      params(id: String, params: T.any(::Stripe::PaymentPlanUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::PaymentPlan)
     }
    def update(id, params = {}, opts = {}); end
  end
end