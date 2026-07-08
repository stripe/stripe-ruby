# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class ContractService < StripeService
        attr_reader :pricing_lines
        # Activate a draft contract.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::ContractActivateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Billing::Contract)
         }
        def activate(id, params = {}, opts = {}); end

        # Cancel an active contract.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::ContractCancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Billing::Contract)
         }
        def cancel(id, params = {}, opts = {}); end

        # Create a draft contract.
        sig {
          params(params: T.any(::Stripe::V2::Billing::ContractCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Billing::Contract)
         }
        def create(params = {}, opts = {}); end

        # Delete a draft contract.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::ContractDeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::DeletedObject)
         }
        def delete(id, params = {}, opts = {}); end

        # List contracts.
        sig {
          params(params: T.any(::Stripe::V2::Billing::ContractListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieve a contract.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::ContractRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Billing::Contract)
         }
        def retrieve(id, params = {}, opts = {}); end

        # Update a draft or active contract.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::ContractUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Billing::Contract)
         }
        def update(id, params = {}, opts = {}); end
      end
    end
  end
end