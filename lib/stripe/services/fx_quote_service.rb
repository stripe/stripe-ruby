# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class FxQuoteService < StripeService
    class ListParams < Stripe::RequestParams
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      attr_accessor :limit
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      attr_accessor :starting_after

      def initialize(ending_before: nil, expand: nil, limit: nil, starting_after: nil)
        @ending_before = ending_before
        @expand = expand
        @limit = limit
        @starting_after = starting_after
      end
    end

    class CreateParams < Stripe::RequestParams
      class Usage < Stripe::RequestParams
        class Payment < Stripe::RequestParams
          # The Stripe account ID that the funds will be transferred to.
          #
          # This field should match the account ID that would be used in the PaymentIntent’s transfer_data[destination] field.
          attr_accessor :destination
          # The Stripe account ID that these funds are intended for.
          #
          # This field should match the account ID that would be used in the PaymentIntent’s on_behalf_of field.
          attr_accessor :on_behalf_of

          def initialize(destination: nil, on_behalf_of: nil)
            @destination = destination
            @on_behalf_of = on_behalf_of
          end
        end

        class Transfer < Stripe::RequestParams
          # The Stripe account ID that the funds will be transferred to.
          #
          # This field should match the account ID that would be used in the Transfer’s destination field.
          attr_accessor :destination

          def initialize(destination: nil)
            @destination = destination
          end
        end
        # The payment transaction details that are intended for the FX Quote.
        attr_accessor :payment
        # The transfer transaction details that are intended for the FX Quote.
        attr_accessor :transfer
        # Which transaction the FX Quote will be used for
        #
        # Can be “payment” | “transfer”
        attr_accessor :type

        def initialize(payment: nil, transfer: nil, type: nil)
          @payment = payment
          @transfer = transfer
          @type = type
        end
      end
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A list of three letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be [supported currencies](https://stripe.com/docs/currencies).
      attr_accessor :from_currencies
      # The duration that you wish the quote to be locked for. The quote will be usable for the duration specified. The default is `none`. The maximum is 1 day.
      attr_accessor :lock_duration
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_accessor :to_currency
      # The usage specific information for the quote.
      attr_accessor :usage

      def initialize(
        expand: nil,
        from_currencies: nil,
        lock_duration: nil,
        to_currency: nil,
        usage: nil
      )
        @expand = expand
        @from_currencies = from_currencies
        @lock_duration = lock_duration
        @to_currency = to_currency
        @usage = usage
      end
    end

    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand

      def initialize(expand: nil)
        @expand = expand
      end
    end

    # Creates an FX Quote object
    def create(params = {}, opts = {})
      request(method: :post, path: "/v1/fx_quotes", params: params, opts: opts, base_address: :api)
    end

    # Returns a list of FX quotes that have been issued. The FX quotes are returned in sorted order, with the most recent FX quotes appearing first.
    def list(params = {}, opts = {})
      request(method: :get, path: "/v1/fx_quotes", params: params, opts: opts, base_address: :api)
    end

    # Retrieve an FX Quote object
    def retrieve(id, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/fx_quotes/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
