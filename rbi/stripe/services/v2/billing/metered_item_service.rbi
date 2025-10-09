# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class MeteredItemService < StripeService
        # Create a Metered Item object.
        sig {
          params(params: T.any(::Stripe::V2::Billing::MeteredItemCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Billing::MeteredItem)
         }
        def create(params = {}, opts = {}); end

        # List all Metered Item objects in reverse chronological order of creation.
        sig {
          params(params: T.any(::Stripe::V2::Billing::MeteredItemListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieve a Metered Item object.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::MeteredItemRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Billing::MeteredItem)
         }
        def retrieve(id, params = {}, opts = {}); end

        # Update a Metered Item object. At least one of the fields is required.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::MeteredItemUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Billing::MeteredItem)
         }
        def update(id, params = {}, opts = {}); end
      end
    end
  end
end