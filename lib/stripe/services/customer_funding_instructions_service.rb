# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class CustomerFundingInstructionsService < StripeService
    # Retrieve funding instructions for a customer cash balance. If funding instructions do not yet exist for the customer, new
    # funding instructions will be created. If funding instructions have already been created for a given customer, the same
    # funding instructions will be retrieved. In other words, we will return the same funding instructions each time.
    def create(id, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/customers/%<id>s/funding_instructions", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Serializes a CustomerFundingInstructions create request into a batch job JSONL line.
    def serialize_batch_create_funding_instructions(id, params = {}, opts = {})
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
  end
end
