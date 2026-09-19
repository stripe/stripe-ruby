# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class PaymentAttemptRecordService < StripeService
    # List all the Payment Attempt Records attached to the specified Payment Record.
    sig {
      params(params: T.any(::Stripe::PaymentAttemptRecordListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
     }
    def list(params = {}, opts = {}); end

    # Report that the specified Payment Attempt Record was authenticated.
    sig {
      params(id: String, params: T.any(::Stripe::PaymentAttemptRecordReportAuthenticatedParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::PaymentAttemptRecord)
     }
    def report_authenticated(id, params = {}, opts = {}); end

    # Report that the specified Payment Attempt Record was authorized.
    sig {
      params(id: String, params: T.any(::Stripe::PaymentAttemptRecordReportAuthorizedParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::PaymentAttemptRecord)
     }
    def report_authorized(id, params = {}, opts = {}); end

    # Report that the specified Payment Attempt Record was canceled.
    sig {
      params(id: String, params: T.any(::Stripe::PaymentAttemptRecordReportCanceledParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::PaymentAttemptRecord)
     }
    def report_canceled(id, params = {}, opts = {}); end

    # Report that the specified Payment Attempt Record received an early fraud warning.
    sig {
      params(id: String, params: T.any(::Stripe::PaymentAttemptRecordReportEarlyFraudWarningParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::PaymentAttemptRecord)
     }
    def report_early_fraud_warning(id, params = {}, opts = {}); end

    # Report that the specified Payment Attempt Record failed.
    sig {
      params(id: String, params: T.any(::Stripe::PaymentAttemptRecordReportFailedParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::PaymentAttemptRecord)
     }
    def report_failed(id, params = {}, opts = {}); end

    # Report that the specified Payment Attempt Record was guaranteed.
    sig {
      params(id: String, params: T.any(::Stripe::PaymentAttemptRecordReportGuaranteedParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::PaymentAttemptRecord)
     }
    def report_guaranteed(id, params = {}, opts = {}); end

    # Report informational updates on the specified Payment Attempt Record.
    sig {
      params(id: String, params: T.any(::Stripe::PaymentAttemptRecordReportInformationalParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::PaymentAttemptRecord)
     }
    def report_informational(id, params = {}, opts = {}); end

    # Report that the specified Payment Attempt Record was refunded.
    sig {
      params(id: String, params: T.any(::Stripe::PaymentAttemptRecordReportRefundParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::PaymentAttemptRecord)
     }
    def report_refund(id, params = {}, opts = {}); end

    # Retrieves a Payment Attempt Record with the given ID
    sig {
      params(id: String, params: T.any(::Stripe::PaymentAttemptRecordRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::PaymentAttemptRecord)
     }
    def retrieve(id, params = {}, opts = {}); end
  end
end