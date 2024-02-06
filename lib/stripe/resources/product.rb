# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Products describe the specific goods or services you offer to your customers.
  # For example, you might offer a Standard and Premium version of your goods or service; each version would be a separate Product.
  # They can be used in conjunction with [Prices](https://stripe.com/docs/api#prices) to configure pricing in Payment Links, Checkout, and Subscriptions.
  #
  # Related guides: [Set up a subscription](https://stripe.com/docs/billing/subscriptions/set-up-subscription),
  # [share a Payment Link](https://stripe.com/docs/payment-links),
  # [accept payments with Checkout](https://stripe.com/docs/payments/accept-a-payment#create-product-prices-upfront),
  # and more about [Products and Prices](https://stripe.com/docs/products-prices/overview)
  class Product < APIResource
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Delete
    extend Stripe::APIOperations::List
    extend Stripe::APIOperations::Search
    include Stripe::APIOperations::Save

    OBJECT_NAME = "product"

    # Creates a new product object.
    def self.create(params = {}, opts = {})
      request_stripe_object(method: :post, path: "/v1/products", params: params, opts: opts)
    end

    # Delete a product. Deleting a product is only possible if it has no prices associated with it. Additionally, deleting a product with type=good is only possible if it has no SKUs associated with it.
    def self.delete(id, params = {}, opts = {})
      request_stripe_object(
        method: :delete,
        path: format("/v1/products/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end

    # Delete a product. Deleting a product is only possible if it has no prices associated with it. Additionally, deleting a product with type=good is only possible if it has no SKUs associated with it.
    def delete(params = {}, opts = {})
      request_stripe_object(
        method: :delete,
        path: format("/v1/products/%<id>s", { id: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Returns a list of your products. The products are returned sorted by creation date, with the most recently created products appearing first.
    def self.list(filters = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/products", params: filters, opts: opts)
    end

    def self.search(params = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/products/search", params: params, opts: opts)
    end

    def self.search_auto_paging_each(params = {}, opts = {}, &blk)
      search(params, opts).auto_paging_each(&blk)
    end

    # Updates the specific product by setting the values of the parameters passed. Any parameters not provided will be left unchanged.
    def self.update(id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/products/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end
  end
end
