# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Tax
      class AutomaticRuleService < StripeService
        # Creates an AutomaticRule object.
        sig {
          params(params: T.any(::Stripe::V2::Tax::AutomaticRuleCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Tax::AutomaticRule)
         }
        def create(params = {}, opts = {}); end

        # Deactivates an AutomaticRule object. Deactivated AutomaticRule objects are ignored in future tax calculations.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Tax::AutomaticRuleDeactivateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Tax::AutomaticRule)
         }
        def deactivate(id, params = {}, opts = {}); end

        # Finds an AutomaticRule object by BillableItem ID.
        sig {
          params(params: T.any(::Stripe::V2::Tax::AutomaticRuleFindParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Tax::AutomaticRule)
         }
        def find(params = {}, opts = {}); end

        # Retrieves an AutomaticRule object by ID.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Tax::AutomaticRuleRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Tax::AutomaticRule)
         }
        def retrieve(id, params = {}, opts = {}); end

        # Updates the automatic Tax configuration for an AutomaticRule object.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Tax::AutomaticRuleUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Tax::AutomaticRule)
         }
        def update(id, params = {}, opts = {}); end
      end
    end
  end
end