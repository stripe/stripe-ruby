# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Issuing
    class CreditUnderwritingRecordService < StripeService
      # Update a CreditUnderwritingRecord object to correct mistakes.
      def correct(credit_underwriting_record, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/issuing/credit_underwriting_records/%<credit_underwriting_record>s/correct", { credit_underwriting_record: CGI.escape(credit_underwriting_record) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Creates a CreditUnderwritingRecord object with information about a credit application submission.
      def create_from_application(params = {}, opts = {})
        request(
          method: :post,
          path: "/v1/issuing/credit_underwriting_records/create_from_application",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Creates a CreditUnderwritingRecord object from an underwriting decision coming from a proactive review of an existing accountholder.
      def create_from_proactive_review(params = {}, opts = {})
        request(
          method: :post,
          path: "/v1/issuing/credit_underwriting_records/create_from_proactive_review",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Retrieves a list of CreditUnderwritingRecord objects. The objects are sorted in descending order by creation date, with the most-recently-created object appearing first.
      def list(params = {}, opts = {})
        request(
          method: :get,
          path: "/v1/issuing/credit_underwriting_records",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Update a CreditUnderwritingRecord object from a decision made on a credit application.
      def report_decision(credit_underwriting_record, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/issuing/credit_underwriting_records/%<credit_underwriting_record>s/report_decision", { credit_underwriting_record: CGI.escape(credit_underwriting_record) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Retrieves a CreditUnderwritingRecord object.
      def retrieve(credit_underwriting_record, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/issuing/credit_underwriting_records/%<credit_underwriting_record>s", { credit_underwriting_record: CGI.escape(credit_underwriting_record) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
