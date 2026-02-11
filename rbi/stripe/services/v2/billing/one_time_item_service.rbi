# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class OneTimeItemService < StripeService
        # Create a One-Time Item object.
        sig {
          params(params: T.any(::Stripe::V2::Billing::OneTimeItemCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Billing::OneTimeItem)
         }
        def create(params = {}, opts = {}); end

        # List all One-Time Item objects in reverse chronological order of creation.
        sig {
          params(params: T.any(::Stripe::V2::Billing::OneTimeItemListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieve a One-Time Item object.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::OneTimeItemRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Billing::OneTimeItem)
         }
        def retrieve(id, params = {}, opts = {}); end

        # Update a One-Time Item object.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::OneTimeItemUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Billing::OneTimeItem)
         }
        def update(id, params = {}, opts = {}); end
      end
    end
  end
end