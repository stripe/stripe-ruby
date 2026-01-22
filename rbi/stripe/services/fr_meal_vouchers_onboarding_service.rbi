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

    # Lists French Meal Vouchers Onboarding objects
    sig {
      params(params: T.any(::Stripe::FrMealVouchersOnboardingListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
     }
    def list(params = {}, opts = {}); end

    # Retrieves the details of a French Meal Vouchers Onboarding object
    sig {
      params(id: String, params: T.any(::Stripe::FrMealVouchersOnboardingRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::FrMealVouchersOnboarding)
     }
    def retrieve(id, params = {}, opts = {}); end

    # Updates the details of a restaurant's French Meal Vouchers Onboarding object
    sig {
      params(id: String, params: T.any(::Stripe::FrMealVouchersOnboardingUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::FrMealVouchersOnboarding)
     }
    def update(id, params = {}, opts = {}); end
  end
end