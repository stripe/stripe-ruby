# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Provisioning
      class ProviderConnectionRequestService < StripeService
        # Creates a new provider connection.
        sig {
          params(params: T.any(::Stripe::V2::Provisioning::ProviderConnectionRequestCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Provisioning::ProviderConnectionRequest)
         }
        def create(params = {}, opts = {}); end

        # Retrieves a provider connection.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Provisioning::ProviderConnectionRequestRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Provisioning::ProviderConnectionRequest)
         }
        def retrieve(id, params = {}, opts = {}); end

        # Submits additional information requested by the provider for a provider connection.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Provisioning::ProviderConnectionRequestSubmitInformationParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Provisioning::ProviderConnectionRequest)
         }
        def submit_information(id, params = {}, opts = {}); end
      end
    end
  end
end