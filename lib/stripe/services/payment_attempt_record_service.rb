# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class PaymentAttemptRecordService < StripeService
    class ListParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand

      # The ID of the Payment Record.
      attr_accessor :payment_record

      def initialize(expand: nil, payment_record: nil)
        @expand = expand
        @payment_record = payment_record
      end
    end

    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand

      def initialize(expand: nil)
        @expand = expand
      end
    end

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
