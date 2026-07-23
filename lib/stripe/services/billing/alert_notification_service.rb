# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Billing
    class AlertNotificationService < StripeService
      # Lists sent billing alert triggered and recovered notifications for a billing alert.
      def list(id, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/billing/alerts/%<id>s/notifications", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
