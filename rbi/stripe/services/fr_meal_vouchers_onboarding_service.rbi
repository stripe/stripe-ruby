# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class FrMealVouchersOnboardingService < StripeService
    # Creates a French Meal Vouchers Onboarding object that represents a restaurant's onboarding status and starts the onboarding process.
    sig {
      params(params: T.any(::Stripe::FrMealVouchersOnboardingCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::FrMealVouchersOnboarding)
     }
    def create(params = {}, opts = {}); end

    # Lists French Meal Vouchers Onboarding objects. The objects are returned in sorted order, with the most recently created objects appearing first.
    sig {
      params(params: T.any(::Stripe::FrMealVouchersOnboardingListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
     }
    def list(params = {}, opts = {}); end

    # Retrieves the details of a previously created French Meal Vouchers Onboarding object.
    #
    # Supply the unique French Meal Vouchers Onboarding ID that was returned from your previous request,
    # and Stripe returns the corresponding onboarding information.
    sig {
      params(id: String, params: T.any(::Stripe::FrMealVouchersOnboardingRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::FrMealVouchersOnboarding)
     }
    def retrieve(id, params = {}, opts = {}); end

    # Updates the details of a restaurant's French Meal Vouchers Onboarding object by
    # setting the values of the parameters passed. Any parameters not provided are left unchanged.
    # After you update the object, the onboarding process automatically restarts.
    #
    # You can only update French Meal Vouchers Onboarding objects with the postal_code field requirement in past_due.
    sig {
      params(id: String, params: T.any(::Stripe::FrMealVouchersOnboardingUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::FrMealVouchersOnboarding)
     }
    def update(id, params = {}, opts = {}); end
  end
end