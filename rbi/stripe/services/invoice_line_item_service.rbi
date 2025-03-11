# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class InvoiceLineItemService < StripeService
    class ListParams < Stripe::RequestParams
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      sig { returns(String) }
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(Integer) }
      attr_accessor :limit
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(String) }
      attr_accessor :starting_after
      sig {
        params(ending_before: String, expand: T::Array[String], limit: Integer, starting_after: String).void
       }
      def initialize(ending_before: nil, expand: nil, limit: nil, starting_after: nil); end
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
          sig {
            returns(::Stripe::InvoiceLineItemService::UpdateParams::Discount::DiscountEnd::Duration)
           }
          attr_accessor :duration
          # A precise Unix timestamp for the discount to end. Must be in the future.
          sig { returns(Integer) }
          attr_accessor :timestamp
          # The type of calculation made to determine when the discount ends.
          sig { returns(String) }
          attr_accessor :type
          sig {
            params(duration: ::Stripe::InvoiceLineItemService::UpdateParams::Discount::DiscountEnd::Duration, timestamp: Integer, type: String).void
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
        sig { returns(::Stripe::InvoiceLineItemService::UpdateParams::Discount::DiscountEnd) }
        attr_accessor :discount_end
        # ID of the promotion code to create a new discount for.
        sig { returns(String) }
        attr_accessor :promotion_code
        sig {
          params(coupon: String, discount: String, discount_end: ::Stripe::InvoiceLineItemService::UpdateParams::Discount::DiscountEnd, promotion_code: String).void
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
        class ProductData < Stripe::RequestParams
          # The product's description, meant to be displayable to the customer. Use this field to optionally store a long form explanation of the product being sold for your own rendering purposes.
          sig { returns(String) }
          attr_accessor :description
          # A list of up to 8 URLs of images for this product, meant to be displayable to the customer.
          sig { returns(T::Array[String]) }
          attr_accessor :images
          # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
          sig { returns(T::Hash[String, String]) }
          attr_accessor :metadata
          # The product's name, meant to be displayable to the customer.
          sig { returns(String) }
          attr_accessor :name
          # A [tax code](https://stripe.com/docs/tax/tax-categories) ID.
          sig { returns(String) }
          attr_accessor :tax_code
          sig {
            params(description: String, images: T::Array[String], metadata: T::Hash[String, String], name: String, tax_code: String).void
           }
          def initialize(
            description: nil,
            images: nil,
            metadata: nil,
            name: nil,
            tax_code: nil
          ); end
        end
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        sig { returns(String) }
        attr_accessor :currency
        # The ID of the [Product](https://docs.stripe.com/api/products) that this [Price](https://docs.stripe.com/api/prices) will belong to. One of `product` or `product_data` is required.
        sig { returns(String) }
        attr_accessor :product
        # Data used to generate a new [Product](https://docs.stripe.com/api/products) object inline. One of `product` or `product_data` is required.
        sig { returns(::Stripe::InvoiceLineItemService::UpdateParams::PriceData::ProductData) }
        attr_accessor :product_data
        # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
        sig { returns(String) }
        attr_accessor :tax_behavior
        # A non-negative integer in cents (or local equivalent) representing how much to charge. One of `unit_amount` or `unit_amount_decimal` is required.
        sig { returns(Integer) }
        attr_accessor :unit_amount
        # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
        sig { returns(String) }
        attr_accessor :unit_amount_decimal
        sig {
          params(currency: String, product: String, product_data: ::Stripe::InvoiceLineItemService::UpdateParams::PriceData::ProductData, tax_behavior: String, unit_amount: Integer, unit_amount_decimal: String).void
         }
        def initialize(
          currency: nil,
          product: nil,
          product_data: nil,
          tax_behavior: nil,
          unit_amount: nil,
          unit_amount_decimal: nil
        ); end
      end
      class TaxAmount < Stripe::RequestParams
        class TaxRateData < Stripe::RequestParams
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(String) }
          attr_accessor :country
          # An arbitrary string attached to the tax rate for your internal use only. It will not be visible to your customers.
          sig { returns(String) }
          attr_accessor :description
          # The display name of the tax rate, which will be shown to users.
          sig { returns(String) }
          attr_accessor :display_name
          # This specifies if the tax rate is inclusive or exclusive.
          sig { returns(T::Boolean) }
          attr_accessor :inclusive
          # The jurisdiction for the tax rate. You can use this label field for tax reporting purposes. It also appears on your customer’s invoice.
          sig { returns(String) }
          attr_accessor :jurisdiction
          # The statutory tax rate percent. This field accepts decimal values between 0 and 100 inclusive with at most 4 decimal places. To accommodate fixed-amount taxes, set the percentage to zero. Stripe will not display zero percentages on the invoice unless the `amount` of the tax is also zero.
          sig { returns(Float) }
          attr_accessor :percentage
          # [ISO 3166-2 subdivision code](https://en.wikipedia.org/wiki/ISO_3166-2:US), without country prefix. For example, "NY" for New York, United States.
          sig { returns(String) }
          attr_accessor :state
          # The high-level tax type, such as `vat` or `sales_tax`.
          sig { returns(String) }
          attr_accessor :tax_type
          sig {
            params(country: String, description: String, display_name: String, inclusive: T::Boolean, jurisdiction: String, percentage: Float, state: String, tax_type: String).void
           }
          def initialize(
            country: nil,
            description: nil,
            display_name: nil,
            inclusive: nil,
            jurisdiction: nil,
            percentage: nil,
            state: nil,
            tax_type: nil
          ); end
        end
        # The amount, in cents (or local equivalent), of the tax.
        sig { returns(Integer) }
        attr_accessor :amount
        # Data to find or create a TaxRate object.
        #
        # Stripe automatically creates or reuses a TaxRate object for each tax amount. If the `tax_rate_data` exactly matches a previous value, Stripe will reuse the TaxRate object. TaxRate objects created automatically by Stripe are immediately archived, do not appear in the line item’s `tax_rates`, and cannot be directly added to invoices, payments, or line items.
        sig { returns(::Stripe::InvoiceLineItemService::UpdateParams::TaxAmount::TaxRateData) }
        attr_accessor :tax_rate_data
        # The amount on which tax is calculated, in cents (or local equivalent).
        sig { returns(Integer) }
        attr_accessor :taxable_amount
        sig {
          params(amount: Integer, tax_rate_data: ::Stripe::InvoiceLineItemService::UpdateParams::TaxAmount::TaxRateData, taxable_amount: Integer).void
         }
        def initialize(amount: nil, tax_rate_data: nil, taxable_amount: nil); end
      end
      # The integer amount in cents (or local equivalent) of the charge to be applied to the upcoming invoice. If you want to apply a credit to the customer's account, pass a negative amount.
      sig { returns(Integer) }
      attr_accessor :amount
      # An arbitrary string which you can attach to the invoice item. The description is displayed in the invoice for easy tracking.
      sig { returns(String) }
      attr_accessor :description
      # Controls whether discounts apply to this line item. Defaults to false for prorations or negative line items, and true for all other line items. Cannot be set to true for prorations.
      sig { returns(T::Boolean) }
      attr_accessor :discountable
      # The coupons, promotion codes & existing discounts which apply to the line item. Item discounts are applied before invoice discounts. Pass an empty string to remove previously-defined discounts.
      sig { returns(T.nilable(T::Array[::Stripe::InvoiceLineItemService::UpdateParams::Discount])) }
      attr_accessor :discounts
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      # The IDs of the margins to apply to the line item. When set, the `default_margins` on the invoice do not apply to this line item.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :margins
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`. For [type=subscription](https://stripe.com/docs/api/invoices/line_item#invoice_line_item_object-type) line items, the incoming metadata specified on the request is directly used to set this value, in contrast to [type=invoiceitem](api/invoices/line_item#invoice_line_item_object-type) line items, where any existing metadata on the invoice line is merged with the incoming data.
      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_accessor :metadata
      # The period associated with this invoice item. When set to different values, the period will be rendered on the invoice. If you have [Stripe Revenue Recognition](https://stripe.com/docs/revenue-recognition) enabled, the period will be used to recognize and defer revenue. See the [Revenue Recognition documentation](https://stripe.com/docs/revenue-recognition/methodology/subscriptions-and-invoicing) for details.
      sig { returns(::Stripe::InvoiceLineItemService::UpdateParams::Period) }
      attr_accessor :period
      # The ID of the price object. One of `price` or `price_data` is required.
      sig { returns(String) }
      attr_accessor :price
      # Data used to generate a new [Price](https://stripe.com/docs/api/prices) object inline. One of `price` or `price_data` is required.
      sig { returns(::Stripe::InvoiceLineItemService::UpdateParams::PriceData) }
      attr_accessor :price_data
      # Non-negative integer. The quantity of units for the line item.
      sig { returns(Integer) }
      attr_accessor :quantity
      # A list of up to 10 tax amounts for this line item. This can be useful if you calculate taxes on your own or use a third-party to calculate them. You cannot set tax amounts if any line item has [tax_rates](https://stripe.com/docs/api/invoices/line_item#invoice_line_item_object-tax_rates) or if the invoice has [default_tax_rates](https://stripe.com/docs/api/invoices/object#invoice_object-default_tax_rates) or uses [automatic tax](https://stripe.com/docs/tax/invoicing). Pass an empty string to remove previously defined tax amounts.
      sig {
        returns(T.nilable(T::Array[::Stripe::InvoiceLineItemService::UpdateParams::TaxAmount]))
       }
      attr_accessor :tax_amounts
      # The tax rates which apply to the line item. When set, the `default_tax_rates` on the invoice do not apply to this line item. Pass an empty string to remove previously-defined tax rates.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :tax_rates
      sig {
        params(amount: Integer, description: String, discountable: T::Boolean, discounts: T.nilable(T::Array[::Stripe::InvoiceLineItemService::UpdateParams::Discount]), expand: T::Array[String], margins: T.nilable(T::Array[String]), metadata: T.nilable(T::Hash[String, String]), period: ::Stripe::InvoiceLineItemService::UpdateParams::Period, price: String, price_data: ::Stripe::InvoiceLineItemService::UpdateParams::PriceData, quantity: Integer, tax_amounts: T.nilable(T::Array[::Stripe::InvoiceLineItemService::UpdateParams::TaxAmount]), tax_rates: T.nilable(T::Array[String])).void
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
        tax_amounts: nil,
        tax_rates: nil
      ); end
    end
    # When retrieving an invoice, you'll get a lines property containing the total count of line items and the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of line items.
    sig {
      params(invoice: String, params: T.any(::Stripe::InvoiceLineItemService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def list(invoice, params = {}, opts = {}); end

    # Updates an invoice's line item. Some fields, such as tax_amounts, only live on the invoice line item,
    # so they can only be updated through this endpoint. Other fields, such as amount, live on both the invoice
    # item and the invoice line item, so updates on this endpoint will propagate to the invoice item as well.
    # Updating an invoice's line item is only possible before the invoice is finalized.
    sig {
      params(invoice: String, line_item_id: String, params: T.any(::Stripe::InvoiceLineItemService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::InvoiceLineItem)
     }
    def update(invoice, line_item_id, params = {}, opts = {}); end
  end
end