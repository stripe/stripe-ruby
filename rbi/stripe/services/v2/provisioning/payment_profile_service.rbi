# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Provisioning
      class PaymentProfileService < StripeService
        attr_reader :update_limit
        # Retrieves the payment profile for the current project.
        sig {
          params(params: T.any(::Stripe::V2::Provisioning::PaymentProfileRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Provisioning::PaymentProfile)
         }
        def retrieve(params = {}, opts = {}); end
      end
    end
  end
end