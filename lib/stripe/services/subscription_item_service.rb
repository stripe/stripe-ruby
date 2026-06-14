# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class SubscriptionItemService < StripeService
    # Adds a new item to an existing subscription. No existing items will be changed or replaced.
    def create(params = {}, opts = {})
      params = ::Stripe::SubscriptionItemCreateParams.coerce_params(params) unless params.is_a?(Stripe::RequestParams)

      request(
        method: :post,
        path: "/v1/subscription_items",
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Deletes an item from the subscription. Removing a subscription item from a subscription will not cancel the subscription.
    def delete(item, params = {}, opts = {})
      request(
        method: :delete,
        path: format("/v1/subscription_items/%<item>s", { item: CGI.escape(item) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Returns a list of your subscription items for a given subscription.
    def list(params = {}, opts = {})
      request(
        method: :get,
        path: "/v1/subscription_items",
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Retrieves the subscription item with the given ID.
    def retrieve(item, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/subscription_items/%<item>s", { item: CGI.escape(item) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Serializes a SubscriptionItem create request into a batch job JSONL line.
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

    # Serializes a SubscriptionItem delete request into a batch job JSONL line.
    def serialize_batch_delete(item, params = {}, opts = {})
      request_id = SecureRandom.uuid
      stripe_version = opts[:stripe_version] || Stripe.api_version

      request_body = {
        id: request_id,
        params: params,
        stripe_version: stripe_version,
      }
      request_body[:path_params] = { item: item }
      request_body[:context] = opts[:stripe_context] if opts[:stripe_context]
      JSON.generate(request_body)
    end

    # Serializes a SubscriptionItem update request into a batch job JSONL line.
    def serialize_batch_update(item, params = {}, opts = {})
      request_id = SecureRandom.uuid
      stripe_version = opts[:stripe_version] || Stripe.api_version

      request_body = {
        id: request_id,
        params: params,
        stripe_version: stripe_version,
      }
      request_body[:path_params] = { item: item }
      request_body[:context] = opts[:stripe_context] if opts[:stripe_context]
      JSON.generate(request_body)
    end

    # Updates the plan or quantity of an item on a current subscription.
    def update(item, params = {}, opts = {})
      params = ::Stripe::SubscriptionItemUpdateParams.coerce_params(params) unless params.is_a?(Stripe::RequestParams)

      request(
        method: :post,
        path: format("/v1/subscription_items/%<item>s", { item: CGI.escape(item) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
