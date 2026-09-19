# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class CustomerCashBalanceService < StripeService
    # Retrieves a customer's cash balance.
    def retrieve(id, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/customers/%<id>s/cash_balance", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Serializes a CustomerCashBalance update request into a batch job JSONL line.
    def serialize_batch_update(id, params = {}, opts = {})
      request_id = SecureRandom.uuid
      stripe_version = opts[:stripe_version] || Stripe.api_version

      request_body = {
        id: request_id,
        params: params,
        stripe_version: stripe_version,
      }
      request_body[:path_params] = { id: id }
      request_body[:context] = opts[:stripe_context] if opts[:stripe_context]
      JSON.generate(request_body)
    end

    # Changes the settings on a customer's cash balance.
    def update(id, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/customers/%<id>s/cash_balance", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
