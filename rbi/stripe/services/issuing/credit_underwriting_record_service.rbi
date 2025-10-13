# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Issuing
    class CreditUnderwritingRecordService < StripeService
      # Update a CreditUnderwritingRecord object to correct mistakes.
      sig {
        params(credit_underwriting_record: String, params: T.any(::Stripe::Issuing::CreditUnderwritingRecordCorrectParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Issuing::CreditUnderwritingRecord)
       }
      def correct(credit_underwriting_record, params = {}, opts = {}); end

      # Creates a CreditUnderwritingRecord object with information about a credit application submission.
      sig {
        params(params: T.any(::Stripe::Issuing::CreditUnderwritingRecordCreateFromApplicationParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Issuing::CreditUnderwritingRecord)
       }
      def create_from_application(params = {}, opts = {}); end

      # Creates a CreditUnderwritingRecord object from an underwriting decision coming from a proactive review of an existing accountholder.
      sig {
        params(params: T.any(::Stripe::Issuing::CreditUnderwritingRecordCreateFromProactiveReviewParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Issuing::CreditUnderwritingRecord)
       }
      def create_from_proactive_review(params = {}, opts = {}); end

      # Retrieves a list of CreditUnderwritingRecord objects. The objects are sorted in descending order by creation date, with the most-recently-created object appearing first.
      sig {
        params(params: T.any(::Stripe::Issuing::CreditUnderwritingRecordListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
       }
      def list(params = {}, opts = {}); end

      # Update a CreditUnderwritingRecord object from a decision made on a credit application.
      sig {
        params(credit_underwriting_record: String, params: T.any(::Stripe::Issuing::CreditUnderwritingRecordReportDecisionParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Issuing::CreditUnderwritingRecord)
       }
      def report_decision(credit_underwriting_record, params = {}, opts = {}); end

      # Retrieves a CreditUnderwritingRecord object.
      sig {
        params(credit_underwriting_record: String, params: T.any(::Stripe::Issuing::CreditUnderwritingRecordRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Issuing::CreditUnderwritingRecord)
       }
      def retrieve(credit_underwriting_record, params = {}, opts = {}); end
    end
  end
end