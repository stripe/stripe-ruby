# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class DisputeService < StripeService
    # Closing the dispute for a charge indicates that you do not have any evidence to submit and are essentially dismissing the dispute (accepting it), acknowledging it as lost.
    #
    # The status of the dispute will change from needs_response to lost. Closing a dispute is irreversible.
    def close(id, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/disputes/%<id>s/close", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Returns a list of your disputes.
    def list(params = {}, opts = {})
      request(method: :get, path: "/v1/disputes", params: params, opts: opts, base_address: :api)
    end

    # Retrieves the dispute with the given ID.
    def retrieve(id, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/disputes/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Serializes a Dispute close request into a batch job JSONL line.
    def serialize_batch_close(id, params = {}, opts = {})
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

    # When you get a dispute, contacting your customer is always the best first step. If that doesn't work, you can submit evidence to help us resolve the dispute in your favor. You can do this in your [dashboard](https://dashboard.stripe.com/disputes), but if you prefer, you can use the API to submit evidence programmatically.
    #
    # Depending on your dispute type, different evidence fields will give you a better chance of winning your dispute. To figure out which evidence fields to provide, see our [guide to dispute types](https://docs.stripe.com/docs/disputes/categories).
    def update(id, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/disputes/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
