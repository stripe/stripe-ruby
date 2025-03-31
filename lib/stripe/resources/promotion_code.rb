# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # A Promotion Code represents a customer-redeemable code for a [coupon](https://stripe.com/docs/api#coupons). It can be used to
  # create multiple codes for a single coupon.
  class PromotionCode < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "promotion_code"
    def self.object_name
      "promotion_code"
    end

    class Restrictions < Stripe::StripeObject
      class CurrencyOptions < Stripe::StripeObject
        # Minimum amount required to redeem this Promotion Code into a Coupon (e.g., a purchase must be $100 or more to work).
        attr_reader :minimum_amount
      end
      # Promotion code restrictions defined in each available currency option. Each key must be a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html) and a [supported currency](https://stripe.com/docs/currencies).
      attr_reader :currency_options
      # A Boolean indicating if the Promotion Code should only be redeemed for Customers without any successful payments or invoices
      attr_reader :first_time_transaction
      # Minimum amount required to redeem this Promotion Code into a Coupon (e.g., a purchase must be $100 or more to work).
      attr_reader :minimum_amount
      # Three-letter [ISO code](https://stripe.com/docs/currencies) for minimum_amount
      attr_reader :minimum_amount_currency
    end

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
    # Whether the promotion code is currently active. A promotion code is only active if the coupon is also valid.
    attr_reader :active
    # The customer-facing code. Regardless of case, this code must be unique across all active promotion codes for each customer. Valid characters are lower case letters (a-z), upper case letters (A-Z), and digits (0-9).
    attr_reader :code
    # A coupon contains information about a percent-off or amount-off discount you
    # might want to apply to a customer. Coupons may be applied to [subscriptions](https://stripe.com/docs/api#subscriptions), [invoices](https://stripe.com/docs/api#invoices),
    # [checkout sessions](https://stripe.com/docs/api/checkout/sessions), [quotes](https://stripe.com/docs/api#quotes), and more. Coupons do not work with conventional one-off [charges](https://stripe.com/docs/api#create_charge) or [payment intents](https://stripe.com/docs/api/payment_intents).
    attr_reader :coupon
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    # The customer that this promotion code can be used by.
    attr_reader :customer
    # Date at which the promotion code can no longer be redeemed.
    attr_reader :expires_at
    # Unique identifier for the object.
    attr_reader :id
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    # Maximum number of times this promotion code can be redeemed.
    attr_reader :max_redemptions
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # Attribute for field restrictions
    attr_reader :restrictions
    # Number of times this promotion code has been used.
    attr_reader :times_redeemed

    # A promotion code points to a coupon. You can optionally restrict the code to a specific customer, redemption limit, and expiration date.
    def self.create(params = {}, opts = {})
      request_stripe_object(method: :post, path: "/v1/promotion_codes", params: params, opts: opts)
    end

    # Returns a list of your promotion codes.
    def self.list(params = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/promotion_codes", params: params, opts: opts)
    end

    # Updates the specified promotion code by setting the values of the parameters passed. Most fields are, by design, not editable.
    def self.update(promotion_code, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/promotion_codes/%<promotion_code>s", { promotion_code: CGI.escape(promotion_code) }),
        params: params,
        opts: opts
      )
    end
  end
end
