# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class ProfileService < StripeService
        # Create a BillingProfile object.
        sig {
          params(params: T.any(::Stripe::V2::Billing::ProfileCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::Profile)
         }
        def create(params = {}, opts = {}); end

        # List Billing Profiles.
        sig {
          params(params: T.any(::Stripe::V2::Billing::ProfileListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieve a BillingProfile object.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::ProfileRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::Profile)
         }
        def retrieve(id, params = {}, opts = {}); end

        # Update a BillingProfile object.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::ProfileUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::Profile)
         }
        def update(id, params = {}, opts = {}); end
      end
    end
  end
end