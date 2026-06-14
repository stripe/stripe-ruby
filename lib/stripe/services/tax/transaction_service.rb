# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Tax
    class TransactionService < StripeService
      attr_reader :line_items

      def initialize(requestor)
        super
        @line_items = Stripe::Tax::TransactionLineItemService.new(@requestor)
      end

      # Creates a Tax Transaction from a calculation, if that calculation hasn't expired. Calculations expire after 90 days.
      def create_from_calculation(params = {}, opts = {})
        request(
          method: :post,
          path: "/v1/tax/transactions/create_from_calculation",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Partially or fully reverses a previously created Transaction.
      def create_reversal(params = {}, opts = {})
        request(
          method: :post,
          path: "/v1/tax/transactions/create_reversal",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Retrieves a Tax Transaction object.
      def retrieve(transaction, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/tax/transactions/%<transaction>s", { transaction: CGI.escape(transaction) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Serializes a Transaction create_reversal request into a batch job JSONL line.
      def serialize_batch_create_reversal(params = {}, opts = {})
        request_id = SecureRandom.uuid
        stripe_version = opts[:stripe_version] || Stripe.api_version

        request_body = {
          id: request_id,
          params: params,
          stripe_version: stripe_version,
        }
        request_body[:context] = opts[:stripe_context] if opts[:stripe_context]
        JSON.generate(request_body)
      end
    end
  end
end
