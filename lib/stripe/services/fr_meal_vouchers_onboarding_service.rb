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

    # Lists French Meal Vouchers Onboarding objects. The objects are returned in sorted order, with the most recently created objects appearing first.
    def list(params = {}, opts = {})
      request(
        method: :get,
        path: "/v1/fr_meal_vouchers_onboardings",
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Retrieves the details of a previously created French Meal Vouchers Onboarding object.
    #
    # Supply the unique French Meal Vouchers Onboarding ID that was returned from your previous request,
    # and Stripe returns the corresponding onboarding information.
    def retrieve(id, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/fr_meal_vouchers_onboardings/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Updates the details of a restaurant's French Meal Vouchers Onboarding object by
    # setting the values of the parameters passed. Any parameters not provided are left unchanged.
    # After you update the object, the onboarding process automatically restarts.
    #
    # You can only update French Meal Vouchers Onboarding objects with the postal_code field requirement in past_due.
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
