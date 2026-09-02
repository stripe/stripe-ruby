# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Signals
      class PaymentRetryEvaluationService < StripeService
        # Cancels an active payment retry evaluation.
        #
        # ** raises CannotProceedError
        def cancel(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/signals/payment_retry_evaluations/%<id>s/cancel", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Creates a new payment retry evaluation for a failed payment.
        #
        # ** raises AlreadyExistsError
        # ** raises CannotProceedError
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/signals/payment_retry_evaluations",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieves a payment retry evaluation by ID.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/signals/payment_retry_evaluations/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Updates an active payment retry evaluation with a replacement payment identifier.
        #
        # ** raises AlreadyExistsError
        # ** raises CannotProceedError
        def update(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/signals/payment_retry_evaluations/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
