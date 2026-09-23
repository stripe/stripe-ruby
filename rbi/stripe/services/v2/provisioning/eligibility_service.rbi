# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Provisioning
      class EligibilityService < StripeService
        # Checks whether a project is eligible to provision resources with a provider, including
        # any outstanding KYC requirements that must be satisfied first.
        sig {
          params(params: T.any(::Stripe::V2::Provisioning::EligibilityRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Provisioning::Eligibility)
         }
        def retrieve(params = {}, opts = {}); end
      end
    end
  end
end