# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class LicensedItemService < StripeService
        # Create a Licensed Item object.
        sig {
          params(params: T.any(::Stripe::V2::Billing::LicensedItemCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::LicensedItem)
         }
        def create(params = {}, opts = {}); end

        # List all Licensed Item objects in reverse chronological order of creation.
        sig {
          params(params: T.any(::Stripe::V2::Billing::LicensedItemListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieve a Licensed Item object.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::LicensedItemRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::LicensedItem)
         }
        def retrieve(id, params = {}, opts = {}); end

        # Update a Licensed Item object. At least one of the fields is required.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::LicensedItemUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::LicensedItem)
         }
        def update(id, params = {}, opts = {}); end
      end
    end
  end
end