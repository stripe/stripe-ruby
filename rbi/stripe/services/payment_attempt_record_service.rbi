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
      params(payment_attempt_record: String, params: T.any(::Stripe::PaymentAttemptRecordReportAuthenticatedParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::PaymentAttemptRecord)
     }
    def report_authenticated(payment_attempt_record, params = {}, opts = {}); end

    # Report that the specified Payment Attempt Record was authorized.
    sig {
      params(payment_attempt_record: String, params: T.any(::Stripe::PaymentAttemptRecordReportAuthorizedParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::PaymentAttemptRecord)
     }
    def report_authorized(payment_attempt_record, params = {}, opts = {}); end

    # Report that the specified Payment Attempt Record was canceled.
    sig {
      params(payment_attempt_record: String, params: T.any(::Stripe::PaymentAttemptRecordReportCanceledParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::PaymentAttemptRecord)
     }
    def report_canceled(payment_attempt_record, params = {}, opts = {}); end

    # Report that the specified Payment Attempt Record failed.
    sig {
      params(payment_attempt_record: String, params: T.any(::Stripe::PaymentAttemptRecordReportFailedParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::PaymentAttemptRecord)
     }
    def report_failed(payment_attempt_record, params = {}, opts = {}); end

    # Report that the specified Payment Attempt Record was guaranteed.
    sig {
      params(payment_attempt_record: String, params: T.any(::Stripe::PaymentAttemptRecordReportGuaranteedParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::PaymentAttemptRecord)
     }
    def report_guaranteed(payment_attempt_record, params = {}, opts = {}); end

    # Report informational updates on the specified Payment Attempt Record.
    sig {
      params(payment_attempt_record: String, params: T.any(::Stripe::PaymentAttemptRecordReportInformationalParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::PaymentAttemptRecord)
     }
    def report_informational(payment_attempt_record, params = {}, opts = {}); end

    # Report that the specified Payment Attempt Record was refunded.
    sig {
      params(payment_attempt_record: String, params: T.any(::Stripe::PaymentAttemptRecordReportRefundParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::PaymentAttemptRecord)
     }
    def report_refund(payment_attempt_record, params = {}, opts = {}); end

    # Retrieves a Payment Attempt Record with the given ID
    sig {
      params(id: String, params: T.any(::Stripe::PaymentAttemptRecordRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::PaymentAttemptRecord)
     }
    def retrieve(id, params = {}, opts = {}); end
  end
end