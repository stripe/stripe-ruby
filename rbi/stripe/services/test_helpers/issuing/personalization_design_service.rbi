# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module TestHelpers
    module Issuing
      class PersonalizationDesignService < StripeService
        # Updates the status of the specified testmode personalization design object to active.
        sig {
          params(id: String, params: T.any(::Stripe::TestHelpers::Issuing::PersonalizationDesignActivateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Issuing::PersonalizationDesign)
         }
        def activate(id, params = {}, opts = {}); end

        # Updates the status of the specified testmode personalization design object to inactive.
        sig {
          params(id: String, params: T.any(::Stripe::TestHelpers::Issuing::PersonalizationDesignDeactivateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Issuing::PersonalizationDesign)
         }
        def deactivate(id, params = {}, opts = {}); end

        # Updates the status of the specified testmode personalization design object to rejected.
        sig {
          params(id: String, params: T.any(::Stripe::TestHelpers::Issuing::PersonalizationDesignRejectParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Issuing::PersonalizationDesign)
         }
        def reject(id, params = {}, opts = {}); end
      end
    end
  end
end