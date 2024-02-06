# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # You can now model subscriptions more flexibly using the [Prices API](https://stripe.com/docs/api#prices). It replaces the Plans API and is backwards compatible to simplify your migration.
  #
  # Plans define the base price, currency, and billing cycle for recurring purchases of products.
  # [Products](https://stripe.com/docs/api#products) help you track inventory or provisioning, and plans help you track pricing. Different physical goods or levels of service should be represented by products, and pricing options should be represented by plans. This approach lets you change prices without having to change your provisioning scheme.
  #
  # For example, you might have a single "gold" product that has plans for $10/month, $100/year, €9/month, and €90/year.
  #
  # Related guides: [Set up a subscription](https://stripe.com/docs/billing/subscriptions/set-up-subscription) and more about [products and prices](https://stripe.com/docs/products-prices/overview).
  class Plan < APIResource
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Delete
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "plan"

    # You can now model subscriptions more flexibly using the [Prices API](https://stripe.com/docs/api#prices). It replaces the Plans API and is backwards compatible to simplify your migration.
    def self.create(params = {}, opts = {})
      request_stripe_object(method: :post, path: "/v1/plans", params: params, opts: opts)
    end

    # Deleting plans means new subscribers can't be added. Existing subscribers aren't affected.
    def self.delete(id, params = {}, opts = {})
      request_stripe_object(
        method: :delete,
        path: format("/v1/plans/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end

    # Deleting plans means new subscribers can't be added. Existing subscribers aren't affected.
    def delete(params = {}, opts = {})
      request_stripe_object(
        method: :delete,
        path: format("/v1/plans/%<plan>s", { plan: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Returns a list of your plans.
    def self.list(filters = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/plans", params: filters, opts: opts)
    end

    # Updates the specified plan by setting the values of the parameters passed. Any parameters not provided are left unchanged. By design, you cannot change a plan's ID, amount, currency, or billing cycle.
    def self.update(id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/plans/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end
  end
end
