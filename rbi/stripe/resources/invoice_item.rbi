# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
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
    class Period < Stripe::StripeObject
      # The end of the period, which must be greater than or equal to the start. This value is inclusive.
      sig { returns(Integer) }
      attr_reader :end
      # The start of the period. This value is inclusive.
      sig { returns(Integer) }
      attr_reader :start
    end
    # Amount (in the `currency` specified) of the invoice item. This should always be equal to `unit_amount * quantity`.
    sig { returns(Integer) }
    attr_reader :amount
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    sig { returns(String) }
    attr_reader :currency
    # The ID of the customer who will be billed when this invoice item is billed.
    sig { returns(T.any(String, Stripe::Customer)) }
    attr_reader :customer
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    attr_reader :date
    # An arbitrary string attached to the object. Often useful for displaying to users.
    sig { returns(T.nilable(String)) }
    attr_reader :description
    # If true, discounts will apply to this invoice item. Always false for prorations.
    sig { returns(T::Boolean) }
    attr_reader :discountable
    # The discounts which apply to the invoice item. Item discounts are applied before invoice discounts. Use `expand[]=discounts` to expand each discount.
    sig { returns(T.nilable(T::Array[T.any(String, Stripe::Discount)])) }
    attr_reader :discounts
    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id
    # The ID of the invoice this invoice item belongs to.
    sig { returns(T.nilable(T.any(String, Stripe::Invoice))) }
    attr_reader :invoice
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    attr_reader :livemode
    # The margins which apply to the invoice item. When set, the `default_margins` on the invoice do not apply to this invoice item.
    sig { returns(T.nilable(T::Array[T.any(String, Stripe::Margin)])) }
    attr_reader :margins
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    sig { returns(T.nilable(T::Hash[String, String])) }
    attr_reader :metadata
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object
    # Attribute for field period
    sig { returns(Period) }
    attr_reader :period
    # Whether the invoice item was created automatically as a proration adjustment when the customer switched plans.
    sig { returns(T::Boolean) }
    attr_reader :proration
    # Quantity of units for the invoice item. If the invoice item is a proration, the quantity of the subscription that the proration was computed for.
    sig { returns(Integer) }
    attr_reader :quantity
    # The subscription that this invoice item has been created for, if any.
    sig { returns(T.nilable(T.any(String, Stripe::Subscription))) }
    attr_reader :subscription
    # The subscription item that this invoice item has been created for, if any.
    sig { returns(String) }
    attr_reader :subscription_item
    # The tax rates which apply to the invoice item. When set, the `default_tax_rates` on the invoice do not apply to this invoice item.
    sig { returns(T.nilable(T::Array[Stripe::TaxRate])) }
    attr_reader :tax_rates
    # ID of the test clock this invoice item belongs to.
    sig { returns(T.nilable(T.any(String, Stripe::TestHelpers::TestClock))) }
    attr_reader :test_clock
    # Unit amount (in the `currency` specified) of the invoice item.
    sig { returns(T.nilable(Integer)) }
    attr_reader :unit_amount
    # Same as `unit_amount`, but contains a decimal value with at most 12 decimal places.
    sig { returns(T.nilable(String)) }
    attr_reader :unit_amount_decimal
    # Always true for a deleted object
    sig { returns(T::Boolean) }
    attr_reader :deleted
    class DeleteParams < Stripe::RequestParams

    end
    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      sig { params(expand: T::Array[String]).void }
      def initialize(expand: nil); end
    end
    class UpdateParams < Stripe::RequestParams
      class Discount < Stripe::RequestParams
        class DiscountEnd < Stripe::RequestParams
          class Duration < Stripe::RequestParams
            # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
            sig { returns(String) }
            attr_accessor :interval
            # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
            sig { returns(Integer) }
            attr_accessor :interval_count
            sig { params(interval: String, interval_count: Integer).void }
            def initialize(interval: nil, interval_count: nil); end
          end
          # Time span for the redeemed discount.
          sig { returns(::Stripe::InvoiceItem::UpdateParams::Discount::DiscountEnd::Duration) }
          attr_accessor :duration
          # A precise Unix timestamp for the discount to end. Must be in the future.
          sig { returns(Integer) }
          attr_accessor :timestamp
          # The type of calculation made to determine when the discount ends.
          sig { returns(String) }
          attr_accessor :type
          sig {
            params(duration: ::Stripe::InvoiceItem::UpdateParams::Discount::DiscountEnd::Duration, timestamp: Integer, type: String).void
           }
          def initialize(duration: nil, timestamp: nil, type: nil); end
        end
        # ID of the coupon to create a new discount for.
        sig { returns(String) }
        attr_accessor :coupon
        # ID of an existing discount on the object (or one of its ancestors) to reuse.
        sig { returns(String) }
        attr_accessor :discount
        # Details to determine how long the discount should be applied for.
        sig { returns(::Stripe::InvoiceItem::UpdateParams::Discount::DiscountEnd) }
        attr_accessor :discount_end
        # ID of the promotion code to create a new discount for.
        sig { returns(String) }
        attr_accessor :promotion_code
        sig {
          params(coupon: String, discount: String, discount_end: ::Stripe::InvoiceItem::UpdateParams::Discount::DiscountEnd, promotion_code: String).void
         }
        def initialize(coupon: nil, discount: nil, discount_end: nil, promotion_code: nil); end
      end
      class Period < Stripe::RequestParams
        # The end of the period, which must be greater than or equal to the start. This value is inclusive.
        sig { returns(Integer) }
        attr_accessor :end
        # The start of the period. This value is inclusive.
        sig { returns(Integer) }
        attr_accessor :start
        sig { params(end_: Integer, start: Integer).void }
        def initialize(end_: nil, start: nil); end
      end
      class PriceData < Stripe::RequestParams
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        sig { returns(String) }
        attr_accessor :currency
        # The ID of the product that this price will belong to.
        sig { returns(String) }
        attr_accessor :product
        # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
        sig { returns(String) }
        attr_accessor :tax_behavior
        # A positive integer in cents (or local equivalent) (or 0 for a free price) representing how much to charge.
        sig { returns(Integer) }
        attr_accessor :unit_amount
        # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
        sig { returns(String) }
        attr_accessor :unit_amount_decimal
        sig {
          params(currency: String, product: String, tax_behavior: String, unit_amount: Integer, unit_amount_decimal: String).void
         }
        def initialize(
          currency: nil,
          product: nil,
          tax_behavior: nil,
          unit_amount: nil,
          unit_amount_decimal: nil
        ); end
      end
      # The integer amount in cents (or local equivalent) of the charge to be applied to the upcoming invoice. If you want to apply a credit to the customer's account, pass a negative amount.
      sig { returns(Integer) }
      attr_accessor :amount
      # An arbitrary string which you can attach to the invoice item. The description is displayed in the invoice for easy tracking.
      sig { returns(String) }
      attr_accessor :description
      # Controls whether discounts apply to this invoice item. Defaults to false for prorations or negative invoice items, and true for all other invoice items. Cannot be set to true for prorations.
      sig { returns(T::Boolean) }
      attr_accessor :discountable
      # The coupons, promotion codes & existing discounts which apply to the invoice item or invoice line item. Item discounts are applied before invoice discounts. Pass an empty string to remove previously-defined discounts.
      sig { returns(T.nilable(T::Array[::Stripe::InvoiceItem::UpdateParams::Discount])) }
      attr_accessor :discounts
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      # The ids of the margins to apply to the invoice item. When set, the `default_margins` on the invoice do not apply to this invoice item.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :margins
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_accessor :metadata
      # The period associated with this invoice item. When set to different values, the period will be rendered on the invoice. If you have [Stripe Revenue Recognition](https://stripe.com/docs/revenue-recognition) enabled, the period will be used to recognize and defer revenue. See the [Revenue Recognition documentation](https://stripe.com/docs/revenue-recognition/methodology/subscriptions-and-invoicing) for details.
      sig { returns(::Stripe::InvoiceItem::UpdateParams::Period) }
      attr_accessor :period
      # The ID of the price object. One of `price` or `price_data` is required.
      sig { returns(String) }
      attr_accessor :price
      # Data used to generate a new [Price](https://stripe.com/docs/api/prices) object inline. One of `price` or `price_data` is required.
      sig { returns(::Stripe::InvoiceItem::UpdateParams::PriceData) }
      attr_accessor :price_data
      # Non-negative integer. The quantity of units for the invoice item.
      sig { returns(Integer) }
      attr_accessor :quantity
      # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
      sig { returns(String) }
      attr_accessor :tax_behavior
      # A [tax code](https://stripe.com/docs/tax/tax-categories) ID.
      sig { returns(T.nilable(String)) }
      attr_accessor :tax_code
      # The tax rates which apply to the invoice item. When set, the `default_tax_rates` on the invoice do not apply to this invoice item. Pass an empty string to remove previously-defined tax rates.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :tax_rates
      # The integer unit amount in cents (or local equivalent) of the charge to be applied to the upcoming invoice. This unit_amount will be multiplied by the quantity to get the full amount. If you want to apply a credit to the customer's account, pass a negative unit_amount.
      sig { returns(Integer) }
      attr_accessor :unit_amount
      # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
      sig { returns(String) }
      attr_accessor :unit_amount_decimal
      sig {
        params(amount: Integer, description: String, discountable: T::Boolean, discounts: T.nilable(T::Array[::Stripe::InvoiceItem::UpdateParams::Discount]), expand: T::Array[String], margins: T.nilable(T::Array[String]), metadata: T.nilable(T::Hash[String, String]), period: ::Stripe::InvoiceItem::UpdateParams::Period, price: String, price_data: ::Stripe::InvoiceItem::UpdateParams::PriceData, quantity: Integer, tax_behavior: String, tax_code: T.nilable(String), tax_rates: T.nilable(T::Array[String]), unit_amount: Integer, unit_amount_decimal: String).void
       }
      def initialize(
        amount: nil,
        description: nil,
        discountable: nil,
        discounts: nil,
        expand: nil,
        margins: nil,
        metadata: nil,
        period: nil,
        price: nil,
        price_data: nil,
        quantity: nil,
        tax_behavior: nil,
        tax_code: nil,
        tax_rates: nil,
        unit_amount: nil,
        unit_amount_decimal: nil
      ); end
    end
    class ListParams < Stripe::RequestParams
      class Created < Stripe::RequestParams
        # Minimum value to filter by (exclusive)
        sig { returns(Integer) }
        attr_accessor :gt
        # Minimum value to filter by (inclusive)
        sig { returns(Integer) }
        attr_accessor :gte
        # Maximum value to filter by (exclusive)
        sig { returns(Integer) }
        attr_accessor :lt
        # Maximum value to filter by (inclusive)
        sig { returns(Integer) }
        attr_accessor :lte
        sig { params(gt: Integer, gte: Integer, lt: Integer, lte: Integer).void }
        def initialize(gt: nil, gte: nil, lt: nil, lte: nil); end
      end
      # Only return invoice items that were created during the given date interval.
      sig { returns(T.any(::Stripe::InvoiceItem::ListParams::Created, Integer)) }
      attr_accessor :created
      # The identifier of the customer whose invoice items to return. If none is provided, all invoice items will be returned.
      sig { returns(String) }
      attr_accessor :customer
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      sig { returns(String) }
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      # Only return invoice items belonging to this invoice. If none is provided, all invoice items will be returned. If specifying an invoice, no customer identifier is needed.
      sig { returns(String) }
      attr_accessor :invoice
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(Integer) }
      attr_accessor :limit
      # Set to `true` to only show pending invoice items, which are not yet attached to any invoices. Set to `false` to only show invoice items already attached to invoices. If unspecified, no filter is applied.
      sig { returns(T::Boolean) }
      attr_accessor :pending
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(String) }
      attr_accessor :starting_after
      sig {
        params(created: T.any(::Stripe::InvoiceItem::ListParams::Created, Integer), customer: String, ending_before: String, expand: T::Array[String], invoice: String, limit: Integer, pending: T::Boolean, starting_after: String).void
       }
      def initialize(
        created: nil,
        customer: nil,
        ending_before: nil,
        expand: nil,
        invoice: nil,
        limit: nil,
        pending: nil,
        starting_after: nil
      ); end
    end
    class CreateParams < Stripe::RequestParams
      class Discount < Stripe::RequestParams
        class DiscountEnd < Stripe::RequestParams
          class Duration < Stripe::RequestParams
            # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
            sig { returns(String) }
            attr_accessor :interval
            # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
            sig { returns(Integer) }
            attr_accessor :interval_count
            sig { params(interval: String, interval_count: Integer).void }
            def initialize(interval: nil, interval_count: nil); end
          end
          # Time span for the redeemed discount.
          sig { returns(::Stripe::InvoiceItem::CreateParams::Discount::DiscountEnd::Duration) }
          attr_accessor :duration
          # A precise Unix timestamp for the discount to end. Must be in the future.
          sig { returns(Integer) }
          attr_accessor :timestamp
          # The type of calculation made to determine when the discount ends.
          sig { returns(String) }
          attr_accessor :type
          sig {
            params(duration: ::Stripe::InvoiceItem::CreateParams::Discount::DiscountEnd::Duration, timestamp: Integer, type: String).void
           }
          def initialize(duration: nil, timestamp: nil, type: nil); end
        end
        # ID of the coupon to create a new discount for.
        sig { returns(String) }
        attr_accessor :coupon
        # ID of an existing discount on the object (or one of its ancestors) to reuse.
        sig { returns(String) }
        attr_accessor :discount
        # Details to determine how long the discount should be applied for.
        sig { returns(::Stripe::InvoiceItem::CreateParams::Discount::DiscountEnd) }
        attr_accessor :discount_end
        # ID of the promotion code to create a new discount for.
        sig { returns(String) }
        attr_accessor :promotion_code
        sig {
          params(coupon: String, discount: String, discount_end: ::Stripe::InvoiceItem::CreateParams::Discount::DiscountEnd, promotion_code: String).void
         }
        def initialize(coupon: nil, discount: nil, discount_end: nil, promotion_code: nil); end
      end
      class Period < Stripe::RequestParams
        # The end of the period, which must be greater than or equal to the start. This value is inclusive.
        sig { returns(Integer) }
        attr_accessor :end
        # The start of the period. This value is inclusive.
        sig { returns(Integer) }
        attr_accessor :start
        sig { params(end_: Integer, start: Integer).void }
        def initialize(end_: nil, start: nil); end
      end
      class PriceData < Stripe::RequestParams
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        sig { returns(String) }
        attr_accessor :currency
        # The ID of the product that this price will belong to.
        sig { returns(String) }
        attr_accessor :product
        # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
        sig { returns(String) }
        attr_accessor :tax_behavior
        # A positive integer in cents (or local equivalent) (or 0 for a free price) representing how much to charge.
        sig { returns(Integer) }
        attr_accessor :unit_amount
        # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
        sig { returns(String) }
        attr_accessor :unit_amount_decimal
        sig {
          params(currency: String, product: String, tax_behavior: String, unit_amount: Integer, unit_amount_decimal: String).void
         }
        def initialize(
          currency: nil,
          product: nil,
          tax_behavior: nil,
          unit_amount: nil,
          unit_amount_decimal: nil
        ); end
      end
      # The integer amount in cents (or local equivalent) of the charge to be applied to the upcoming invoice. Passing in a negative `amount` will reduce the `amount_due` on the invoice.
      sig { returns(Integer) }
      attr_accessor :amount
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(String) }
      attr_accessor :currency
      # The ID of the customer who will be billed when this invoice item is billed.
      sig { returns(String) }
      attr_accessor :customer
      # An arbitrary string which you can attach to the invoice item. The description is displayed in the invoice for easy tracking.
      sig { returns(String) }
      attr_accessor :description
      # Controls whether discounts apply to this invoice item. Defaults to false for prorations or negative invoice items, and true for all other invoice items.
      sig { returns(T::Boolean) }
      attr_accessor :discountable
      # The coupons and promotion codes to redeem into discounts for the invoice item or invoice line item.
      sig { returns(T.nilable(T::Array[::Stripe::InvoiceItem::CreateParams::Discount])) }
      attr_accessor :discounts
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      # The ID of an existing invoice to add this invoice item to. When left blank, the invoice item will be added to the next upcoming scheduled invoice. This is useful when adding invoice items in response to an invoice.created webhook. You can only add invoice items to draft invoices and there is a maximum of 250 items per invoice.
      sig { returns(String) }
      attr_accessor :invoice
      # The ids of the margins to apply to the invoice item. When set, the `default_margins` on the invoice do not apply to this invoice item.
      sig { returns(T::Array[String]) }
      attr_accessor :margins
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_accessor :metadata
      # The period associated with this invoice item. When set to different values, the period will be rendered on the invoice. If you have [Stripe Revenue Recognition](https://stripe.com/docs/revenue-recognition) enabled, the period will be used to recognize and defer revenue. See the [Revenue Recognition documentation](https://stripe.com/docs/revenue-recognition/methodology/subscriptions-and-invoicing) for details.
      sig { returns(::Stripe::InvoiceItem::CreateParams::Period) }
      attr_accessor :period
      # The ID of the price object. One of `price` or `price_data` is required.
      sig { returns(String) }
      attr_accessor :price
      # Data used to generate a new [Price](https://stripe.com/docs/api/prices) object inline. One of `price` or `price_data` is required.
      sig { returns(::Stripe::InvoiceItem::CreateParams::PriceData) }
      attr_accessor :price_data
      # Non-negative integer. The quantity of units for the invoice item.
      sig { returns(Integer) }
      attr_accessor :quantity
      # The ID of a subscription to add this invoice item to. When left blank, the invoice item is added to the next upcoming scheduled invoice. When set, scheduled invoices for subscriptions other than the specified subscription will ignore the invoice item. Use this when you want to express that an invoice item has been accrued within the context of a particular subscription.
      sig { returns(String) }
      attr_accessor :subscription
      # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
      sig { returns(String) }
      attr_accessor :tax_behavior
      # A [tax code](https://stripe.com/docs/tax/tax-categories) ID.
      sig { returns(T.nilable(String)) }
      attr_accessor :tax_code
      # The tax rates which apply to the invoice item. When set, the `default_tax_rates` on the invoice do not apply to this invoice item.
      sig { returns(T::Array[String]) }
      attr_accessor :tax_rates
      # The integer unit amount in cents (or local equivalent) of the charge to be applied to the upcoming invoice. This `unit_amount` will be multiplied by the quantity to get the full amount. Passing in a negative `unit_amount` will reduce the `amount_due` on the invoice.
      sig { returns(Integer) }
      attr_accessor :unit_amount
      # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
      sig { returns(String) }
      attr_accessor :unit_amount_decimal
      sig {
        params(amount: Integer, currency: String, customer: String, description: String, discountable: T::Boolean, discounts: T.nilable(T::Array[::Stripe::InvoiceItem::CreateParams::Discount]), expand: T::Array[String], invoice: String, margins: T::Array[String], metadata: T.nilable(T::Hash[String, String]), period: ::Stripe::InvoiceItem::CreateParams::Period, price: String, price_data: ::Stripe::InvoiceItem::CreateParams::PriceData, quantity: Integer, subscription: String, tax_behavior: String, tax_code: T.nilable(String), tax_rates: T::Array[String], unit_amount: Integer, unit_amount_decimal: String).void
       }
      def initialize(
        amount: nil,
        currency: nil,
        customer: nil,
        description: nil,
        discountable: nil,
        discounts: nil,
        expand: nil,
        invoice: nil,
        margins: nil,
        metadata: nil,
        period: nil,
        price: nil,
        price_data: nil,
        quantity: nil,
        subscription: nil,
        tax_behavior: nil,
        tax_code: nil,
        tax_rates: nil,
        unit_amount: nil,
        unit_amount_decimal: nil
      ); end
    end
    # Creates an item to be added to a draft invoice (up to 250 items per invoice). If no invoice is specified, the item will be on the next invoice created for the customer specified.
    sig {
      params(params: T.any(::Stripe::InvoiceItem::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::InvoiceItem)
     }
    def self.create(params = {}, opts = {}); end

    # Deletes an invoice item, removing it from an invoice. Deleting invoice items is only possible when they're not attached to invoices, or if it's attached to a draft invoice.
    sig {
      params(invoiceitem: String, params: T.any(::Stripe::InvoiceItem::DeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::InvoiceItem)
     }
    def self.delete(invoiceitem, params = {}, opts = {}); end

    # Deletes an invoice item, removing it from an invoice. Deleting invoice items is only possible when they're not attached to invoices, or if it's attached to a draft invoice.
    sig {
      params(params: T.any(::Stripe::InvoiceItem::DeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::InvoiceItem)
     }
    def delete(params = {}, opts = {}); end

    # Returns a list of your invoice items. Invoice items are returned sorted by creation date, with the most recently created invoice items appearing first.
    sig {
      params(params: T.any(::Stripe::InvoiceItem::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def self.list(params = {}, opts = {}); end

    # Updates the amount or description of an invoice item on an upcoming invoice. Updating an invoice item is only possible before the invoice it's attached to is closed.
    sig {
      params(invoiceitem: String, params: T.any(::Stripe::InvoiceItem::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::InvoiceItem)
     }
    def self.update(invoiceitem, params = {}, opts = {}); end
  end
end