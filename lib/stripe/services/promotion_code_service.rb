# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class PromotionCodeService < StripeService
    # A promotion code points to an underlying promotion. You can optionally restrict the code to a specific customer, redemption limit, and expiration date.
    def create(params = {}, opts = {})
      request(
        method: :post,
        path: "/v1/promotion_codes",
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Returns a list of your promotion codes.
    def list(params = {}, opts = {})
      request(
        method: :get,
        path: "/v1/promotion_codes",
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Retrieves the promotion code with the given ID. In order to retrieve a promotion code by the customer-facing code use [list](https://docs.stripe.com/docs/api/promotion_codes/list) with the desired code.
    def retrieve(promotion_code, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/promotion_codes/%<promotion_code>s", { promotion_code: CGI.escape(promotion_code) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Serializes a PromotionCode create request into a batch job JSONL line.
    def serialize_batch_create(params = {}, opts = {})
      item_id = SecureRandom.uuid
      stripe_version = opts[:stripe_version] || Stripe.api_version

      item = {
        id: item_id,
        params: params,
        stripe_version: stripe_version,
      }
      item[:context] = opts[:stripe_context] if opts[:stripe_context]
      JSON.generate(item)
    end

    # Serializes a PromotionCode update request into a batch job JSONL line.
    def serialize_batch_update(promotion_code, params = {}, opts = {})
      item_id = SecureRandom.uuid
      stripe_version = opts[:stripe_version] || Stripe.api_version

      item = {
        id: item_id,
        params: params,
        stripe_version: stripe_version,
      }
      item[:path_params] = { promotion_code: promotion_code }
      item[:context] = opts[:stripe_context] if opts[:stripe_context]
      JSON.generate(item)
    end

    # Updates the specified promotion code by setting the values of the parameters passed. Most fields are, by design, not editable.
    def update(promotion_code, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/promotion_codes/%<promotion_code>s", { promotion_code: CGI.escape(promotion_code) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
