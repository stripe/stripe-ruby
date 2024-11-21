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

    # Whether the margin can be applied to invoices, invoice items, or invoice line items. Defaults to `true`.
    attr_reader :active

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created

    # Unique identifier for the object.
    attr_reader :id

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata

    # Name of the margin that's displayed on, for example, invoices.
    attr_reader :name

    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object

    # Percent that will be taken off the subtotal before tax (after all other discounts and promotions) of any invoice to which the margin is applied.
    attr_reader :percent_off

    # Time at which the object was last updated. Measured in seconds since the Unix epoch.
    attr_reader :updated

    # Create a margin object to be used with invoices, invoice items, and invoice line items for a customer to represent a partner discount. A margin has a percent_off which is the percent that will be taken off the subtotal after all items and other discounts and promotions) of any invoices for a customer. Calculation of prorations do not include any partner margins applied on the original invoice item.
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
