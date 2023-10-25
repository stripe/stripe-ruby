# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Issuing
    # Every time an applicant submits an application for a Charge Card product your platform offers, or every time your platform takes a proactive credit decision on an existing account, you must record the decision by creating a new `CreditUnderwritingRecord` object on a connected account.
    #
    # [Follow the guide](https://stripe.com/docs/issuing/credit/report-credit-decisions-and-manage-aans) to learn about your requirements as a platform.
    class CreditUnderwritingRecord < APIResource
      extend Stripe::APIOperations::List

      OBJECT_NAME = "issuing.credit_underwriting_record"

      def correct(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/issuing/credit_underwriting_records/%<credit_underwriting_record>s/correct", { credit_underwriting_record: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      def report_decision(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/issuing/credit_underwriting_records/%<credit_underwriting_record>s/report_decision", { credit_underwriting_record: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      def self.correct(credit_underwriting_record, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/issuing/credit_underwriting_records/%<credit_underwriting_record>s/correct", { credit_underwriting_record: CGI.escape(credit_underwriting_record) }),
          params: params,
          opts: opts
        )
      end

      def self.create_from_application(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/issuing/credit_underwriting_records/create_from_application",
          params: params,
          opts: opts
        )
      end

      def self.create_from_proactive_review(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/issuing/credit_underwriting_records/create_from_proactive_review",
          params: params,
          opts: opts
        )
      end

      def self.report_decision(credit_underwriting_record, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/issuing/credit_underwriting_records/%<credit_underwriting_record>s/report_decision", { credit_underwriting_record: CGI.escape(credit_underwriting_record) }),
          params: params,
          opts: opts
        )
      end
    end
  end
end
