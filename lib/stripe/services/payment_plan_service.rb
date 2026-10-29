# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class PaymentPlanService < StripeService
    # Creates a payment plan that splits a single invoice obligation into installments with their own due dates and amounts.
    def create(params = {}, opts = {})
      request(
        method: :post,
        path: "/v1/payment_plans",
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Returns a list of payment plans.
    def list(params = {}, opts = {})
      request(
        method: :get,
        path: "/v1/payment_plans",
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Retrieves the payment plan with the given ID.
    def retrieve(id, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/payment_plans/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Updates the schedule or metadata of an existing payment plan. Only unpaid installments can be updated.
    def update(id, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/payment_plans/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
