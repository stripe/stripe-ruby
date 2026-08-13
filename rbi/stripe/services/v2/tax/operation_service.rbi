# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Tax
      class OperationService < StripeService
        # Resolves an address to its tax precision level.
        sig {
          params(params: T.any(::Stripe::V2::Tax::OperationResolveAddressParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Tax::OperationsResolveAddressResult)
         }
        def resolve_address(params = {}, opts = {}); end
      end
    end
  end
end