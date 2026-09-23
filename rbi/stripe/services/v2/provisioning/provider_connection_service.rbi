# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Provisioning
      class ProviderConnectionService < StripeService
        # Lists the provider connections for the account.
        sig {
          params(params: T.any(::Stripe::V2::Provisioning::ProviderConnectionListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Unlinks a provider connection so it can no longer be used to create resources.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Provisioning::ProviderConnectionUnlinkParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Provisioning::ProviderConnection)
         }
        def unlink(id, params = {}, opts = {}); end
      end
    end
  end
end