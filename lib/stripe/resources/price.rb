# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Prices define the unit cost, currency, and (optional) billing cycle for both recurring and one-time purchases of products.
  # [Products](https://stripe.com/docs/api#products) help you track inventory or provisioning, and prices help you track payment terms. Different physical goods or levels of service should be represented by products, and pricing options should be represented by prices. This approach lets you change prices without having to change your provisioning scheme.
  #
  # For example, you might have a single "gold" product that has prices for $10/month, $100/year, and €9 once.
  #
  # Related guides: [Set up a subscription](https://stripe.com/docs/billing/subscriptions/set-up-subscription), [create an invoice](https://stripe.com/docs/billing/invoices/create), and more about [products and prices](https://stripe.com/docs/products-prices/overview).
  class Price < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    extend Stripe::APIOperations::Search
    include Stripe::APIOperations::Save

    OBJECT_NAME = "price"

    def self.search(params = {}, opts = {})
      _search("/v1/prices/search", params, opts)
    end

    def self.search_auto_paging_each(params = {}, opts = {}, &blk)
      search(params, opts).auto_paging_each(&blk)
    end
  end
end
