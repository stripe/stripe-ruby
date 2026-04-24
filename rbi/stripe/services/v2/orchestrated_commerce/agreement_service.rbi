# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module OrchestratedCommerce
      class AgreementService < StripeService
        # Confirm an Agreement.
        sig {
          params(id: String, params: T.any(::Stripe::V2::OrchestratedCommerce::AgreementConfirmParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::OrchestratedCommerce::Agreement)
         }
        def confirm(id, params = {}, opts = {}); end

        # Create a new Agreement.
        sig {
          params(params: T.any(::Stripe::V2::OrchestratedCommerce::AgreementCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::OrchestratedCommerce::Agreement)
         }
        def create(params = {}, opts = {}); end

        # List Agreements for the profile associated with the authenticated merchant.
        sig {
          params(params: T.any(::Stripe::V2::OrchestratedCommerce::AgreementListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieve an Agreement by ID.
        sig {
          params(id: String, params: T.any(::Stripe::V2::OrchestratedCommerce::AgreementRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::OrchestratedCommerce::Agreement)
         }
        def retrieve(id, params = {}, opts = {}); end

        # Terminate an Agreement.
        sig {
          params(id: String, params: T.any(::Stripe::V2::OrchestratedCommerce::AgreementTerminateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::OrchestratedCommerce::Agreement)
         }
        def terminate(id, params = {}, opts = {}); end
      end
    end
  end
end