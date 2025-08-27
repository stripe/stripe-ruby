# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class LicenseFeeSubscriptionService < StripeService
        class RetrieveParams < Stripe::RequestParams; end

        # Retrieve a License Fee Subscription object.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/billing/license_fee_subscriptions/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
