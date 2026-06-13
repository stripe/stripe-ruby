# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class BillSettingService < StripeService
        attr_reader :versions
        # Create a BillSetting object.
        sig {
          params(params: T.any(::Stripe::V2::Billing::BillSettingCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Billing::BillSetting)
         }
        def create(params = {}, opts = {}); end

        # List all BillSetting objects.
        sig {
          params(params: T.any(::Stripe::V2::Billing::BillSettingListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieve a BillSetting object by ID.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::BillSettingRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Billing::BillSetting)
         }
        def retrieve(id, params = {}, opts = {}); end

        # Update fields on an existing BillSetting object.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::BillSettingUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Billing::BillSetting)
         }
        def update(id, params = {}, opts = {}); end
      end
    end
  end
end