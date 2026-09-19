# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Orchestration
    class PaymentAttemptService < StripeService
      # Retrieves orchestration information for the given payment attempt record (e.g. return url).
      def retrieve(id, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/orchestration/payment_attempts/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
