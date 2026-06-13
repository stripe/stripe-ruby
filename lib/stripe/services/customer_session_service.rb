# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class CustomerSessionService < StripeService
    # Creates a Customer Session object that includes a single-use client secret that you can use on your front-end to grant client-side API access for certain customer resources.
    def create(params = {}, opts = {})
      request(
        method: :post,
        path: "/v1/customer_sessions",
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Serializes a CustomerSession create request into a batch job JSONL line.
    def serialize_batch_create(params = {}, opts = {})
      request_id = SecureRandom.uuid
      stripe_version = opts[:stripe_version] || Stripe.api_version

      request_body = {
        id: request_id,
        params: params,
        stripe_version: stripe_version,
      }
      request_body[:context] = opts[:stripe_context] if opts[:stripe_context]
      JSON.generate(request_body)
    end
  end
end
