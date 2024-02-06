# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Subscription items allow you to create customer subscriptions with more than
  # one plan, making it easy to represent complex billing relationships.
  class SubscriptionItem < APIResource
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Delete
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save
    extend Stripe::APIOperations::NestedResource

    OBJECT_NAME = "subscription_item"

    nested_resource_class_methods :usage_record, operations: %i[create]
    nested_resource_class_methods :usage_record_summary,
                                  operations: %i[list],
                                  resource_plural: "usage_record_summaries"

    # Adds a new item to an existing subscription. No existing items will be changed or replaced.
    def self.create(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: "/v1/subscription_items",
        params: params,
        opts: opts
      )
    end

    # Deletes an item from the subscription. Removing a subscription item from a subscription will not cancel the subscription.
    def self.delete(id, params = {}, opts = {})
      request_stripe_object(
        method: :delete,
        path: format("/v1/subscription_items/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end

    # Deletes an item from the subscription. Removing a subscription item from a subscription will not cancel the subscription.
    def delete(params = {}, opts = {})
      request_stripe_object(
        method: :delete,
        path: format("/v1/subscription_items/%<item>s", { item: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Returns a list of your subscription items for a given subscription.
    def self.list(filters = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: "/v1/subscription_items",
        params: filters,
        opts: opts
      )
    end

    # Updates the plan or quantity of an item on a current subscription.
    def self.update(id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/subscription_items/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end
  end
end
