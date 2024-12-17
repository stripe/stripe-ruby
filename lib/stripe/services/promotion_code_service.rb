# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class PromotionCodeService < StripeService
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
      # Filter promotion codes by whether they are active.
      attr_accessor :active
      # Only return promotion codes that have this case-insensitive code.
      attr_accessor :code
      # Only return promotion codes for this coupon.
      attr_accessor :coupon
      # A filter on the list, based on the object `created` field. The value can be a string with an integer Unix timestamp, or it can be a dictionary with a number of different query options.
      attr_accessor :created
      # Only return promotion codes that are restricted to this customer.
      attr_accessor :customer
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
        code: nil,
        coupon: nil,
        created: nil,
        customer: nil,
        ending_before: nil,
        expand: nil,
        limit: nil,
        starting_after: nil
      )
        @active = active
        @code = code
        @coupon = coupon
        @created = created
        @customer = customer
        @ending_before = ending_before
        @expand = expand
        @limit = limit
        @starting_after = starting_after
      end
    end

    class CreateParams < Stripe::RequestParams
      class Restrictions < Stripe::RequestParams
        class CurrencyOptions < Stripe::RequestParams
          # Minimum amount required to redeem this Promotion Code into a Coupon (e.g., a purchase must be $100 or more to work).
          attr_accessor :minimum_amount

          def initialize(minimum_amount: nil)
            @minimum_amount = minimum_amount
          end
        end
        # Promotion codes defined in each available currency option. Each key must be a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html) and a [supported currency](https://stripe.com/docs/currencies).
        attr_accessor :currency_options
        # A Boolean indicating if the Promotion Code should only be redeemed for Customers without any successful payments or invoices
        attr_accessor :first_time_transaction
        # Minimum amount required to redeem this Promotion Code into a Coupon (e.g., a purchase must be $100 or more to work).
        attr_accessor :minimum_amount
        # Three-letter [ISO code](https://stripe.com/docs/currencies) for minimum_amount
        attr_accessor :minimum_amount_currency

        def initialize(
          currency_options: nil,
          first_time_transaction: nil,
          minimum_amount: nil,
          minimum_amount_currency: nil
        )
          @currency_options = currency_options
          @first_time_transaction = first_time_transaction
          @minimum_amount = minimum_amount
          @minimum_amount_currency = minimum_amount_currency
        end
      end
      # Whether the promotion code is currently active.
      attr_accessor :active
      # The customer-facing code. Regardless of case, this code must be unique across all active promotion codes for a specific customer. Valid characters are lower case letters (a-z), upper case letters (A-Z), and digits (0-9).
      #
      # If left blank, we will generate one automatically.
      attr_accessor :code
      # The coupon for this promotion code.
      attr_accessor :coupon
      # The customer that this promotion code can be used by. If not set, the promotion code can be used by all customers.
      attr_accessor :customer
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # The timestamp at which this promotion code will expire. If the coupon has specified a `redeems_by`, then this value cannot be after the coupon's `redeems_by`.
      attr_accessor :expires_at
      # A positive integer specifying the number of times the promotion code can be redeemed. If the coupon has specified a `max_redemptions`, then this value cannot be greater than the coupon's `max_redemptions`.
      attr_accessor :max_redemptions
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata
      # Settings that restrict the redemption of the promotion code.
      attr_accessor :restrictions

      def initialize(
        active: nil,
        code: nil,
        coupon: nil,
        customer: nil,
        expand: nil,
        expires_at: nil,
        max_redemptions: nil,
        metadata: nil,
        restrictions: nil
      )
        @active = active
        @code = code
        @coupon = coupon
        @customer = customer
        @expand = expand
        @expires_at = expires_at
        @max_redemptions = max_redemptions
        @metadata = metadata
        @restrictions = restrictions
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
      class Restrictions < Stripe::RequestParams
        class CurrencyOptions < Stripe::RequestParams
          # Minimum amount required to redeem this Promotion Code into a Coupon (e.g., a purchase must be $100 or more to work).
          attr_accessor :minimum_amount

          def initialize(minimum_amount: nil)
            @minimum_amount = minimum_amount
          end
        end
        # Promotion codes defined in each available currency option. Each key must be a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html) and a [supported currency](https://stripe.com/docs/currencies).
        attr_accessor :currency_options

        def initialize(currency_options: nil)
          @currency_options = currency_options
        end
      end
      # Whether the promotion code is currently active. A promotion code can only be reactivated when the coupon is still valid and the promotion code is otherwise redeemable.
      attr_accessor :active
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata
      # Settings that restrict the redemption of the promotion code.
      attr_accessor :restrictions

      def initialize(active: nil, expand: nil, metadata: nil, restrictions: nil)
        @active = active
        @expand = expand
        @metadata = metadata
        @restrictions = restrictions
      end
    end

    # A promotion code points to a coupon. You can optionally restrict the code to a specific customer, redemption limit, and expiration date.
    def create(params = {}, opts = {})
      request(
        method: :post,
        path: "/v1/promotion_codes",
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Returns a list of your promotion codes.
    def list(params = {}, opts = {})
      request(
        method: :get,
        path: "/v1/promotion_codes",
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Retrieves the promotion code with the given ID. In order to retrieve a promotion code by the customer-facing code use [list](https://stripe.com/docs/api/promotion_codes/list) with the desired code.
    def retrieve(promotion_code, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/promotion_codes/%<promotion_code>s", { promotion_code: CGI.escape(promotion_code) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Updates the specified promotion code by setting the values of the parameters passed. Most fields are, by design, not editable.
    def update(promotion_code, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/promotion_codes/%<promotion_code>s", { promotion_code: CGI.escape(promotion_code) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
