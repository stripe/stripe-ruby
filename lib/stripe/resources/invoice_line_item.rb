# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Invoice Line Items represent the individual lines within an [invoice](https://stripe.com/docs/api/invoices) and only exist within the context of an invoice.
  #
  # Each line item is backed by either an [invoice item](https://stripe.com/docs/api/invoiceitems) or a [subscription item](https://stripe.com/docs/api/subscription_items).
  class InvoiceLineItem < APIResource
    include Stripe::APIOperations::Save

    OBJECT_NAME = "line_item"
    def self.object_name
      "line_item"
    end

    class DiscountAmount < Stripe::StripeObject
      # The amount, in cents (or local equivalent), of the discount.
      attr_reader :amount
      # The discount that was applied to get this discount amount.
      attr_reader :discount
    end

    class MarginAmount < Stripe::StripeObject
      # The amount, in cents (or local equivalent), of the reduction in line item amount.
      attr_reader :amount
      # The margin that was applied to get this margin amount.
      attr_reader :margin
    end

    class Period < Stripe::StripeObject
      # The end of the period, which must be greater than or equal to the start. This value is inclusive.
      attr_reader :end
      # The start of the period. This value is inclusive.
      attr_reader :start
    end

    class PretaxCreditAmount < Stripe::StripeObject
      # The amount, in cents (or local equivalent), of the pretax credit amount.
      attr_reader :amount
      # The credit balance transaction that was applied to get this pretax credit amount.
      attr_reader :credit_balance_transaction
      # The discount that was applied to get this pretax credit amount.
      attr_reader :discount
      # The margin that was applied to get this pretax credit amount.
      attr_reader :margin
      # Type of the pretax credit amount referenced.
      attr_reader :type
    end

    class ProrationDetails < Stripe::StripeObject
      class CreditedItems < Stripe::StripeObject
        # Invoice containing the credited invoice line items
        attr_reader :invoice
        # Credited invoice line items
        attr_reader :invoice_line_items
      end
      # For a credit proration `line_item`, the original debit line_items to which the credit proration applies.
      attr_reader :credited_items
    end

    class TaxAmount < Stripe::StripeObject
      # The amount, in cents (or local equivalent), of the tax.
      attr_reader :amount
      # Whether this tax amount is inclusive or exclusive.
      attr_reader :inclusive
      # The tax rate that was applied to get this tax amount.
      attr_reader :tax_rate
      # The reasoning behind this tax, for example, if the product is tax exempt. The possible values for this field may be extended as new tax rules are supported.
      attr_reader :taxability_reason
      # The amount on which tax is calculated, in cents (or local equivalent).
      attr_reader :taxable_amount
    end

    class UpdateParams < Stripe::RequestParams
      class Discount < Stripe::RequestParams
        class DiscountEnd < Stripe::RequestParams
          class Duration < Stripe::RequestParams
            # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
            attr_accessor :interval
            # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
            attr_accessor :interval_count

            def initialize(interval: nil, interval_count: nil)
              @interval = interval
              @interval_count = interval_count
            end
          end
          # Time span for the redeemed discount.
          attr_accessor :duration
          # A precise Unix timestamp for the discount to end. Must be in the future.
          attr_accessor :timestamp
          # The type of calculation made to determine when the discount ends.
          attr_accessor :type

          def initialize(duration: nil, timestamp: nil, type: nil)
            @duration = duration
            @timestamp = timestamp
            @type = type
          end
        end
        # ID of the coupon to create a new discount for.
        attr_accessor :coupon
        # ID of an existing discount on the object (or one of its ancestors) to reuse.
        attr_accessor :discount
        # Details to determine how long the discount should be applied for.
        attr_accessor :discount_end
        # ID of the promotion code to create a new discount for.
        attr_accessor :promotion_code

        def initialize(coupon: nil, discount: nil, discount_end: nil, promotion_code: nil)
          @coupon = coupon
          @discount = discount
          @discount_end = discount_end
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
        class ProductData < Stripe::RequestParams
          # The product's description, meant to be displayable to the customer. Use this field to optionally store a long form explanation of the product being sold for your own rendering purposes.
          attr_accessor :description
          # A list of up to 8 URLs of images for this product, meant to be displayable to the customer.
          attr_accessor :images
          # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
          attr_accessor :metadata
          # The product's name, meant to be displayable to the customer.
          attr_accessor :name
          # A [tax code](https://stripe.com/docs/tax/tax-categories) ID.
          attr_accessor :tax_code

          def initialize(description: nil, images: nil, metadata: nil, name: nil, tax_code: nil)
            @description = description
            @images = images
            @metadata = metadata
            @name = name
            @tax_code = tax_code
          end
        end
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        attr_accessor :currency
        # The ID of the product that this price will belong to. One of `product` or `product_data` is required.
        attr_accessor :product
        # Data used to generate a new product object inline. One of `product` or `product_data` is required.
        attr_accessor :product_data
        # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
        attr_accessor :tax_behavior
        # A non-negative integer in cents (or local equivalent) representing how much to charge. One of `unit_amount` or `unit_amount_decimal` is required.
        attr_accessor :unit_amount
        # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
        attr_accessor :unit_amount_decimal

        def initialize(
          currency: nil,
          product: nil,
          product_data: nil,
          tax_behavior: nil,
          unit_amount: nil,
          unit_amount_decimal: nil
        )
          @currency = currency
          @product = product
          @product_data = product_data
          @tax_behavior = tax_behavior
          @unit_amount = unit_amount
          @unit_amount_decimal = unit_amount_decimal
        end
      end

      class TaxAmount < Stripe::RequestParams
        class TaxRateData < Stripe::RequestParams
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          attr_accessor :country
          # An arbitrary string attached to the tax rate for your internal use only. It will not be visible to your customers.
          attr_accessor :description
          # The display name of the tax rate, which will be shown to users.
          attr_accessor :display_name
          # This specifies if the tax rate is inclusive or exclusive.
          attr_accessor :inclusive
          # The jurisdiction for the tax rate. You can use this label field for tax reporting purposes. It also appears on your customer’s invoice.
          attr_accessor :jurisdiction
          # The statutory tax rate percent. This field accepts decimal values between 0 and 100 inclusive with at most 4 decimal places. To accommodate fixed-amount taxes, set the percentage to zero. Stripe will not display zero percentages on the invoice unless the `amount` of the tax is also zero.
          attr_accessor :percentage
          # [ISO 3166-2 subdivision code](https://en.wikipedia.org/wiki/ISO_3166-2:US), without country prefix. For example, "NY" for New York, United States.
          attr_accessor :state
          # The high-level tax type, such as `vat` or `sales_tax`.
          attr_accessor :tax_type

          def initialize(
            country: nil,
            description: nil,
            display_name: nil,
            inclusive: nil,
            jurisdiction: nil,
            percentage: nil,
            state: nil,
            tax_type: nil
          )
            @country = country
            @description = description
            @display_name = display_name
            @inclusive = inclusive
            @jurisdiction = jurisdiction
            @percentage = percentage
            @state = state
            @tax_type = tax_type
          end
        end
        # The amount, in cents (or local equivalent), of the tax.
        attr_accessor :amount
        # Data to find or create a TaxRate object.
        #
        # Stripe automatically creates or reuses a TaxRate object for each tax amount. If the `tax_rate_data` exactly matches a previous value, Stripe will reuse the TaxRate object. TaxRate objects created automatically by Stripe are immediately archived, do not appear in the line item’s `tax_rates`, and cannot be directly added to invoices, payments, or line items.
        attr_accessor :tax_rate_data
        # The amount on which tax is calculated, in cents (or local equivalent).
        attr_accessor :taxable_amount

        def initialize(amount: nil, tax_rate_data: nil, taxable_amount: nil)
          @amount = amount
          @tax_rate_data = tax_rate_data
          @taxable_amount = taxable_amount
        end
      end
      # The integer amount in cents (or local equivalent) of the charge to be applied to the upcoming invoice. If you want to apply a credit to the customer's account, pass a negative amount.
      attr_accessor :amount
      # An arbitrary string which you can attach to the invoice item. The description is displayed in the invoice for easy tracking.
      attr_accessor :description
      # Controls whether discounts apply to this line item. Defaults to false for prorations or negative line items, and true for all other line items. Cannot be set to true for prorations.
      attr_accessor :discountable
      # The coupons, promotion codes & existing discounts which apply to the line item. Item discounts are applied before invoice discounts. Pass an empty string to remove previously-defined discounts.
      attr_accessor :discounts
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # The IDs of the margins to apply to the line item. When set, the `default_margins` on the invoice do not apply to this line item.
      attr_accessor :margins
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`. For [type=subscription](https://stripe.com/docs/api/invoices/line_item#invoice_line_item_object-type) line items, the incoming metadata specified on the request is directly used to set this value, in contrast to [type=invoiceitem](api/invoices/line_item#invoice_line_item_object-type) line items, where any existing metadata on the invoice line is merged with the incoming data.
      attr_accessor :metadata
      # The period associated with this invoice item. When set to different values, the period will be rendered on the invoice. If you have [Stripe Revenue Recognition](https://stripe.com/docs/revenue-recognition) enabled, the period will be used to recognize and defer revenue. See the [Revenue Recognition documentation](https://stripe.com/docs/revenue-recognition/methodology/subscriptions-and-invoicing) for details.
      attr_accessor :period
      # The ID of the price object. One of `price` or `price_data` is required.
      attr_accessor :price
      # Data used to generate a new [Price](https://stripe.com/docs/api/prices) object inline. One of `price` or `price_data` is required.
      attr_accessor :price_data
      # Non-negative integer. The quantity of units for the line item.
      attr_accessor :quantity
      # A list of up to 10 tax amounts for this line item. This can be useful if you calculate taxes on your own or use a third-party to calculate them. You cannot set tax amounts if any line item has [tax_rates](https://stripe.com/docs/api/invoices/line_item#invoice_line_item_object-tax_rates) or if the invoice has [default_tax_rates](https://stripe.com/docs/api/invoices/object#invoice_object-default_tax_rates) or uses [automatic tax](https://stripe.com/docs/tax/invoicing). Pass an empty string to remove previously defined tax amounts.
      attr_accessor :tax_amounts
      # The tax rates which apply to the line item. When set, the `default_tax_rates` on the invoice do not apply to this line item. Pass an empty string to remove previously-defined tax rates.
      attr_accessor :tax_rates

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
      )
        @amount = amount
        @description = description
        @discountable = discountable
        @discounts = discounts
        @expand = expand
        @margins = margins
        @metadata = metadata
        @period = period
        @price = price
        @price_data = price_data
        @quantity = quantity
        @tax_amounts = tax_amounts
        @tax_rates = tax_rates
      end
    end
    # The amount, in cents (or local equivalent).
    attr_reader :amount
    # The integer amount in cents (or local equivalent) representing the amount for this line item, excluding all tax and discounts.
    attr_reader :amount_excluding_tax
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    attr_reader :currency
    # An arbitrary string attached to the object. Often useful for displaying to users.
    attr_reader :description
    # The amount of discount calculated per discount for this line item.
    attr_reader :discount_amounts
    # If true, discounts will apply to this line item. Always false for prorations.
    attr_reader :discountable
    # The discounts applied to the invoice line item. Line item discounts are applied before invoice discounts. Use `expand[]=discounts` to expand each discount.
    attr_reader :discounts
    # Unique identifier for the object.
    attr_reader :id
    # The ID of the invoice that contains this line item.
    attr_reader :invoice
    # The ID of the [invoice item](https://stripe.com/docs/api/invoiceitems) associated with this line item if any.
    attr_reader :invoice_item
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    # The amount of margin calculated per margin for this line item.
    attr_reader :margin_amounts
    # The margins applied to the line item. When set, the `default_margins` on the invoice do not apply to the line item. Use `expand[]=margins` to expand each margin.
    attr_reader :margins
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Note that for line items with `type=subscription`, `metadata` reflects the current metadata from the subscription associated with the line item, unless the invoice line was directly updated with different metadata after creation.
    attr_reader :metadata
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # Attribute for field period
    attr_reader :period
    # The plan of the subscription, if the line item is a subscription or a proration.
    attr_reader :plan
    # Contains pretax credit amounts (ex: discount, credit grants, etc) that apply to this line item.
    attr_reader :pretax_credit_amounts
    # The price of the line item.
    attr_reader :price
    # Whether this is a proration.
    attr_reader :proration
    # Additional details for proration line items
    attr_reader :proration_details
    # The quantity of the subscription, if the line item is a subscription or a proration.
    attr_reader :quantity
    # The subscription that the invoice item pertains to, if any.
    attr_reader :subscription
    # The subscription item that generated this line item. Left empty if the line item is not an explicit result of a subscription.
    attr_reader :subscription_item
    # The amount of tax calculated per tax rate for this line item
    attr_reader :tax_amounts
    # The tax rates which apply to the line item.
    attr_reader :tax_rates
    # A string identifying the type of the source of this line item, either an `invoiceitem` or a `subscription`.
    attr_reader :type
    # The amount in cents (or local equivalent) representing the unit amount for this line item, excluding all tax and discounts.
    attr_reader :unit_amount_excluding_tax

    # Updates an invoice's line item. Some fields, such as tax_amounts, only live on the invoice line item,
    # so they can only be updated through this endpoint. Other fields, such as amount, live on both the invoice
    # item and the invoice line item, so updates on this endpoint will propagate to the invoice item as well.
    # Updating an invoice's line item is only possible before the invoice is finalized.
    def self.update(invoice, line_item_id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/invoices/%<invoice>s/lines/%<line_item_id>s", { invoice: CGI.escape(invoice), line_item_id: CGI.escape(line_item_id) }),
        params: params,
        opts: opts
      )
    end
  end
end
