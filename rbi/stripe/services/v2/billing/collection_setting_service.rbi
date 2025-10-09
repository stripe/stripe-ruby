# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class CollectionSettingService < StripeService
        attr_reader :versions
        # Create a CollectionSetting object.
        sig {
          params(params: T.any(::Stripe::V2::Billing::CollectionSettingCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Billing::CollectionSetting)
         }
        def create(params = {}, opts = {}); end

        # List all CollectionSetting objects.
        sig {
          params(params: T.any(::Stripe::V2::Billing::CollectionSettingListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieve a CollectionSetting by ID.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::CollectionSettingRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Billing::CollectionSetting)
         }
        def retrieve(id, params = {}, opts = {}); end

        # Update fields on an existing CollectionSetting.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::CollectionSettingUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Billing::CollectionSetting)
         }
        def update(id, params = {}, opts = {}); end
      end
    end
  end
end