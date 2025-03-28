# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Treasury
    class OutboundTransferService < StripeService
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
        # Only return OutboundTransfers that have the given status: `processing`, `canceled`, `failed`, `posted`, or `returned`.
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
        class DestinationPaymentMethodData < Stripe::RequestParams
          # Required if type is set to `financial_account`. The FinancialAccount ID to send funds to.
          attr_accessor :financial_account
          # The type of the destination.
          attr_accessor :type

          def initialize(financial_account: nil, type: nil)
            @financial_account = financial_account
            @type = type
          end
        end

        class DestinationPaymentMethodOptions < Stripe::RequestParams
          class UsBankAccount < Stripe::RequestParams
            # Specifies the network rails to be used. If not set, will default to the PaymentMethod's preferred network. See the [docs](https://stripe.com/docs/treasury/money-movement/timelines) to learn more about money movement timelines for each network type.
            attr_accessor :network

            def initialize(network: nil)
              @network = network
            end
          end
          # Optional fields for `us_bank_account`.
          attr_accessor :us_bank_account

          def initialize(us_bank_account: nil)
            @us_bank_account = us_bank_account
          end
        end
        # Amount (in cents) to be transferred.
        attr_accessor :amount
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        attr_accessor :currency
        # An arbitrary string attached to the object. Often useful for displaying to users.
        attr_accessor :description
        # The PaymentMethod to use as the payment instrument for the OutboundTransfer.
        attr_accessor :destination_payment_method
        # Hash used to generate the PaymentMethod to be used for this OutboundTransfer. Exclusive with `destination_payment_method`.
        attr_accessor :destination_payment_method_data
        # Hash describing payment method configuration details.
        attr_accessor :destination_payment_method_options
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # The FinancialAccount to pull funds from.
        attr_accessor :financial_account
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        attr_accessor :metadata
        # Statement descriptor to be shown on the receiving end of an OutboundTransfer. Maximum 10 characters for `ach` transfers or 140 characters for `us_domestic_wire` transfers. The default value is "transfer".
        attr_accessor :statement_descriptor

        def initialize(
          amount: nil,
          currency: nil,
          description: nil,
          destination_payment_method: nil,
          destination_payment_method_data: nil,
          destination_payment_method_options: nil,
          expand: nil,
          financial_account: nil,
          metadata: nil,
          statement_descriptor: nil
        )
          @amount = amount
          @currency = currency
          @description = description
          @destination_payment_method = destination_payment_method
          @destination_payment_method_data = destination_payment_method_data
          @destination_payment_method_options = destination_payment_method_options
          @expand = expand
          @financial_account = financial_account
          @metadata = metadata
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

      # An OutboundTransfer can be canceled if the funds have not yet been paid out.
      def cancel(outbound_transfer, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/treasury/outbound_transfers/%<outbound_transfer>s/cancel", { outbound_transfer: CGI.escape(outbound_transfer) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Creates an OutboundTransfer.
      def create(params = {}, opts = {})
        request(
          method: :post,
          path: "/v1/treasury/outbound_transfers",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Returns a list of OutboundTransfers sent from the specified FinancialAccount.
      def list(params = {}, opts = {})
        request(
          method: :get,
          path: "/v1/treasury/outbound_transfers",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Retrieves the details of an existing OutboundTransfer by passing the unique OutboundTransfer ID from either the OutboundTransfer creation request or OutboundTransfer list.
      def retrieve(outbound_transfer, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/treasury/outbound_transfers/%<outbound_transfer>s", { outbound_transfer: CGI.escape(outbound_transfer) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
