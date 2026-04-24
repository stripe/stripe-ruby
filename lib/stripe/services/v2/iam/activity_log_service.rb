# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Iam
      class ActivityLogService < StripeService
        # List activity logs of an account.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/iam/activity_logs",
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
