# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class MarginService < StripeService
    # Create a margin object to be used with invoices, invoice items, and invoice line items for a customer to represent a partner discount. A margin has a percent_off which is the percent that will be taken off the subtotal after all items and other discounts and promotions) of any invoices for a customer. Calculation of prorations do not include any partner margins applied on the original invoice item.
    def create(params = {}, opts = {})
      request(
        method: :post,
        path: "/v1/billing/margins",
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Retrieve a list of your margins.
    def list(params = {}, opts = {})
      request(
        method: :get,
        path: "/v1/billing/margins",
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Retrieve a margin object with the given ID.
    def retrieve(id, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/billing/margins/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Update the specified margin object. Certain fields of the margin object are not editable.
    def update(id, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/billing/margins/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
