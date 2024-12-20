# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Climate
    class OrderService < StripeService
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
        class Beneficiary < Stripe::RequestParams
          # Publicly displayable name for the end beneficiary of carbon removal.
          attr_accessor :public_name

          def initialize(public_name: nil)
            @public_name = public_name
          end
        end
        # Requested amount of carbon removal units. Either this or `metric_tons` must be specified.
        attr_accessor :amount
        # Publicly sharable reference for the end beneficiary of carbon removal. Assumed to be the Stripe account if not set.
        attr_accessor :beneficiary
        # Request currency for the order as a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a supported [settlement currency for your account](https://stripe.com/docs/currencies). If omitted, the account's default currency will be used.
        attr_accessor :currency
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        attr_accessor :metadata
        # Requested number of tons for the order. Either this or `amount` must be specified.
        attr_accessor :metric_tons
        # Unique identifier of the Climate product.
        attr_accessor :product

        def initialize(
          amount: nil,
          beneficiary: nil,
          currency: nil,
          expand: nil,
          metadata: nil,
          metric_tons: nil,
          product: nil
        )
          @amount = amount
          @beneficiary = beneficiary
          @currency = currency
          @expand = expand
          @metadata = metadata
          @metric_tons = metric_tons
          @product = product
        end
      end

      class RetrieveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand

        def initialize(expand: nil)
          @expand = expand
        end
      end

      class UpdateParams < Stripe::RequestParams
        class Beneficiary < Stripe::RequestParams
          # Publicly displayable name for the end beneficiary of carbon removal.
          attr_accessor :public_name

          def initialize(public_name: nil)
            @public_name = public_name
          end
        end
        # Publicly sharable reference for the end beneficiary of carbon removal. Assumed to be the Stripe account if not set.
        attr_accessor :beneficiary
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        attr_accessor :metadata

        def initialize(beneficiary: nil, expand: nil, metadata: nil)
          @beneficiary = beneficiary
          @expand = expand
          @metadata = metadata
        end
      end

      class CancelParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand

        def initialize(expand: nil)
          @expand = expand
        end
      end

      # Cancels a Climate order. You can cancel an order within 24 hours of creation. Stripe refunds the
      # reservation amount_subtotal, but not the amount_fees for user-triggered cancellations. Frontier
      # might cancel reservations if suppliers fail to deliver. If Frontier cancels the reservation, Stripe
      # provides 90 days advance notice and refunds the amount_total.
      def cancel(order, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/climate/orders/%<order>s/cancel", { order: CGI.escape(order) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Creates a Climate order object for a given Climate product. The order will be processed immediately
      # after creation and payment will be deducted your Stripe balance.
      def create(params = {}, opts = {})
        request(
          method: :post,
          path: "/v1/climate/orders",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Lists all Climate order objects. The orders are returned sorted by creation date, with the
      # most recently created orders appearing first.
      def list(params = {}, opts = {})
        request(
          method: :get,
          path: "/v1/climate/orders",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Retrieves the details of a Climate order object with the given ID.
      def retrieve(order, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/climate/orders/%<order>s", { order: CGI.escape(order) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Updates the specified order by setting the values of the parameters passed.
      def update(order, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/climate/orders/%<order>s", { order: CGI.escape(order) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
