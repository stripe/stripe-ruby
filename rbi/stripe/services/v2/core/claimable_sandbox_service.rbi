# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      class ClaimableSandboxService < StripeService
        # Create an anonymous, claimable sandbox. This sandbox can be prefilled with data. The response will include
        # a claim URL that allow a user to claim the account.
        sig {
          params(params: T.any(::Stripe::V2::Core::ClaimableSandboxCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Core::ClaimableSandbox)
         }
        def create(params = {}, opts = {}); end

        # Retrieves the details of a claimable sandbox that was previously been created.
        # Supply the unique claimable sandbox ID that was returned from your creation request,
        # and Stripe will return the corresponding sandbox information.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Core::ClaimableSandboxRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Core::ClaimableSandbox)
         }
        def retrieve(id, params = {}, opts = {}); end
      end
    end
  end
end