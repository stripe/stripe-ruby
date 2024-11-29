# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # A Payment Record is a resource that allows you to represent payments that occur on- or off-Stripe.
  # For example, you can create a Payment Record to model a payment made on a different payment processor,
  # in order to mark an Invoice as paid and a Subscription as active. Payment Records consist of one or
  # more Payment Attempt Records, which represent individual attempts made on a payment network.
  class PaymentRecord < APIResource
    OBJECT_NAME = "payment_record"
    def self.object_name
      "payment_record"
    end

    # Report a new Payment Record. You may report a Payment Record as it is
    #  initialized and later report updates through the other report_* methods, or report Payment
    #  Records in a terminal state directly, through this method.
    def self.report_payment(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: "/v1/payment_records/report_payment",
        params: params,
        opts: opts
      )
    end

    # Report a new payment attempt on the specified Payment Record. A new payment
    #  attempt can only be specified if all other payment attempts are canceled or failed.
    def report_payment_attempt(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_records/%<id>s/report_payment_attempt", { id: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Report a new payment attempt on the specified Payment Record. A new payment
    #  attempt can only be specified if all other payment attempts are canceled or failed.
    def self.report_payment_attempt(id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_records/%<id>s/report_payment_attempt", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end

    # Report that the most recent payment attempt on the specified Payment Record
    #  was canceled.
    def report_payment_attempt_canceled(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_records/%<id>s/report_payment_attempt_canceled", { id: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Report that the most recent payment attempt on the specified Payment Record
    #  was canceled.
    def self.report_payment_attempt_canceled(id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_records/%<id>s/report_payment_attempt_canceled", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end

    # Report that the most recent payment attempt on the specified Payment Record
    #  failed or errored.
    def report_payment_attempt_failed(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_records/%<id>s/report_payment_attempt_failed", { id: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Report that the most recent payment attempt on the specified Payment Record
    #  failed or errored.
    def self.report_payment_attempt_failed(id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_records/%<id>s/report_payment_attempt_failed", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end

    # Report that the most recent payment attempt on the specified Payment Record
    #  was guaranteed.
    def report_payment_attempt_guaranteed(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_records/%<id>s/report_payment_attempt_guaranteed", { id: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Report that the most recent payment attempt on the specified Payment Record
    #  was guaranteed.
    def self.report_payment_attempt_guaranteed(id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_records/%<id>s/report_payment_attempt_guaranteed", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end
  end
end
