# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Provisioning
      class PaymentProfileService < StripeService
        attr_reader :update_limit

        def initialize(requestor)
          super
          @update_limit = Stripe::V2::Provisioning::PaymentProfile::UpdateLimitService
                          .new(@requestor)
        end

        # Retrieves the payment profile for the current project.
        def retrieve(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/provisioning/payment_profile",
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
