# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # A coupon contains information about a percent-off or amount-off discount you
  # might want to apply to a customer. Coupons may be applied to [subscriptions](https://stripe.com/docs/api#subscriptions), [invoices](https://stripe.com/docs/api#invoices),
  # [checkout sessions](https://stripe.com/docs/api/checkout/sessions), [quotes](https://stripe.com/docs/api#quotes), and more. Coupons do not work with conventional one-off [charges](https://stripe.com/docs/api#create_charge) or [payment intents](https://stripe.com/docs/api/payment_intents).
  class Coupon < APIResource
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Delete
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "coupon"
    def self.object_name
      "coupon"
    end

    class AppliesTo < Stripe::StripeObject
      # A list of product IDs this coupon applies to
      attr_reader :products
    end

    class CurrencyOptions < Stripe::StripeObject
      # Amount (in the `currency` specified) that will be taken off the subtotal of any invoices for this customer.
      attr_reader :amount_off
    end

    class DeleteParams < Stripe::RequestParams; end

    class UpdateParams < Stripe::RequestParams
      class CurrencyOptions < Stripe::RequestParams
        # A positive integer representing the amount to subtract from an invoice total.
        attr_accessor :amount_off

        def initialize(amount_off: nil)
          @amount_off = amount_off
        end
      end
      # Coupons defined in each available currency option (only supported if the coupon is amount-based). Each key must be a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html) and a [supported currency](https://stripe.com/docs/currencies).
      attr_accessor :currency_options
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata
      # Name of the coupon displayed to customers on, for instance invoices, or receipts. By default the `id` is shown if `name` is not set.
      attr_accessor :name

      def initialize(currency_options: nil, expand: nil, metadata: nil, name: nil)
        @currency_options = currency_options
        @expand = expand
        @metadata = metadata
        @name = name
      end
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
      # A filter on the list, based on the object `created` field. The value can be a string with an integer Unix timestamp, or it can be a dictionary with a number of different query options.
      attr_accessor :created
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      attr_accessor :limit
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      attr_accessor :starting_after

      def initialize(created: nil, ending_before: nil, expand: nil, limit: nil, starting_after: nil)
        @created = created
        @ending_before = ending_before
        @expand = expand
        @limit = limit
        @starting_after = starting_after
      end
    end

    class CreateParams < Stripe::RequestParams
      class AppliesTo < Stripe::RequestParams
        # An array of Product IDs that this Coupon will apply to.
        attr_accessor :products

        def initialize(products: nil)
          @products = products
        end
      end

      class CurrencyOptions < Stripe::RequestParams
        # A positive integer representing the amount to subtract from an invoice total.
        attr_accessor :amount_off

        def initialize(amount_off: nil)
          @amount_off = amount_off
        end
      end
      # A positive integer representing the amount to subtract from an invoice total (required if `percent_off` is not passed).
      attr_accessor :amount_off
      # A hash containing directions for what this Coupon will apply discounts to.
      attr_accessor :applies_to
      # Three-letter [ISO code for the currency](https://stripe.com/docs/currencies) of the `amount_off` parameter (required if `amount_off` is passed).
      attr_accessor :currency
      # Coupons defined in each available currency option (only supported if `amount_off` is passed). Each key must be a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html) and a [supported currency](https://stripe.com/docs/currencies).
      attr_accessor :currency_options
      # Specifies how long the discount will be in effect if used on a subscription. Defaults to `once`.
      attr_accessor :duration
      # Required only if `duration` is `repeating`, in which case it must be a positive integer that specifies the number of months the discount will be in effect.
      attr_accessor :duration_in_months
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Unique string of your choice that will be used to identify this coupon when applying it to a customer. If you don't want to specify a particular code, you can leave the ID blank and we'll generate a random code for you.
      attr_accessor :id
      # A positive integer specifying the number of times the coupon can be redeemed before it's no longer valid. For example, you might have a 50% off coupon that the first 20 readers of your blog can use.
      attr_accessor :max_redemptions
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata
      # Name of the coupon displayed to customers on, for instance invoices, or receipts. By default the `id` is shown if `name` is not set.
      attr_accessor :name
      # A positive float larger than 0, and smaller or equal to 100, that represents the discount the coupon will apply (required if `amount_off` is not passed).
      attr_accessor :percent_off
      # Unix timestamp specifying the last time at which the coupon can be redeemed. After the redeem_by date, the coupon can no longer be applied to new customers.
      attr_accessor :redeem_by

      def initialize(
        amount_off: nil,
        applies_to: nil,
        currency: nil,
        currency_options: nil,
        duration: nil,
        duration_in_months: nil,
        expand: nil,
        id: nil,
        max_redemptions: nil,
        metadata: nil,
        name: nil,
        percent_off: nil,
        redeem_by: nil
      )
        @amount_off = amount_off
        @applies_to = applies_to
        @currency = currency
        @currency_options = currency_options
        @duration = duration
        @duration_in_months = duration_in_months
        @expand = expand
        @id = id
        @max_redemptions = max_redemptions
        @metadata = metadata
        @name = name
        @percent_off = percent_off
        @redeem_by = redeem_by
      end
    end
    # Amount (in the `currency` specified) that will be taken off the subtotal of any invoices for this customer.
    attr_reader :amount_off
    # Attribute for field applies_to
    attr_reader :applies_to
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    # If `amount_off` has been set, the three-letter [ISO code for the currency](https://stripe.com/docs/currencies) of the amount to take off.
    attr_reader :currency
    # Coupons defined in each available currency option. Each key must be a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html) and a [supported currency](https://stripe.com/docs/currencies).
    attr_reader :currency_options
    # One of `forever`, `once`, or `repeating`. Describes how long a customer who applies this coupon will get the discount.
    attr_reader :duration
    # If `duration` is `repeating`, the number of months the coupon applies. Null if coupon `duration` is `forever` or `once`.
    attr_reader :duration_in_months
    # Unique identifier for the object.
    attr_reader :id
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    # Maximum number of times this coupon can be redeemed, in total, across all customers, before it is no longer valid.
    attr_reader :max_redemptions
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    # Name of the coupon displayed to customers on for instance invoices or receipts.
    attr_reader :name
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # Percent that will be taken off the subtotal of any invoices for this customer for the duration of the coupon. For example, a coupon with percent_off of 50 will make a $ (or local equivalent)100 invoice $ (or local equivalent)50 instead.
    attr_reader :percent_off
    # Date after which the coupon can no longer be redeemed.
    attr_reader :redeem_by
    # Number of times this coupon has been applied to a customer.
    attr_reader :times_redeemed
    # Taking account of the above properties, whether this coupon can still be applied to a customer.
    attr_reader :valid
    # Always true for a deleted object
    attr_reader :deleted

    # You can create coupons easily via the [coupon management](https://dashboard.stripe.com/coupons) page of the Stripe dashboard. Coupon creation is also accessible via the API if you need to create coupons on the fly.
    #
    # A coupon has either a percent_off or an amount_off and currency. If you set an amount_off, that amount will be subtracted from any invoice's subtotal. For example, an invoice with a subtotal of 100 will have a final total of 0 if a coupon with an amount_off of 200 is applied to it and an invoice with a subtotal of 300 will have a final total of 100 if a coupon with an amount_off of 200 is applied to it.
    def self.create(params = {}, opts = {})
      request_stripe_object(method: :post, path: "/v1/coupons", params: params, opts: opts)
    end

    # You can delete coupons via the [coupon management](https://dashboard.stripe.com/coupons) page of the Stripe dashboard. However, deleting a coupon does not affect any customers who have already applied the coupon; it means that new customers can't redeem the coupon. You can also delete coupons via the API.
    def self.delete(coupon, params = {}, opts = {})
      request_stripe_object(
        method: :delete,
        path: format("/v1/coupons/%<coupon>s", { coupon: CGI.escape(coupon) }),
        params: params,
        opts: opts
      )
    end

    # You can delete coupons via the [coupon management](https://dashboard.stripe.com/coupons) page of the Stripe dashboard. However, deleting a coupon does not affect any customers who have already applied the coupon; it means that new customers can't redeem the coupon. You can also delete coupons via the API.
    def delete(params = {}, opts = {})
      request_stripe_object(
        method: :delete,
        path: format("/v1/coupons/%<coupon>s", { coupon: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Returns a list of your coupons.
    def self.list(params = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/coupons", params: params, opts: opts)
    end

    # Updates the metadata of a coupon. Other coupon details (currency, duration, amount_off) are, by design, not editable.
    def self.update(coupon, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/coupons/%<coupon>s", { coupon: CGI.escape(coupon) }),
        params: params,
        opts: opts
      )
    end
  end
end
