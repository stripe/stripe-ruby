# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Provisioning
      class PaymentProfileService < StripeService
        # Retrieves the payment profile for the current project.
        sig {
          params(params: T.any(::Stripe::V2::Provisioning::PaymentProfileRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Provisioning::PaymentProfile)
         }
        def retrieve(params = {}, opts = {}); end

        # Updates the usage limit on the payment profile for a provider.
        sig {
          params(params: T.any(::Stripe::V2::Provisioning::PaymentProfileUpdateLimitParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Provisioning::PaymentProfile)
         }
        def update_limit(params = {}, opts = {}); end
      end
    end
  end
end