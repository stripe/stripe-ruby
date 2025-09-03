# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class InvoiceItemService < StripeService
    class DeleteParams < Stripe::RequestParams; end
    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      sig { params(expand: T.nilable(T::Array[String])).void }
      def initialize(expand: nil); end
    end
    class UpdateParams < Stripe::RequestParams
      class Discount < Stripe::RequestParams
        # ID of the coupon to create a new discount for.
        sig { returns(T.nilable(String)) }
        def coupon; end
        sig { params(_coupon: T.nilable(String)).returns(T.nilable(String)) }
        def coupon=(_coupon); end
        # ID of an existing discount on the object (or one of its ancestors) to reuse.
        sig { returns(T.nilable(String)) }
        def discount; end
        sig { params(_discount: T.nilable(String)).returns(T.nilable(String)) }
        def discount=(_discount); end
        # ID of the promotion code to create a new discount for.
        sig { returns(T.nilable(String)) }
        def promotion_code; end
        sig { params(_promotion_code: T.nilable(String)).returns(T.nilable(String)) }
        def promotion_code=(_promotion_code); end
        sig {
          params(coupon: T.nilable(String), discount: T.nilable(String), promotion_code: T.nilable(String)).void
         }
        def initialize(coupon: nil, discount: nil, promotion_code: nil); end
      end
      class Period < Stripe::RequestParams
        # The end of the period, which must be greater than or equal to the start. This value is inclusive.
        sig { returns(Integer) }
        def end; end
        sig { params(_end: Integer).returns(Integer) }
        def end=(_end); end
        # The start of the period. This value is inclusive.
        sig { returns(Integer) }
        def start; end
        sig { params(_start: Integer).returns(Integer) }
        def start=(_start); end
        sig { params(end_: Integer, start: Integer).void }
        def initialize(end_: nil, start: nil); end
      end
      class PriceData < Stripe::RequestParams
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        sig { returns(String) }
        def currency; end
        sig { params(_currency: String).returns(String) }
        def currency=(_currency); end
        # The ID of the [Product](https://docs.stripe.com/api/products) that this [Price](https://docs.stripe.com/api/prices) will belong to.
        sig { returns(String) }
        def product; end
        sig { params(_product: String).returns(String) }
        def product=(_product); end
        # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
        sig { returns(T.nilable(String)) }
        def tax_behavior; end
        sig { params(_tax_behavior: T.nilable(String)).returns(T.nilable(String)) }
        def tax_behavior=(_tax_behavior); end
        # A positive integer in cents (or local equivalent) (or 0 for a free price) representing how much to charge.
        sig { returns(T.nilable(Integer)) }
        def unit_amount; end
        sig { params(_unit_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def unit_amount=(_unit_amount); end
        # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
        sig { returns(T.nilable(String)) }
        def unit_amount_decimal; end
        sig { params(_unit_amount_decimal: T.nilable(String)).returns(T.nilable(String)) }
        def unit_amount_decimal=(_unit_amount_decimal); end
        sig {
          params(currency: String, product: String, tax_behavior: T.nilable(String), unit_amount: T.nilable(Integer), unit_amount_decimal: T.nilable(String)).void
         }
        def initialize(
          currency: nil,
          product: nil,
          tax_behavior: nil,
          unit_amount: nil,
          unit_amount_decimal: nil
        ); end
      end
      class Pricing < Stripe::RequestParams
        # The ID of the price object.
        sig { returns(T.nilable(String)) }
        def price; end
        sig { params(_price: T.nilable(String)).returns(T.nilable(String)) }
        def price=(_price); end
        sig { params(price: T.nilable(String)).void }
        def initialize(price: nil); end
      end
      # The integer amount in cents (or local equivalent) of the charge to be applied to the upcoming invoice. If you want to apply a credit to the customer's account, pass a negative amount.
      sig { returns(T.nilable(Integer)) }
      def amount; end
      sig { params(_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def amount=(_amount); end
      # An arbitrary string which you can attach to the invoice item. The description is displayed in the invoice for easy tracking.
      sig { returns(T.nilable(String)) }
      def description; end
      sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
      def description=(_description); end
      # Controls whether discounts apply to this invoice item. Defaults to false for prorations or negative invoice items, and true for all other invoice items. Cannot be set to true for prorations.
      sig { returns(T.nilable(T::Boolean)) }
      def discountable; end
      sig { params(_discountable: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def discountable=(_discountable); end
      # The coupons, promotion codes & existing discounts which apply to the invoice item or invoice line item. Item discounts are applied before invoice discounts. Pass an empty string to remove previously-defined discounts.
      sig {
        returns(T.nilable(T.any(String, T::Array[::Stripe::InvoiceItemService::UpdateParams::Discount])))
       }
      def discounts; end
      sig {
        params(_discounts: T.nilable(T.any(String, T::Array[::Stripe::InvoiceItemService::UpdateParams::Discount]))).returns(T.nilable(T.any(String, T::Array[::Stripe::InvoiceItemService::UpdateParams::Discount])))
       }
      def discounts=(_discounts); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
      def metadata; end
      sig {
        params(_metadata: T.nilable(T.any(String, T::Hash[String, String]))).returns(T.nilable(T.any(String, T::Hash[String, String])))
       }
      def metadata=(_metadata); end
      # The period associated with this invoice item. When set to different values, the period will be rendered on the invoice. If you have [Stripe Revenue Recognition](https://stripe.com/docs/revenue-recognition) enabled, the period will be used to recognize and defer revenue. See the [Revenue Recognition documentation](https://stripe.com/docs/revenue-recognition/methodology/subscriptions-and-invoicing) for details.
      sig { returns(T.nilable(::Stripe::InvoiceItemService::UpdateParams::Period)) }
      def period; end
      sig {
        params(_period: T.nilable(::Stripe::InvoiceItemService::UpdateParams::Period)).returns(T.nilable(::Stripe::InvoiceItemService::UpdateParams::Period))
       }
      def period=(_period); end
      # Data used to generate a new [Price](https://stripe.com/docs/api/prices) object inline.
      sig { returns(T.nilable(::Stripe::InvoiceItemService::UpdateParams::PriceData)) }
      def price_data; end
      sig {
        params(_price_data: T.nilable(::Stripe::InvoiceItemService::UpdateParams::PriceData)).returns(T.nilable(::Stripe::InvoiceItemService::UpdateParams::PriceData))
       }
      def price_data=(_price_data); end
      # The pricing information for the invoice item.
      sig { returns(T.nilable(::Stripe::InvoiceItemService::UpdateParams::Pricing)) }
      def pricing; end
      sig {
        params(_pricing: T.nilable(::Stripe::InvoiceItemService::UpdateParams::Pricing)).returns(T.nilable(::Stripe::InvoiceItemService::UpdateParams::Pricing))
       }
      def pricing=(_pricing); end
      # Non-negative integer. The quantity of units for the invoice item.
      sig { returns(T.nilable(Integer)) }
      def quantity; end
      sig { params(_quantity: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def quantity=(_quantity); end
      # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
      sig { returns(T.nilable(String)) }
      def tax_behavior; end
      sig { params(_tax_behavior: T.nilable(String)).returns(T.nilable(String)) }
      def tax_behavior=(_tax_behavior); end
      # A [tax code](https://stripe.com/docs/tax/tax-categories) ID.
      sig { returns(T.nilable(String)) }
      def tax_code; end
      sig { params(_tax_code: T.nilable(String)).returns(T.nilable(String)) }
      def tax_code=(_tax_code); end
      # The tax rates which apply to the invoice item. When set, the `default_tax_rates` on the invoice do not apply to this invoice item. Pass an empty string to remove previously-defined tax rates.
      sig { returns(T.nilable(T.any(String, T::Array[String]))) }
      def tax_rates; end
      sig {
        params(_tax_rates: T.nilable(T.any(String, T::Array[String]))).returns(T.nilable(T.any(String, T::Array[String])))
       }
      def tax_rates=(_tax_rates); end
      # The decimal unit amount in cents (or local equivalent) of the charge to be applied to the upcoming invoice. This `unit_amount_decimal` will be multiplied by the quantity to get the full amount. Passing in a negative `unit_amount_decimal` will reduce the `amount_due` on the invoice. Accepts at most 12 decimal places.
      sig { returns(T.nilable(String)) }
      def unit_amount_decimal; end
      sig { params(_unit_amount_decimal: T.nilable(String)).returns(T.nilable(String)) }
      def unit_amount_decimal=(_unit_amount_decimal); end
      sig {
        params(amount: T.nilable(Integer), description: T.nilable(String), discountable: T.nilable(T::Boolean), discounts: T.nilable(T.any(String, T::Array[::Stripe::InvoiceItemService::UpdateParams::Discount])), expand: T.nilable(T::Array[String]), metadata: T.nilable(T.any(String, T::Hash[String, String])), period: T.nilable(::Stripe::InvoiceItemService::UpdateParams::Period), price_data: T.nilable(::Stripe::InvoiceItemService::UpdateParams::PriceData), pricing: T.nilable(::Stripe::InvoiceItemService::UpdateParams::Pricing), quantity: T.nilable(Integer), tax_behavior: T.nilable(String), tax_code: T.nilable(String), tax_rates: T.nilable(T.any(String, T::Array[String])), unit_amount_decimal: T.nilable(String)).void
       }
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
      ); end
    end
    class ListParams < Stripe::RequestParams
      class Created < Stripe::RequestParams
        # Minimum value to filter by (exclusive)
        sig { returns(T.nilable(Integer)) }
        def gt; end
        sig { params(_gt: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def gt=(_gt); end
        # Minimum value to filter by (inclusive)
        sig { returns(T.nilable(Integer)) }
        def gte; end
        sig { params(_gte: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def gte=(_gte); end
        # Maximum value to filter by (exclusive)
        sig { returns(T.nilable(Integer)) }
        def lt; end
        sig { params(_lt: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def lt=(_lt); end
        # Maximum value to filter by (inclusive)
        sig { returns(T.nilable(Integer)) }
        def lte; end
        sig { params(_lte: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def lte=(_lte); end
        sig {
          params(gt: T.nilable(Integer), gte: T.nilable(Integer), lt: T.nilable(Integer), lte: T.nilable(Integer)).void
         }
        def initialize(gt: nil, gte: nil, lt: nil, lte: nil); end
      end
      # Only return invoice items that were created during the given date interval.
      sig { returns(T.nilable(T.any(::Stripe::InvoiceItemService::ListParams::Created, Integer))) }
      def created; end
      sig {
        params(_created: T.nilable(T.any(::Stripe::InvoiceItemService::ListParams::Created, Integer))).returns(T.nilable(T.any(::Stripe::InvoiceItemService::ListParams::Created, Integer)))
       }
      def created=(_created); end
      # The identifier of the customer whose invoice items to return. If none is provided, all invoice items will be returned.
      sig { returns(T.nilable(String)) }
      def customer; end
      sig { params(_customer: T.nilable(String)).returns(T.nilable(String)) }
      def customer=(_customer); end
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      sig { returns(T.nilable(String)) }
      def ending_before; end
      sig { params(_ending_before: T.nilable(String)).returns(T.nilable(String)) }
      def ending_before=(_ending_before); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # Only return invoice items belonging to this invoice. If none is provided, all invoice items will be returned. If specifying an invoice, no customer identifier is needed.
      sig { returns(T.nilable(String)) }
      def invoice; end
      sig { params(_invoice: T.nilable(String)).returns(T.nilable(String)) }
      def invoice=(_invoice); end
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(T.nilable(Integer)) }
      def limit; end
      sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def limit=(_limit); end
      # Set to `true` to only show pending invoice items, which are not yet attached to any invoices. Set to `false` to only show invoice items already attached to invoices. If unspecified, no filter is applied.
      sig { returns(T.nilable(T::Boolean)) }
      def pending; end
      sig { params(_pending: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def pending=(_pending); end
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(T.nilable(String)) }
      def starting_after; end
      sig { params(_starting_after: T.nilable(String)).returns(T.nilable(String)) }
      def starting_after=(_starting_after); end
      sig {
        params(created: T.nilable(T.any(::Stripe::InvoiceItemService::ListParams::Created, Integer)), customer: T.nilable(String), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), invoice: T.nilable(String), limit: T.nilable(Integer), pending: T.nilable(T::Boolean), starting_after: T.nilable(String)).void
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
        # ID of the coupon to create a new discount for.
        sig { returns(T.nilable(String)) }
        def coupon; end
        sig { params(_coupon: T.nilable(String)).returns(T.nilable(String)) }
        def coupon=(_coupon); end
        # ID of an existing discount on the object (or one of its ancestors) to reuse.
        sig { returns(T.nilable(String)) }
        def discount; end
        sig { params(_discount: T.nilable(String)).returns(T.nilable(String)) }
        def discount=(_discount); end
        # ID of the promotion code to create a new discount for.
        sig { returns(T.nilable(String)) }
        def promotion_code; end
        sig { params(_promotion_code: T.nilable(String)).returns(T.nilable(String)) }
        def promotion_code=(_promotion_code); end
        sig {
          params(coupon: T.nilable(String), discount: T.nilable(String), promotion_code: T.nilable(String)).void
         }
        def initialize(coupon: nil, discount: nil, promotion_code: nil); end
      end
      class Period < Stripe::RequestParams
        # The end of the period, which must be greater than or equal to the start. This value is inclusive.
        sig { returns(Integer) }
        def end; end
        sig { params(_end: Integer).returns(Integer) }
        def end=(_end); end
        # The start of the period. This value is inclusive.
        sig { returns(Integer) }
        def start; end
        sig { params(_start: Integer).returns(Integer) }
        def start=(_start); end
        sig { params(end_: Integer, start: Integer).void }
        def initialize(end_: nil, start: nil); end
      end
      class PriceData < Stripe::RequestParams
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        sig { returns(String) }
        def currency; end
        sig { params(_currency: String).returns(String) }
        def currency=(_currency); end
        # The ID of the [Product](https://docs.stripe.com/api/products) that this [Price](https://docs.stripe.com/api/prices) will belong to.
        sig { returns(String) }
        def product; end
        sig { params(_product: String).returns(String) }
        def product=(_product); end
        # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
        sig { returns(T.nilable(String)) }
        def tax_behavior; end
        sig { params(_tax_behavior: T.nilable(String)).returns(T.nilable(String)) }
        def tax_behavior=(_tax_behavior); end
        # A positive integer in cents (or local equivalent) (or 0 for a free price) representing how much to charge.
        sig { returns(T.nilable(Integer)) }
        def unit_amount; end
        sig { params(_unit_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def unit_amount=(_unit_amount); end
        # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
        sig { returns(T.nilable(String)) }
        def unit_amount_decimal; end
        sig { params(_unit_amount_decimal: T.nilable(String)).returns(T.nilable(String)) }
        def unit_amount_decimal=(_unit_amount_decimal); end
        sig {
          params(currency: String, product: String, tax_behavior: T.nilable(String), unit_amount: T.nilable(Integer), unit_amount_decimal: T.nilable(String)).void
         }
        def initialize(
          currency: nil,
          product: nil,
          tax_behavior: nil,
          unit_amount: nil,
          unit_amount_decimal: nil
        ); end
      end
      class Pricing < Stripe::RequestParams
        # The ID of the price object.
        sig { returns(T.nilable(String)) }
        def price; end
        sig { params(_price: T.nilable(String)).returns(T.nilable(String)) }
        def price=(_price); end
        sig { params(price: T.nilable(String)).void }
        def initialize(price: nil); end
      end
      # The integer amount in cents (or local equivalent) of the charge to be applied to the upcoming invoice. Passing in a negative `amount` will reduce the `amount_due` on the invoice.
      sig { returns(T.nilable(Integer)) }
      def amount; end
      sig { params(_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def amount=(_amount); end
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(T.nilable(String)) }
      def currency; end
      sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
      def currency=(_currency); end
      # The ID of the customer who will be billed when this invoice item is billed.
      sig { returns(String) }
      def customer; end
      sig { params(_customer: String).returns(String) }
      def customer=(_customer); end
      # An arbitrary string which you can attach to the invoice item. The description is displayed in the invoice for easy tracking.
      sig { returns(T.nilable(String)) }
      def description; end
      sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
      def description=(_description); end
      # Controls whether discounts apply to this invoice item. Defaults to false for prorations or negative invoice items, and true for all other invoice items.
      sig { returns(T.nilable(T::Boolean)) }
      def discountable; end
      sig { params(_discountable: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def discountable=(_discountable); end
      # The coupons and promotion codes to redeem into discounts for the invoice item or invoice line item.
      sig {
        returns(T.nilable(T.any(String, T::Array[::Stripe::InvoiceItemService::CreateParams::Discount])))
       }
      def discounts; end
      sig {
        params(_discounts: T.nilable(T.any(String, T::Array[::Stripe::InvoiceItemService::CreateParams::Discount]))).returns(T.nilable(T.any(String, T::Array[::Stripe::InvoiceItemService::CreateParams::Discount])))
       }
      def discounts=(_discounts); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # The ID of an existing invoice to add this invoice item to. For subscription invoices, when left blank, the invoice item will be added to the next upcoming scheduled invoice. For standalone invoices, the invoice item won't be automatically added unless you pass `pending_invoice_item_behavior: 'include'` when creating the invoice. This is useful when adding invoice items in response to an invoice.created webhook. You can only add invoice items to draft invoices and there is a maximum of 250 items per invoice.
      sig { returns(T.nilable(String)) }
      def invoice; end
      sig { params(_invoice: T.nilable(String)).returns(T.nilable(String)) }
      def invoice=(_invoice); end
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
      def metadata; end
      sig {
        params(_metadata: T.nilable(T.any(String, T::Hash[String, String]))).returns(T.nilable(T.any(String, T::Hash[String, String])))
       }
      def metadata=(_metadata); end
      # The period associated with this invoice item. When set to different values, the period will be rendered on the invoice. If you have [Stripe Revenue Recognition](https://stripe.com/docs/revenue-recognition) enabled, the period will be used to recognize and defer revenue. See the [Revenue Recognition documentation](https://stripe.com/docs/revenue-recognition/methodology/subscriptions-and-invoicing) for details.
      sig { returns(T.nilable(::Stripe::InvoiceItemService::CreateParams::Period)) }
      def period; end
      sig {
        params(_period: T.nilable(::Stripe::InvoiceItemService::CreateParams::Period)).returns(T.nilable(::Stripe::InvoiceItemService::CreateParams::Period))
       }
      def period=(_period); end
      # Data used to generate a new [Price](https://stripe.com/docs/api/prices) object inline.
      sig { returns(T.nilable(::Stripe::InvoiceItemService::CreateParams::PriceData)) }
      def price_data; end
      sig {
        params(_price_data: T.nilable(::Stripe::InvoiceItemService::CreateParams::PriceData)).returns(T.nilable(::Stripe::InvoiceItemService::CreateParams::PriceData))
       }
      def price_data=(_price_data); end
      # The pricing information for the invoice item.
      sig { returns(T.nilable(::Stripe::InvoiceItemService::CreateParams::Pricing)) }
      def pricing; end
      sig {
        params(_pricing: T.nilable(::Stripe::InvoiceItemService::CreateParams::Pricing)).returns(T.nilable(::Stripe::InvoiceItemService::CreateParams::Pricing))
       }
      def pricing=(_pricing); end
      # Non-negative integer. The quantity of units for the invoice item.
      sig { returns(T.nilable(Integer)) }
      def quantity; end
      sig { params(_quantity: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def quantity=(_quantity); end
      # The ID of a subscription to add this invoice item to. When left blank, the invoice item is added to the next upcoming scheduled invoice. When set, scheduled invoices for subscriptions other than the specified subscription will ignore the invoice item. Use this when you want to express that an invoice item has been accrued within the context of a particular subscription.
      sig { returns(T.nilable(String)) }
      def subscription; end
      sig { params(_subscription: T.nilable(String)).returns(T.nilable(String)) }
      def subscription=(_subscription); end
      # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
      sig { returns(T.nilable(String)) }
      def tax_behavior; end
      sig { params(_tax_behavior: T.nilable(String)).returns(T.nilable(String)) }
      def tax_behavior=(_tax_behavior); end
      # A [tax code](https://stripe.com/docs/tax/tax-categories) ID.
      sig { returns(T.nilable(String)) }
      def tax_code; end
      sig { params(_tax_code: T.nilable(String)).returns(T.nilable(String)) }
      def tax_code=(_tax_code); end
      # The tax rates which apply to the invoice item. When set, the `default_tax_rates` on the invoice do not apply to this invoice item.
      sig { returns(T.nilable(T::Array[String])) }
      def tax_rates; end
      sig { params(_tax_rates: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def tax_rates=(_tax_rates); end
      # The decimal unit amount in cents (or local equivalent) of the charge to be applied to the upcoming invoice. This `unit_amount_decimal` will be multiplied by the quantity to get the full amount. Passing in a negative `unit_amount_decimal` will reduce the `amount_due` on the invoice. Accepts at most 12 decimal places.
      sig { returns(T.nilable(String)) }
      def unit_amount_decimal; end
      sig { params(_unit_amount_decimal: T.nilable(String)).returns(T.nilable(String)) }
      def unit_amount_decimal=(_unit_amount_decimal); end
      sig {
        params(amount: T.nilable(Integer), currency: T.nilable(String), customer: String, description: T.nilable(String), discountable: T.nilable(T::Boolean), discounts: T.nilable(T.any(String, T::Array[::Stripe::InvoiceItemService::CreateParams::Discount])), expand: T.nilable(T::Array[String]), invoice: T.nilable(String), metadata: T.nilable(T.any(String, T::Hash[String, String])), period: T.nilable(::Stripe::InvoiceItemService::CreateParams::Period), price_data: T.nilable(::Stripe::InvoiceItemService::CreateParams::PriceData), pricing: T.nilable(::Stripe::InvoiceItemService::CreateParams::Pricing), quantity: T.nilable(Integer), subscription: T.nilable(String), tax_behavior: T.nilable(String), tax_code: T.nilable(String), tax_rates: T.nilable(T::Array[String]), unit_amount_decimal: T.nilable(String)).void
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
      ); end
    end
    # Creates an item to be added to a draft invoice (up to 250 items per invoice). If no invoice is specified, the item will be on the next invoice created for the customer specified.
    sig {
      params(params: T.any(::Stripe::InvoiceItemService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::InvoiceItem)
     }
    def create(params = {}, opts = {}); end

    # Deletes an invoice item, removing it from an invoice. Deleting invoice items is only possible when they're not attached to invoices, or if it's attached to a draft invoice.
    sig {
      params(invoiceitem: String, params: T.any(::Stripe::InvoiceItemService::DeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::InvoiceItem)
     }
    def delete(invoiceitem, params = {}, opts = {}); end

    # Returns a list of your invoice items. Invoice items are returned sorted by creation date, with the most recently created invoice items appearing first.
    sig {
      params(params: T.any(::Stripe::InvoiceItemService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def list(params = {}, opts = {}); end

    # Retrieves the invoice item with the given ID.
    sig {
      params(invoiceitem: String, params: T.any(::Stripe::InvoiceItemService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::InvoiceItem)
     }
    def retrieve(invoiceitem, params = {}, opts = {}); end

    # Updates the amount or description of an invoice item on an upcoming invoice. Updating an invoice item is only possible before the invoice it's attached to is closed.
    sig {
      params(invoiceitem: String, params: T.any(::Stripe::InvoiceItemService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::InvoiceItem)
     }
    def update(invoiceitem, params = {}, opts = {}); end
  end
end