# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class InvoicePaymentService < StripeService
    class ListParams < Stripe::RequestParams
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      attr_accessor :limit
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      attr_accessor :starting_after

      def initialize(ending_before: nil, expand: nil, limit: nil, starting_after: nil)
        @ending_before = ending_before
        @expand = expand
        @limit = limit
        @starting_after = starting_after
      end
    end

    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand

      def initialize(expand: nil)
        @expand = expand
      end
    end

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
