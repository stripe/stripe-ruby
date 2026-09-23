# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Provisioning
      class PaymentMethodRequestService < StripeService
        # Creates a request for a customer to authorize a new payment method.
        def create(params = {}, opts = {})
          unless params.is_a?(Stripe::RequestParams)
            params = ::Stripe::V2::Provisioning::PaymentMethodRequestCreateParams.coerce_params(params)
          end

          request(
            method: :post,
            path: "/v2/provisioning/payment_method_requests",
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
