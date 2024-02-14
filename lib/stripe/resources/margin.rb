# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # A (partner) margin represents a specific discount distributed in partner reseller programs to business partners who
  # resell products and services and earn a discount (margin) for doing so.
  class Margin < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "margin"
    def self.object_name
      "margin"
    end

    # Create a margin object to be used with invoices, invoice items, and invoice line items for a customer to represent a partner discount.A margin has a percent_off which is the percent that will be taken off the subtotal after all items and other discounts and promotions) of any invoices for a customer. Calculation of prorations do not include any partner margins applied on the original invoice item.
    def self.create(params = {}, opts = {})
      request_stripe_object(method: :post, path: "/v1/billing/margins", params: params, opts: opts)
    end

    # Retrieve a list of your margins.
    def self.list(filters = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/billing/margins", params: filters, opts: opts)
    end

    # Update the specified margin object. Certain fields of the margin object are not editable.
    def self.update(id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/billing/margins/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end
  end
end
