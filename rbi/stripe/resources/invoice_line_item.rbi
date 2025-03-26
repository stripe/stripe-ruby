# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # Invoice Line Items represent the individual lines within an [invoice](https://stripe.com/docs/api/invoices) and only exist within the context of an invoice.
  #
  # Each line item is backed by either an [invoice item](https://stripe.com/docs/api/invoiceitems) or a [subscription item](https://stripe.com/docs/api/subscription_items).
  class InvoiceLineItem < APIResource
    class DiscountAmount < Stripe::StripeObject
      # The amount, in cents (or local equivalent), of the discount.
      sig { returns(Integer) }
      attr_reader :amount
      # The discount that was applied to get this discount amount.
      sig { returns(T.any(String, Stripe::Discount)) }
      attr_reader :discount
    end
    class MarginAmount < Stripe::StripeObject
      # The amount, in cents (or local equivalent), of the reduction in line item amount.
      sig { returns(Integer) }
      attr_reader :amount
      # The margin that was applied to get this margin amount.
      sig { returns(T.any(String, Stripe::Margin)) }
      attr_reader :margin
    end
    class Parent < Stripe::StripeObject
      class InvoiceItemDetails < Stripe::StripeObject
        class ProrationDetails < Stripe::StripeObject
          class CreditedItems < Stripe::StripeObject
            # Invoice containing the credited invoice line items
            sig { returns(String) }
            attr_reader :invoice
            # Credited invoice line items
            sig { returns(T::Array[String]) }
            attr_reader :invoice_line_items
          end
          # For a credit proration `line_item`, the original debit line_items to which the credit proration applies.
          sig { returns(T.nilable(CreditedItems)) }
          attr_reader :credited_items
        end
        # Attribute for field invoice_item
        sig { returns(String) }
        attr_reader :invoice_item
        # Whether this is a proration.
        sig { returns(T::Boolean) }
        attr_reader :proration
        # Additional details for proration line items
        sig { returns(T.nilable(ProrationDetails)) }
        attr_reader :proration_details
        # Attribute for field subscription
        sig { returns(T.nilable(String)) }
        attr_reader :subscription
      end
      class SubscriptionItemDetails < Stripe::StripeObject
        class ProrationDetails < Stripe::StripeObject
          class CreditedItems < Stripe::StripeObject
            # Invoice containing the credited invoice line items
            sig { returns(String) }
            attr_reader :invoice
            # Credited invoice line items
            sig { returns(T::Array[String]) }
            attr_reader :invoice_line_items
          end
          # For a credit proration `line_item`, the original debit line_items to which the credit proration applies.
          sig { returns(T.nilable(CreditedItems)) }
          attr_reader :credited_items
        end
        # Attribute for field invoice_item
        sig { returns(T.nilable(String)) }
        attr_reader :invoice_item
        # Whether this is a proration.
        sig { returns(T::Boolean) }
        attr_reader :proration
        # Additional details for proration line items
        sig { returns(T.nilable(ProrationDetails)) }
        attr_reader :proration_details
        # Attribute for field subscription
        sig { returns(String) }
        attr_reader :subscription
        # Attribute for field subscription_item
        sig { returns(String) }
        attr_reader :subscription_item
      end
      # Attribute for field invoice_item_details
      sig { returns(T.nilable(InvoiceItemDetails)) }
      attr_reader :invoice_item_details
      # Attribute for field subscription_item_details
      sig { returns(T.nilable(SubscriptionItemDetails)) }
      attr_reader :subscription_item_details
      # Attribute for field type
      sig { returns(String) }
      attr_reader :type
    end
    class Period < Stripe::StripeObject
      # The end of the period, which must be greater than or equal to the start. This value is inclusive.
      sig { returns(Integer) }
      attr_reader :end
      # The start of the period. This value is inclusive.
      sig { returns(Integer) }
      attr_reader :start
    end
    class PretaxCreditAmount < Stripe::StripeObject
      # The amount, in cents (or local equivalent), of the pretax credit amount.
      sig { returns(Integer) }
      attr_reader :amount
      # The credit balance transaction that was applied to get this pretax credit amount.
      sig { returns(T.nilable(T.any(String, Stripe::Billing::CreditBalanceTransaction))) }
      attr_reader :credit_balance_transaction
      # The discount that was applied to get this pretax credit amount.
      sig { returns(T.any(String, Stripe::Discount)) }
      attr_reader :discount
      # The margin that was applied to get this pretax credit amount.
      sig { returns(T.any(String, Stripe::Margin)) }
      attr_reader :margin
      # Type of the pretax credit amount referenced.
      sig { returns(String) }
      attr_reader :type
    end
    class Pricing < Stripe::StripeObject
      class PriceDetails < Stripe::StripeObject
        # The ID of the price this item is associated with.
        sig { returns(String) }
        attr_reader :price
        # The ID of the product this item is associated with.
        sig { returns(String) }
        attr_reader :product
      end
      # Attribute for field price_details
      sig { returns(PriceDetails) }
      attr_reader :price_details
      # The type of the pricing details.
      sig { returns(String) }
      attr_reader :type
      # The unit amount (in the `currency` specified) of the item which contains a decimal value with at most 12 decimal places.
      sig { returns(T.nilable(String)) }
      attr_reader :unit_amount_decimal
    end
    class TaxCalculationReference < Stripe::StripeObject
      # The calculation identifier for tax calculation response.
      sig { returns(T.nilable(String)) }
      attr_reader :calculation_id
      # The calculation identifier for tax calculation response line item.
      sig { returns(T.nilable(String)) }
      attr_reader :calculation_item_id
    end
    class Tax < Stripe::StripeObject
      class TaxRateDetails < Stripe::StripeObject
        # Attribute for field tax_rate
        sig { returns(String) }
        attr_reader :tax_rate
      end
      # The amount of the tax, in cents (or local equivalent).
      sig { returns(Integer) }
      attr_reader :amount
      # Whether this tax is inclusive or exclusive.
      sig { returns(String) }
      attr_reader :tax_behavior
      # Additional details about the tax rate. Only present when `type` is `tax_rate_details`.
      sig { returns(T.nilable(TaxRateDetails)) }
      attr_reader :tax_rate_details
      # The reasoning behind this tax, for example, if the product is tax exempt. The possible values for this field may be extended as new tax rules are supported.
      sig { returns(String) }
      attr_reader :taxability_reason
      # The amount on which tax is calculated, in cents (or local equivalent).
      sig { returns(T.nilable(Integer)) }
      attr_reader :taxable_amount
      # The type of tax information.
      sig { returns(String) }
      attr_reader :type
    end
    # The amount, in cents (or local equivalent).
    sig { returns(Integer) }
    attr_reader :amount
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    sig { returns(String) }
    attr_reader :currency
    # An arbitrary string attached to the object. Often useful for displaying to users.
    sig { returns(T.nilable(String)) }
    attr_reader :description
    # The amount of discount calculated per discount for this line item.
    sig { returns(T.nilable(T::Array[DiscountAmount])) }
    attr_reader :discount_amounts
    # If true, discounts will apply to this line item. Always false for prorations.
    sig { returns(T::Boolean) }
    attr_reader :discountable
    # The discounts applied to the invoice line item. Line item discounts are applied before invoice discounts. Use `expand[]=discounts` to expand each discount.
    sig { returns(T::Array[T.any(String, Stripe::Discount)]) }
    attr_reader :discounts
    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id
    # The ID of the invoice that contains this line item.
    sig { returns(T.nilable(String)) }
    attr_reader :invoice
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    attr_reader :livemode
    # The amount of margin calculated per margin for this line item.
    sig { returns(T.nilable(T::Array[MarginAmount])) }
    attr_reader :margin_amounts
    # The margins applied to the line item. When set, the `default_margins` on the invoice do not apply to the line item. Use `expand[]=margins` to expand each margin.
    sig { returns(T.nilable(T::Array[T.any(String, Stripe::Margin)])) }
    attr_reader :margins
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Note that for line items with `type=subscription`, `metadata` reflects the current metadata from the subscription associated with the line item, unless the invoice line was directly updated with different metadata after creation.
    sig { returns(T::Hash[String, String]) }
    attr_reader :metadata
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object
    # Attribute for field parent
    sig { returns(T.nilable(Parent)) }
    attr_reader :parent
    # Attribute for field period
    sig { returns(Period) }
    attr_reader :period
    # Contains pretax credit amounts (ex: discount, credit grants, etc) that apply to this line item.
    sig { returns(T.nilable(T::Array[PretaxCreditAmount])) }
    attr_reader :pretax_credit_amounts
    # The pricing information of the line item.
    sig { returns(T.nilable(Pricing)) }
    attr_reader :pricing
    # The quantity of the subscription, if the line item is a subscription or a proration.
    sig { returns(T.nilable(Integer)) }
    attr_reader :quantity
    # Attribute for field subscription
    sig { returns(T.nilable(T.any(String, Stripe::Subscription))) }
    attr_reader :subscription
    # The tax calculation identifiers of the line item.
    sig { returns(T.nilable(TaxCalculationReference)) }
    attr_reader :tax_calculation_reference
    # The tax information of the line item.
    sig { returns(T.nilable(T::Array[Tax])) }
    attr_reader :taxes
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
          sig { returns(::Stripe::InvoiceLineItem::UpdateParams::Discount::DiscountEnd::Duration) }
          attr_accessor :duration
          # A precise Unix timestamp for the discount to end. Must be in the future.
          sig { returns(Integer) }
          attr_accessor :timestamp
          # The type of calculation made to determine when the discount ends.
          sig { returns(String) }
          attr_accessor :type
          sig {
            params(duration: ::Stripe::InvoiceLineItem::UpdateParams::Discount::DiscountEnd::Duration, timestamp: Integer, type: String).void
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
        sig { returns(::Stripe::InvoiceLineItem::UpdateParams::Discount::DiscountEnd) }
        attr_accessor :discount_end
        # ID of the promotion code to create a new discount for.
        sig { returns(String) }
        attr_accessor :promotion_code
        sig {
          params(coupon: String, discount: String, discount_end: ::Stripe::InvoiceLineItem::UpdateParams::Discount::DiscountEnd, promotion_code: String).void
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
        sig { returns(::Stripe::InvoiceLineItem::UpdateParams::PriceData::ProductData) }
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
          params(currency: String, product: String, product_data: ::Stripe::InvoiceLineItem::UpdateParams::PriceData::ProductData, tax_behavior: String, unit_amount: Integer, unit_amount_decimal: String).void
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
      class Pricing < Stripe::RequestParams
        # The ID of the price object.
        sig { returns(String) }
        attr_accessor :price
        sig { params(price: String).void }
        def initialize(price: nil); end
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
          # The level of the jurisdiction that imposes this tax rate.
          sig { returns(String) }
          attr_accessor :jurisdiction_level
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
            params(country: String, description: String, display_name: String, inclusive: T::Boolean, jurisdiction: String, jurisdiction_level: String, percentage: Float, state: String, tax_type: String).void
           }
          def initialize(
            country: nil,
            description: nil,
            display_name: nil,
            inclusive: nil,
            jurisdiction: nil,
            jurisdiction_level: nil,
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
        sig { returns(::Stripe::InvoiceLineItem::UpdateParams::TaxAmount::TaxRateData) }
        attr_accessor :tax_rate_data
        # The reasoning behind this tax, for example, if the product is tax exempt.
        sig { returns(String) }
        attr_accessor :taxability_reason
        # The amount on which tax is calculated, in cents (or local equivalent).
        sig { returns(Integer) }
        attr_accessor :taxable_amount
        sig {
          params(amount: Integer, tax_rate_data: ::Stripe::InvoiceLineItem::UpdateParams::TaxAmount::TaxRateData, taxability_reason: String, taxable_amount: Integer).void
         }
        def initialize(
          amount: nil,
          tax_rate_data: nil,
          taxability_reason: nil,
          taxable_amount: nil
        ); end
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
      sig { returns(T.nilable(T::Array[::Stripe::InvoiceLineItem::UpdateParams::Discount])) }
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
      sig { returns(::Stripe::InvoiceLineItem::UpdateParams::Period) }
      attr_accessor :period
      # Data used to generate a new [Price](https://stripe.com/docs/api/prices) object inline.
      sig { returns(::Stripe::InvoiceLineItem::UpdateParams::PriceData) }
      attr_accessor :price_data
      # The pricing information for the invoice item.
      sig { returns(::Stripe::InvoiceLineItem::UpdateParams::Pricing) }
      attr_accessor :pricing
      # Non-negative integer. The quantity of units for the line item.
      sig { returns(Integer) }
      attr_accessor :quantity
      # A list of up to 10 tax amounts for this line item. This can be useful if you calculate taxes on your own or use a third-party to calculate them. You cannot set tax amounts if any line item has [tax_rates](https://stripe.com/docs/api/invoices/line_item#invoice_line_item_object-tax_rates) or if the invoice has [default_tax_rates](https://stripe.com/docs/api/invoices/object#invoice_object-default_tax_rates) or uses [automatic tax](https://stripe.com/docs/tax/invoicing). Pass an empty string to remove previously defined tax amounts.
      sig { returns(T.nilable(T::Array[::Stripe::InvoiceLineItem::UpdateParams::TaxAmount])) }
      attr_accessor :tax_amounts
      # The tax rates which apply to the line item. When set, the `default_tax_rates` on the invoice do not apply to this line item. Pass an empty string to remove previously-defined tax rates.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :tax_rates
      sig {
        params(amount: Integer, description: String, discountable: T::Boolean, discounts: T.nilable(T::Array[::Stripe::InvoiceLineItem::UpdateParams::Discount]), expand: T::Array[String], margins: T.nilable(T::Array[String]), metadata: T.nilable(T::Hash[String, String]), period: ::Stripe::InvoiceLineItem::UpdateParams::Period, price_data: ::Stripe::InvoiceLineItem::UpdateParams::PriceData, pricing: ::Stripe::InvoiceLineItem::UpdateParams::Pricing, quantity: Integer, tax_amounts: T.nilable(T::Array[::Stripe::InvoiceLineItem::UpdateParams::TaxAmount]), tax_rates: T.nilable(T::Array[String])).void
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
        price_data: nil,
        pricing: nil,
        quantity: nil,
        tax_amounts: nil,
        tax_rates: nil
      ); end
    end
    # Updates an invoice's line item. Some fields, such as tax_amounts, only live on the invoice line item,
    # so they can only be updated through this endpoint. Other fields, such as amount, live on both the invoice
    # item and the invoice line item, so updates on this endpoint will propagate to the invoice item as well.
    # Updating an invoice's line item is only possible before the invoice is finalized.
    sig {
      params(invoice: String, line_item_id: String, params: T.any(::Stripe::InvoiceLineItem::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::InvoiceLineItem)
     }
    def self.update(invoice, line_item_id, params = {}, opts = {}); end
  end
end