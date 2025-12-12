# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Tax
      class ManualRuleService < StripeService
        # Creates a ManualRule object.
        sig {
          params(params: T.any(::Stripe::V2::Tax::ManualRuleCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Tax::ManualRule)
         }
        def create(params = {}, opts = {}); end

        # Deactivates a ManualRule object.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Tax::ManualRuleDeactivateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Tax::ManualRule)
         }
        def deactivate(id, params = {}, opts = {}); end

        # List all ManualRule objects.
        sig {
          params(params: T.any(::Stripe::V2::Tax::ManualRuleListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieves a ManualRule object by ID.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Tax::ManualRuleRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Tax::ManualRule)
         }
        def retrieve(id, params = {}, opts = {}); end

        # Updates the Tax configuration for a ManualRule object.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Tax::ManualRuleUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Tax::ManualRule)
         }
        def update(id, params = {}, opts = {}); end
      end
    end
  end
end