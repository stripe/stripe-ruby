# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Treasury
    class InboundTransferService < StripeService
      class ListParams < Stripe::RequestParams
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # Returns objects associated with this FinancialAccount.
        attr_accessor :financial_account
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        attr_accessor :limit
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        attr_accessor :starting_after
        # Only return InboundTransfers that have the given status: `processing`, `succeeded`, `failed` or `canceled`.
        attr_accessor :status

        def initialize(
          ending_before: nil,
          expand: nil,
          financial_account: nil,
          limit: nil,
          starting_after: nil,
          status: nil
        )
          @ending_before = ending_before
          @expand = expand
          @financial_account = financial_account
          @limit = limit
          @starting_after = starting_after
          @status = status
        end
      end

      class CreateParams < Stripe::RequestParams
        # Amount (in cents) to be transferred.
        attr_accessor :amount
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        attr_accessor :currency
        # An arbitrary string attached to the object. Often useful for displaying to users.
        attr_accessor :description
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # The FinancialAccount to send funds to.
        attr_accessor :financial_account
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        attr_accessor :metadata
        # The origin payment method to be debited for the InboundTransfer.
        attr_accessor :origin_payment_method
        # The complete description that appears on your customers' statements. Maximum 10 characters.
        attr_accessor :statement_descriptor

        def initialize(
          amount: nil,
          currency: nil,
          description: nil,
          expand: nil,
          financial_account: nil,
          metadata: nil,
          origin_payment_method: nil,
          statement_descriptor: nil
        )
          @amount = amount
          @currency = currency
          @description = description
          @expand = expand
          @financial_account = financial_account
          @metadata = metadata
          @origin_payment_method = origin_payment_method
          @statement_descriptor = statement_descriptor
        end
      end

      class RetrieveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand

        def initialize(expand: nil)
          @expand = expand
        end
      end

      class CancelParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand

        def initialize(expand: nil)
          @expand = expand
        end
      end

      # Cancels an InboundTransfer.
      def cancel(inbound_transfer, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/treasury/inbound_transfers/%<inbound_transfer>s/cancel", { inbound_transfer: CGI.escape(inbound_transfer) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Creates an InboundTransfer.
      def create(params = {}, opts = {})
        request(
          method: :post,
          path: "/v1/treasury/inbound_transfers",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Returns a list of InboundTransfers sent from the specified FinancialAccount.
      def list(params = {}, opts = {})
        request(
          method: :get,
          path: "/v1/treasury/inbound_transfers",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Retrieves the details of an existing InboundTransfer.
      def retrieve(id, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/treasury/inbound_transfers/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
