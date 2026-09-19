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
    def report_authenticated(id, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/payment_attempt_records/%<id>s/report_authenticated", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Report that the specified Payment Attempt Record was authorized.
    def report_authorized(id, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/payment_attempt_records/%<id>s/report_authorized", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Report that the specified Payment Attempt Record was canceled.
    def report_canceled(id, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/payment_attempt_records/%<id>s/report_canceled", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Report that the specified Payment Attempt Record received an early fraud warning.
    def report_early_fraud_warning(id, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/payment_attempt_records/%<id>s/report_early_fraud_warning", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Report that the specified Payment Attempt Record failed.
    def report_failed(id, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/payment_attempt_records/%<id>s/report_failed", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Report that the specified Payment Attempt Record was guaranteed.
    def report_guaranteed(id, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/payment_attempt_records/%<id>s/report_guaranteed", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Report informational updates on the specified Payment Attempt Record.
    def report_informational(id, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/payment_attempt_records/%<id>s/report_informational", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Report that the specified Payment Attempt Record was refunded.
    def report_refund(id, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/payment_attempt_records/%<id>s/report_refund", { id: CGI.escape(id) }),
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
