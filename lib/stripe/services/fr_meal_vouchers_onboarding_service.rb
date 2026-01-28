# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class FrMealVouchersOnboardingService < StripeService
    # Creates a French Meal Vouchers Onboarding object that represents a restaurant's onboarding status and starts the onboarding process.
    def create(params = {}, opts = {})
      request(
        method: :post,
        path: "/v1/fr_meal_vouchers_onboardings",
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Lists French Meal Vouchers Onboarding objects
    def list(params = {}, opts = {})
      request(
        method: :get,
        path: "/v1/fr_meal_vouchers_onboardings",
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Retrieves the details of a French Meal Vouchers Onboarding object
    def retrieve(id, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/fr_meal_vouchers_onboardings/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Updates the details of a restaurant's French Meal Vouchers Onboarding object
    def update(id, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/fr_meal_vouchers_onboardings/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
