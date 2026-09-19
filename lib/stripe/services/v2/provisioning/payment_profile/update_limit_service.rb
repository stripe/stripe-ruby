# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Provisioning
      module PaymentProfile
        class UpdateLimitService < StripeService
          # Updates the usage limit on the payment profile for a provider.
          def update(params = {}, opts = {})
            unless params.is_a?(Stripe::RequestParams)
              params = ::Stripe::V2::Provisioning::PaymentProfile::UpdateLimitUpdateParams.coerce_params(params)
            end

            request(
              method: :post,
              path: "/v2/provisioning/payment_profile/update_limit",
              params: params,
              opts: opts,
              base_address: :api
            )
          end
        end
      end
    end
  end
end
