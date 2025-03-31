# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class InvoicePaymentService < StripeService
    class ListParams < Stripe::RequestParams
      class Payment < Stripe::RequestParams
        # Only return invoice payments associated by this payment intent ID.
        attr_accessor :payment_intent
        # Only return invoice payments associated by this payment type.
        attr_accessor :type

        def initialize(payment_intent: nil, type: nil)
          @payment_intent = payment_intent
          @type = type
        end
      end
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # The identifier of the invoice whose payments to return.
      attr_accessor :invoice
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      attr_accessor :limit
      # The payment details of the invoice payments to return.
      attr_accessor :payment
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      attr_accessor :starting_after
      # The status of the invoice payments to return.
      attr_accessor :status

      def initialize(
        ending_before: nil,
        expand: nil,
        invoice: nil,
        limit: nil,
        payment: nil,
        starting_after: nil,
        status: nil
      )
        @ending_before = ending_before
        @expand = expand
        @invoice = invoice
        @limit = limit
        @payment = payment
        @starting_after = starting_after
        @status = status
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
    def list(params = {}, opts = {})
      request(
        method: :get,
        path: "/v1/invoice_payments",
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Retrieves the invoice payment with the given ID.
    def retrieve(invoice_payment, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/invoice_payments/%<invoice_payment>s", { invoice_payment: CGI.escape(invoice_payment) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
