# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class InvoicePaymentService < StripeService
    # When retrieving an invoice, there is an includable payments property containing the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of payments.
    def list(invoice, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/invoices/%<invoice>s/payments", { invoice: CGI.escape(invoice) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Retrieves the invoice payment with the given ID.
    def retrieve(invoice, invoice_payment, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/invoices/%<invoice>s/payments/%<invoice_payment>s", { invoice: CGI.escape(invoice), invoice_payment: CGI.escape(invoice_payment) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
