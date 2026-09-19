# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Provisioning
      module Catalog
        class ProviderService < StripeService
          # Lists providers available in the catalog.
          sig {
            params(params: T.any(::Stripe::V2::Provisioning::Catalog::ProviderListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
           }
          def list(params = {}, opts = {}); end
        end
      end
    end
  end
end