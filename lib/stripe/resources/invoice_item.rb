# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Invoice Items represent the component lines of an [invoice](https://stripe.com/docs/api/invoices). An invoice item is added to an
  # invoice by creating or updating it with an `invoice` field, at which point it will be included as
  # [an invoice line item](https://stripe.com/docs/api/invoices/line_item) within
  # [invoice.lines](https://stripe.com/docs/api/invoices/object#invoice_object-lines).
  #
  # Invoice Items can be created before you are ready to actually send the invoice. This can be particularly useful when combined
  # with a [subscription](https://stripe.com/docs/api/subscriptions). Sometimes you want to add a charge or credit to a customer, but actually charge
  # or credit the customer's card only at the end of a regular billing cycle. This is useful for combining several charges
  # (to minimize per-transaction fees), or for having Stripe tabulate your usage-based billing totals.
  #
  # Related guides: [Integrate with the Invoicing API](https://stripe.com/docs/invoicing/integration), [Subscription Invoices](https://stripe.com/docs/billing/invoices/subscription#adding-upcoming-invoice-items).
  class InvoiceItem < APIResource
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Delete
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "invoiceitem"
    def self.object_name
      "invoiceitem"
    end

    class Parent < Stripe::StripeObject
      class SubscriptionDetails < Stripe::StripeObject
        # The subscription that generated this invoice item
        attr_reader :subscription
        # The subscription item that generated this invoice item
        attr_reader :subscription_item
      end
      # Details about the subscription that generated this invoice item
      attr_reader :subscription_details
      # The type of parent that generated this invoice item
      attr_reader :type
    end

    class Period < Stripe::StripeObject
      # The end of the period, which must be greater than or equal to the start. This value is inclusive.
      attr_reader :end
      # The start of the period. This value is inclusive.
      attr_reader :start
    end

    class Pricing < Stripe::StripeObject
      class PriceDetails < Stripe::StripeObject
        # The ID of the price this item is associated with.
        attr_reader :price
        # The ID of the product this item is associated with.
        attr_reader :product
      end
      # Attribute for field price_details
      attr_reader :price_details
      # The type of the pricing details.
      attr_reader :type
      # The unit amount (in the `currency` specified) of the item which contains a decimal value with at most 12 decimal places.
      attr_reader :unit_amount_decimal
    end

    class DeleteParams < Stripe::RequestParams
    end

    class UpdateParams < Stripe::RequestParams
      class Discount < Stripe::RequestParams
        # ID of the coupon to create a new discount for.
        attr_accessor :coupon
        # ID of an existing discount on the object (or one of its ancestors) to reuse.
        attr_accessor :discount
        # ID of the promotion code to create a new discount for.
        attr_accessor :promotion_code

        def initialize(coupon: nil, discount: nil, promotion_code: nil)
          @coupon = coupon
          @discount = discount
          @promotion_code = promotion_code
        end
      end

      class Period < Stripe::RequestParams
        # The end of the period, which must be greater than or equal to the start. This value is inclusive.
        attr_accessor :end
        # The start of the period. This value is inclusive.
        attr_accessor :start

        def initialize(end_: nil, start: nil)
          @end = end_
          @start = start
        end
      end

      class PriceData < Stripe::RequestParams
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        attr_accessor :currency
        # The ID of the [Product](https://docs.stripe.com/api/products) that this [Price](https://docs.stripe.com/api/prices) will belong to.
        attr_accessor :product
        # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
        attr_accessor :tax_behavior
        # A positive integer in cents (or local equivalent) (or 0 for a free price) representing how much to charge.
        attr_accessor :unit_amount
        # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
        attr_accessor :unit_amount_decimal

        def initialize(
          currency: nil,
          product: nil,
          tax_behavior: nil,
          unit_amount: nil,
          unit_amount_decimal: nil
        )
          @currency = currency
          @product = product
          @tax_behavior = tax_behavior
          @unit_amount = unit_amount
          @unit_amount_decimal = unit_amount_decimal
        end
      end

      class Pricing < Stripe::RequestParams
        # The ID of the price object.
        attr_accessor :price

        def initialize(price: nil)
          @price = price
        end
      end
      # The integer amount in cents (or local equivalent) of the charge to be applied to the upcoming invoice. If you want to apply a credit to the customer's account, pass a negative amount.
      attr_accessor :amount
      # An arbitrary string which you can attach to the invoice item. The description is displayed in the invoice for easy tracking.
      attr_accessor :description
      # Controls whether discounts apply to this invoice item. Defaults to false for prorations or negative invoice items, and true for all other invoice items. Cannot be set to true for prorations.
      attr_accessor :discountable
      # The coupons, promotion codes & existing discounts which apply to the invoice item or invoice line item. Item discounts are applied before invoice discounts. Pass an empty string to remove previously-defined discounts.
      attr_accessor :discounts
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata
      # The period associated with this invoice item. When set to different values, the period will be rendered on the invoice. If you have [Stripe Revenue Recognition](https://stripe.com/docs/revenue-recognition) enabled, the period will be used to recognize and defer revenue. See the [Revenue Recognition documentation](https://stripe.com/docs/revenue-recognition/methodology/subscriptions-and-invoicing) for details.
      attr_accessor :period
      # Data used to generate a new [Price](https://stripe.com/docs/api/prices) object inline.
      attr_accessor :price_data
      # The pricing information for the invoice item.
      attr_accessor :pricing
      # Non-negative integer. The quantity of units for the invoice item.
      attr_accessor :quantity
      # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
      attr_accessor :tax_behavior
      # A [tax code](https://stripe.com/docs/tax/tax-categories) ID.
      attr_accessor :tax_code
      # The tax rates which apply to the invoice item. When set, the `default_tax_rates` on the invoice do not apply to this invoice item. Pass an empty string to remove previously-defined tax rates.
      attr_accessor :tax_rates
      # The decimal unit amount in cents (or local equivalent) of the charge to be applied to the upcoming invoice. This `unit_amount_decimal` will be multiplied by the quantity to get the full amount. Passing in a negative `unit_amount_decimal` will reduce the `amount_due` on the invoice. Accepts at most 12 decimal places.
      attr_accessor :unit_amount_decimal

      def initialize(
        amount: nil,
        description: nil,
        discountable: nil,
        discounts: nil,
        expand: nil,
        metadata: nil,
        period: nil,
        price_data: nil,
        pricing: nil,
        quantity: nil,
        tax_behavior: nil,
        tax_code: nil,
        tax_rates: nil,
        unit_amount_decimal: nil
      )
        @amount = amount
        @description = description
        @discountable = discountable
        @discounts = discounts
        @expand = expand
        @metadata = metadata
        @period = period
        @price_data = price_data
        @pricing = pricing
        @quantity = quantity
        @tax_behavior = tax_behavior
        @tax_code = tax_code
        @tax_rates = tax_rates
        @unit_amount_decimal = unit_amount_decimal
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
      # Only return invoice items that were created during the given date interval.
      attr_accessor :created
      # The identifier of the customer whose invoice items to return. If none is provided, all invoice items will be returned.
      attr_accessor :customer
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Only return invoice items belonging to this invoice. If none is provided, all invoice items will be returned. If specifying an invoice, no customer identifier is needed.
      attr_accessor :invoice
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      attr_accessor :limit
      # Set to `true` to only show pending invoice items, which are not yet attached to any invoices. Set to `false` to only show invoice items already attached to invoices. If unspecified, no filter is applied.
      attr_accessor :pending
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      attr_accessor :starting_after

      def initialize(
        created: nil,
        customer: nil,
        ending_before: nil,
        expand: nil,
        invoice: nil,
        limit: nil,
        pending: nil,
        starting_after: nil
      )
        @created = created
        @customer = customer
        @ending_before = ending_before
        @expand = expand
        @invoice = invoice
        @limit = limit
        @pending = pending
        @starting_after = starting_after
      end
    end

    class CreateParams < Stripe::RequestParams
      class Discount < Stripe::RequestParams
        # ID of the coupon to create a new discount for.
        attr_accessor :coupon
        # ID of an existing discount on the object (or one of its ancestors) to reuse.
        attr_accessor :discount
        # ID of the promotion code to create a new discount for.
        attr_accessor :promotion_code

        def initialize(coupon: nil, discount: nil, promotion_code: nil)
          @coupon = coupon
          @discount = discount
          @promotion_code = promotion_code
        end
      end

      class Period < Stripe::RequestParams
        # The end of the period, which must be greater than or equal to the start. This value is inclusive.
        attr_accessor :end
        # The start of the period. This value is inclusive.
        attr_accessor :start

        def initialize(end_: nil, start: nil)
          @end = end_
          @start = start
        end
      end

      class PriceData < Stripe::RequestParams
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        attr_accessor :currency
        # The ID of the [Product](https://docs.stripe.com/api/products) that this [Price](https://docs.stripe.com/api/prices) will belong to.
        attr_accessor :product
        # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
        attr_accessor :tax_behavior
        # A positive integer in cents (or local equivalent) (or 0 for a free price) representing how much to charge.
        attr_accessor :unit_amount
        # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
        attr_accessor :unit_amount_decimal

        def initialize(
          currency: nil,
          product: nil,
          tax_behavior: nil,
          unit_amount: nil,
          unit_amount_decimal: nil
        )
          @currency = currency
          @product = product
          @tax_behavior = tax_behavior
          @unit_amount = unit_amount
          @unit_amount_decimal = unit_amount_decimal
        end
      end

      class Pricing < Stripe::RequestParams
        # The ID of the price object.
        attr_accessor :price

        def initialize(price: nil)
          @price = price
        end
      end
      # The integer amount in cents (or local equivalent) of the charge to be applied to the upcoming invoice. Passing in a negative `amount` will reduce the `amount_due` on the invoice.
      attr_accessor :amount
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_accessor :currency
      # The ID of the customer who will be billed when this invoice item is billed.
      attr_accessor :customer
      # An arbitrary string which you can attach to the invoice item. The description is displayed in the invoice for easy tracking.
      attr_accessor :description
      # Controls whether discounts apply to this invoice item. Defaults to false for prorations or negative invoice items, and true for all other invoice items.
      attr_accessor :discountable
      # The coupons and promotion codes to redeem into discounts for the invoice item or invoice line item.
      attr_accessor :discounts
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # The ID of an existing invoice to add this invoice item to. When left blank, the invoice item will be added to the next upcoming scheduled invoice. This is useful when adding invoice items in response to an invoice.created webhook. You can only add invoice items to draft invoices and there is a maximum of 250 items per invoice.
      attr_accessor :invoice
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata
      # The period associated with this invoice item. When set to different values, the period will be rendered on the invoice. If you have [Stripe Revenue Recognition](https://stripe.com/docs/revenue-recognition) enabled, the period will be used to recognize and defer revenue. See the [Revenue Recognition documentation](https://stripe.com/docs/revenue-recognition/methodology/subscriptions-and-invoicing) for details.
      attr_accessor :period
      # Data used to generate a new [Price](https://stripe.com/docs/api/prices) object inline.
      attr_accessor :price_data
      # The pricing information for the invoice item.
      attr_accessor :pricing
      # Non-negative integer. The quantity of units for the invoice item.
      attr_accessor :quantity
      # The ID of a subscription to add this invoice item to. When left blank, the invoice item is added to the next upcoming scheduled invoice. When set, scheduled invoices for subscriptions other than the specified subscription will ignore the invoice item. Use this when you want to express that an invoice item has been accrued within the context of a particular subscription.
      attr_accessor :subscription
      # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
      attr_accessor :tax_behavior
      # A [tax code](https://stripe.com/docs/tax/tax-categories) ID.
      attr_accessor :tax_code
      # The tax rates which apply to the invoice item. When set, the `default_tax_rates` on the invoice do not apply to this invoice item.
      attr_accessor :tax_rates
      # The decimal unit amount in cents (or local equivalent) of the charge to be applied to the upcoming invoice. This `unit_amount_decimal` will be multiplied by the quantity to get the full amount. Passing in a negative `unit_amount_decimal` will reduce the `amount_due` on the invoice. Accepts at most 12 decimal places.
      attr_accessor :unit_amount_decimal

      def initialize(
        amount: nil,
        currency: nil,
        customer: nil,
        description: nil,
        discountable: nil,
        discounts: nil,
        expand: nil,
        invoice: nil,
        metadata: nil,
        period: nil,
        price_data: nil,
        pricing: nil,
        quantity: nil,
        subscription: nil,
        tax_behavior: nil,
        tax_code: nil,
        tax_rates: nil,
        unit_amount_decimal: nil
      )
        @amount = amount
        @currency = currency
        @customer = customer
        @description = description
        @discountable = discountable
        @discounts = discounts
        @expand = expand
        @invoice = invoice
        @metadata = metadata
        @period = period
        @price_data = price_data
        @pricing = pricing
        @quantity = quantity
        @subscription = subscription
        @tax_behavior = tax_behavior
        @tax_code = tax_code
        @tax_rates = tax_rates
        @unit_amount_decimal = unit_amount_decimal
      end
    end
    # Amount (in the `currency` specified) of the invoice item. This should always be equal to `unit_amount * quantity`.
    attr_reader :amount
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    attr_reader :currency
    # The ID of the customer who will be billed when this invoice item is billed.
    attr_reader :customer
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :date
    # An arbitrary string attached to the object. Often useful for displaying to users.
    attr_reader :description
    # If true, discounts will apply to this invoice item. Always false for prorations.
    attr_reader :discountable
    # The discounts which apply to the invoice item. Item discounts are applied before invoice discounts. Use `expand[]=discounts` to expand each discount.
    attr_reader :discounts
    # Unique identifier for the object.
    attr_reader :id
    # The ID of the invoice this invoice item belongs to.
    attr_reader :invoice
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # The parent that generated this invoice
    attr_reader :parent
    # Attribute for field period
    attr_reader :period
    # The pricing information of the invoice item.
    attr_reader :pricing
    # Whether the invoice item was created automatically as a proration adjustment when the customer switched plans.
    attr_reader :proration
    # Quantity of units for the invoice item. If the invoice item is a proration, the quantity of the subscription that the proration was computed for.
    attr_reader :quantity
    # The tax rates which apply to the invoice item. When set, the `default_tax_rates` on the invoice do not apply to this invoice item.
    attr_reader :tax_rates
    # ID of the test clock this invoice item belongs to.
    attr_reader :test_clock
    # Always true for a deleted object
    attr_reader :deleted

    # Creates an item to be added to a draft invoice (up to 250 items per invoice). If no invoice is specified, the item will be on the next invoice created for the customer specified.
    def self.create(params = {}, opts = {})
      request_stripe_object(method: :post, path: "/v1/invoiceitems", params: params, opts: opts)
    end

    # Deletes an invoice item, removing it from an invoice. Deleting invoice items is only possible when they're not attached to invoices, or if it's attached to a draft invoice.
    def self.delete(invoiceitem, params = {}, opts = {})
      request_stripe_object(
        method: :delete,
        path: format("/v1/invoiceitems/%<invoiceitem>s", { invoiceitem: CGI.escape(invoiceitem) }),
        params: params,
        opts: opts
      )
    end

    # Deletes an invoice item, removing it from an invoice. Deleting invoice items is only possible when they're not attached to invoices, or if it's attached to a draft invoice.
    def delete(params = {}, opts = {})
      request_stripe_object(
        method: :delete,
        path: format("/v1/invoiceitems/%<invoiceitem>s", { invoiceitem: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Returns a list of your invoice items. Invoice items are returned sorted by creation date, with the most recently created invoice items appearing first.
    def self.list(params = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/invoiceitems", params: params, opts: opts)
    end

    # Updates the amount or description of an invoice item on an upcoming invoice. Updating an invoice item is only possible before the invoice it's attached to is closed.
    def self.update(invoiceitem, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/invoiceitems/%<invoiceitem>s", { invoiceitem: CGI.escape(invoiceitem) }),
        params: params,
        opts: opts
      )
    end
  end
end
