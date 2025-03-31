# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # The invoice payment object
  class InvoicePayment < APIResource
    extend Stripe::APIOperations::List

    OBJECT_NAME = "invoice_payment"
    def self.object_name
      "invoice_payment"
    end

    # When retrieving an invoice, there is an includable payments property containing the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of payments.
    def self.list(params = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/invoice_payments", params: params, opts: opts)
    end
  end
end
