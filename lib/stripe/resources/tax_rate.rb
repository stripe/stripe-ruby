# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Tax rates can be applied to [invoices](https://stripe.com/invoicing/taxes/tax-rates), [subscriptions](https://stripe.com/billing/taxes/tax-rates) and [Checkout Sessions](https://stripe.com/payments/checkout/use-manual-tax-rates) to collect tax.
  #
  # Related guide: [Tax rates](https://stripe.com/billing/taxes/tax-rates)
  class TaxRate < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "tax_rate"
    def self.object_name
      "tax_rate"
    end

    # Creates a new tax rate.
    def self.create(params = {}, opts = {})
      request_stripe_object(method: :post, path: "/v1/tax_rates", params: params, opts: opts)
    end

    # Returns a list of your tax rates. Tax rates are returned sorted by creation date, with the most recently created tax rates appearing first.
    def self.list(params = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/tax_rates", params: params, opts: opts)
    end

    # Updates an existing tax rate.
    def self.update(tax_rate, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/tax_rates/%<tax_rate>s", { tax_rate: CGI.escape(tax_rate) }),
        params: params,
        opts: opts
      )
    end
  end
end
