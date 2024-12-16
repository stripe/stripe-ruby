# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # You can add one or multiple tax IDs to a [customer](https://stripe.com/docs/api/customers) or account.
  # Customer and account tax IDs get displayed on related invoices and credit notes.
  #
  # Related guides: [Customer tax identification numbers](https://stripe.com/docs/billing/taxes/tax-ids), [Account tax IDs](https://stripe.com/docs/invoicing/connect#account-tax-ids)
  class TaxId < APIResource
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Delete
    extend Stripe::APIOperations::List

    OBJECT_NAME = "tax_id"
    def self.object_name
      "tax_id"
    end

    # Creates a new account or customer tax_id object.
    def self.create(params = {}, opts = {})
      request_stripe_object(method: :post, path: "/v1/tax_ids", params: params, opts: opts)
    end

    # Deletes an existing account or customer tax_id object.
    def self.delete(id, params = {}, opts = {})
      request_stripe_object(
        method: :delete,
        path: format("/v1/tax_ids/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end

    # Deletes an existing account or customer tax_id object.
    def delete(params = {}, opts = {})
      request_stripe_object(
        method: :delete,
        path: format("/v1/tax_ids/%<id>s", { id: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Returns a list of tax IDs.
    def self.list(params = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/tax_ids", params: params, opts: opts)
    end
  end
end
