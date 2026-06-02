# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class ContractService < StripeService
        attr_reader :license_pricing
        # Activate a Draft Contract object by ID.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::ContractActivateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Billing::Contract)
         }
        def activate(id, params = {}, opts = {}); end

        # Cancel a Contract object by ID.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::ContractCancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Billing::Contract)
         }
        def cancel(id, params = {}, opts = {}); end

        # Create a Contract object.
        sig {
          params(params: T.any(::Stripe::V2::Billing::ContractCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Billing::Contract)
         }
        def create(params = {}, opts = {}); end

        # List Contract objects with pagination.
        sig {
          params(params: T.any(::Stripe::V2::Billing::ContractListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieve a Contract object by ID.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::ContractRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Billing::Contract)
         }
        def retrieve(id, params = {}, opts = {}); end

        # Update a Contract object by ID.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::ContractUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Billing::Contract)
         }
        def update(id, params = {}, opts = {}); end
      end
    end
  end
end