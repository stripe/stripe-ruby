# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Provisioning
      module PaymentProfile
        class UpdateLimitService < StripeService
          # Updates the usage limit on the payment profile for a provider.
          sig {
            params(params: T.any(::Stripe::V2::Provisioning::PaymentProfile::UpdateLimitUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Provisioning::PaymentProfile)
           }
          def update(params = {}, opts = {}); end
        end
      end
    end
  end
end