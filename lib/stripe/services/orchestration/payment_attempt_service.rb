# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Orchestration
    class PaymentAttemptService < StripeService
      # Retrieves orchestration information for the given payment attempt record (e.g. return url).
      def retrieve(payment_attempt_record, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/orchestration/payment_attempts/%<payment_attempt_record>s", { payment_attempt_record: CGI.escape(payment_attempt_record) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
