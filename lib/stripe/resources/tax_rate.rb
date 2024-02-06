# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Tax rates can be applied to [invoices](https://stripe.com/docs/billing/invoices/tax-rates), [subscriptions](https://stripe.com/docs/billing/subscriptions/taxes) and [Checkout Sessions](https://stripe.com/docs/payments/checkout/set-up-a-subscription#tax-rates) to collect tax.
  #
  # Related guide: [Tax rates](https://stripe.com/docs/billing/taxes/tax-rates)
  class TaxRate < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "tax_rate"

    # Creates a new tax rate.
    def self.create(params = {}, opts = {})
      request_stripe_object(method: :post, path: "/v1/tax_rates", params: params, opts: opts)
    end

    # Returns a list of your tax rates. Tax rates are returned sorted by creation date, with the most recently created tax rates appearing first.
    def self.list(filters = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/tax_rates", params: filters, opts: opts)
    end

    # Updates an existing tax rate.
    def self.update(id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/tax_rates/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end
  end
end
