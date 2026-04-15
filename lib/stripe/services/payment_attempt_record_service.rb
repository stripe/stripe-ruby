# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class PaymentAttemptRecordService < StripeService
    # List all the Payment Attempt Records attached to the specified Payment Record.
    def list(params = {}, opts = {})
      request(
        method: :get,
        path: "/v1/payment_attempt_records",
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Report that the specified Payment Attempt Record was authenticated.
    def report_authenticated(payment_attempt_record, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/payment_attempt_records/%<payment_attempt_record>s/report_authenticated", { payment_attempt_record: CGI.escape(payment_attempt_record) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Report that the specified Payment Attempt Record was authorized.
    def report_authorized(payment_attempt_record, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/payment_attempt_records/%<payment_attempt_record>s/report_authorized", { payment_attempt_record: CGI.escape(payment_attempt_record) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Report that the specified Payment Attempt Record was canceled.
    def report_canceled(payment_attempt_record, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/payment_attempt_records/%<payment_attempt_record>s/report_canceled", { payment_attempt_record: CGI.escape(payment_attempt_record) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Report that the specified Payment Attempt Record failed.
    def report_failed(payment_attempt_record, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/payment_attempt_records/%<payment_attempt_record>s/report_failed", { payment_attempt_record: CGI.escape(payment_attempt_record) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Report that the specified Payment Attempt Record was guaranteed.
    def report_guaranteed(payment_attempt_record, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/payment_attempt_records/%<payment_attempt_record>s/report_guaranteed", { payment_attempt_record: CGI.escape(payment_attempt_record) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Report informational updates on the specified Payment Attempt Record.
    def report_informational(payment_attempt_record, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/payment_attempt_records/%<payment_attempt_record>s/report_informational", { payment_attempt_record: CGI.escape(payment_attempt_record) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Report that the specified Payment Attempt Record was refunded.
    def report_refund(payment_attempt_record, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/payment_attempt_records/%<payment_attempt_record>s/report_refund", { payment_attempt_record: CGI.escape(payment_attempt_record) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Retrieves a Payment Attempt Record with the given ID
    def retrieve(id, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/payment_attempt_records/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
