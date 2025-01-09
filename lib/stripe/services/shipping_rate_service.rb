# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class ShippingRateService < StripeService
    class ListParams < Stripe::RequestParams
      class Created < Stripe::RequestParams
        # Minimum value to filter by (exclusive)
        attr_accessor :gt
        # Minimum value to filter by (inclusive)
        attr_accessor :gte
        # Maximum value to filter by (exclusive)
        attr_accessor :lt
        # Maximum value to filter by (inclusive)
        attr_accessor :lte

        def initialize(gt: nil, gte: nil, lt: nil, lte: nil)
          @gt = gt
          @gte = gte
          @lt = lt
          @lte = lte
        end
      end
      # Only return shipping rates that are active or inactive.
      attr_accessor :active
      # A filter on the list, based on the object `created` field. The value can be a string with an integer Unix timestamp, or it can be a dictionary with a number of different query options.
      attr_accessor :created
      # Only return shipping rates for the given currency.
      attr_accessor :currency
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      attr_accessor :limit
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      attr_accessor :starting_after

      def initialize(
        active: nil,
        created: nil,
        currency: nil,
        ending_before: nil,
        expand: nil,
        limit: nil,
        starting_after: nil
      )
        @active = active
        @created = created
        @currency = currency
        @ending_before = ending_before
        @expand = expand
        @limit = limit
        @starting_after = starting_after
      end
    end

    class CreateParams < Stripe::RequestParams
      class DeliveryEstimate < Stripe::RequestParams
        class Maximum < Stripe::RequestParams
          # A unit of time.
          attr_accessor :unit
          # Must be greater than 0.
          attr_accessor :value

          def initialize(unit: nil, value: nil)
            @unit = unit
            @value = value
          end
        end

        class Minimum < Stripe::RequestParams
          # A unit of time.
          attr_accessor :unit
          # Must be greater than 0.
          attr_accessor :value

          def initialize(unit: nil, value: nil)
            @unit = unit
            @value = value
          end
        end
        # The upper bound of the estimated range. If empty, represents no upper bound i.e., infinite.
        attr_accessor :maximum
        # The lower bound of the estimated range. If empty, represents no lower bound.
        attr_accessor :minimum

        def initialize(maximum: nil, minimum: nil)
          @maximum = maximum
          @minimum = minimum
        end
      end

      class FixedAmount < Stripe::RequestParams
        class CurrencyOptions < Stripe::RequestParams
          # A non-negative integer in cents representing how much to charge.
          attr_accessor :amount
          # Specifies whether the rate is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`.
          attr_accessor :tax_behavior

          def initialize(amount: nil, tax_behavior: nil)
            @amount = amount
            @tax_behavior = tax_behavior
          end
        end
        # A non-negative integer in cents representing how much to charge.
        attr_accessor :amount
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        attr_accessor :currency
        # Shipping rates defined in each available currency option. Each key must be a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html) and a [supported currency](https://stripe.com/docs/currencies).
        attr_accessor :currency_options

        def initialize(amount: nil, currency: nil, currency_options: nil)
          @amount = amount
          @currency = currency
          @currency_options = currency_options
        end
      end
      # The estimated range for how long shipping will take, meant to be displayable to the customer. This will appear on CheckoutSessions.
      attr_accessor :delivery_estimate
      # The name of the shipping rate, meant to be displayable to the customer. This will appear on CheckoutSessions.
      attr_accessor :display_name
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Describes a fixed amount to charge for shipping. Must be present if type is `fixed_amount`.
      attr_accessor :fixed_amount
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata
      # Specifies whether the rate is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`.
      attr_accessor :tax_behavior
      # A [tax code](https://stripe.com/docs/tax/tax-categories) ID. The Shipping tax code is `txcd_92010001`.
      attr_accessor :tax_code
      # The type of calculation to use on the shipping rate.
      attr_accessor :type

      def initialize(
        delivery_estimate: nil,
        display_name: nil,
        expand: nil,
        fixed_amount: nil,
        metadata: nil,
        tax_behavior: nil,
        tax_code: nil,
        type: nil
      )
        @delivery_estimate = delivery_estimate
        @display_name = display_name
        @expand = expand
        @fixed_amount = fixed_amount
        @metadata = metadata
        @tax_behavior = tax_behavior
        @tax_code = tax_code
        @type = type
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
      class FixedAmount < Stripe::RequestParams
        class CurrencyOptions < Stripe::RequestParams
          # A non-negative integer in cents representing how much to charge.
          attr_accessor :amount
          # Specifies whether the rate is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`.
          attr_accessor :tax_behavior

          def initialize(amount: nil, tax_behavior: nil)
            @amount = amount
            @tax_behavior = tax_behavior
          end
        end
        # Shipping rates defined in each available currency option. Each key must be a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html) and a [supported currency](https://stripe.com/docs/currencies).
        attr_accessor :currency_options

        def initialize(currency_options: nil)
          @currency_options = currency_options
        end
      end
      # Whether the shipping rate can be used for new purchases. Defaults to `true`.
      attr_accessor :active
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Describes a fixed amount to charge for shipping. Must be present if type is `fixed_amount`.
      attr_accessor :fixed_amount
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata
      # Specifies whether the rate is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`.
      attr_accessor :tax_behavior

      def initialize(active: nil, expand: nil, fixed_amount: nil, metadata: nil, tax_behavior: nil)
        @active = active
        @expand = expand
        @fixed_amount = fixed_amount
        @metadata = metadata
        @tax_behavior = tax_behavior
      end
    end

    # Creates a new shipping rate object.
    def create(params = {}, opts = {})
      request(
        method: :post,
        path: "/v1/shipping_rates",
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Returns a list of your shipping rates.
    def list(params = {}, opts = {})
      request(
        method: :get,
        path: "/v1/shipping_rates",
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Returns the shipping rate object with the given ID.
    def retrieve(shipping_rate_token, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/shipping_rates/%<shipping_rate_token>s", { shipping_rate_token: CGI.escape(shipping_rate_token) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Updates an existing shipping rate object.
    def update(shipping_rate_token, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/shipping_rates/%<shipping_rate_token>s", { shipping_rate_token: CGI.escape(shipping_rate_token) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
