# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class DisputeAdjustmentService < StripeService
        # Retrieves a list of DisputeAdjustments.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/money_management/dispute_adjustments",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieves a DisputeAdjustment by ID.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/money_management/dispute_adjustments/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
