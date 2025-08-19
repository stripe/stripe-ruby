# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # Issue a credit note to adjust an invoice's amount after the invoice is finalized.
  #
  # Related guide: [Credit notes](https://stripe.com/docs/billing/invoices/credit-notes)
  class CreditNote < APIResource
    class DiscountAmount < Stripe::StripeObject
      # The amount, in cents (or local equivalent), of the discount.
      sig { returns(Integer) }
      attr_reader :amount
      # The discount that was applied to get this discount amount.
      sig { returns(T.any(String, Stripe::Discount)) }
      attr_reader :discount
    end
    class PretaxCreditAmount < Stripe::StripeObject
      # The amount, in cents (or local equivalent), of the pretax credit amount.
      sig { returns(Integer) }
      attr_reader :amount
      # The credit balance transaction that was applied to get this pretax credit amount.
      sig { returns(T.any(String, Stripe::Billing::CreditBalanceTransaction)) }
      attr_reader :credit_balance_transaction
      # The discount that was applied to get this pretax credit amount.
      sig { returns(T.any(String, Stripe::Discount)) }
      attr_reader :discount
      # Type of the pretax credit amount referenced.
      sig { returns(String) }
      attr_reader :type
    end
    class Refund < Stripe::StripeObject
      # Amount of the refund that applies to this credit note, in cents (or local equivalent).
      sig { returns(Integer) }
      attr_reader :amount_refunded
      # ID of the refund.
      sig { returns(T.any(String, Stripe::Refund)) }
      attr_reader :refund
    end
    class ShippingCost < Stripe::StripeObject
      class Tax < Stripe::StripeObject
        # Amount of tax applied for this rate.
        sig { returns(Integer) }
        attr_reader :amount
        # Tax rates can be applied to [invoices](/invoicing/taxes/tax-rates), [subscriptions](/billing/taxes/tax-rates) and [Checkout Sessions](/payments/checkout/use-manual-tax-rates) to collect tax.
        #
        # Related guide: [Tax rates](/billing/taxes/tax-rates)
        sig { returns(Stripe::TaxRate) }
        attr_reader :rate
        # The reasoning behind this tax, for example, if the product is tax exempt. The possible values for this field may be extended as new tax rules are supported.
        sig { returns(T.nilable(String)) }
        attr_reader :taxability_reason
        # The amount on which tax is calculated, in cents (or local equivalent).
        sig { returns(T.nilable(Integer)) }
        attr_reader :taxable_amount
      end
      # Total shipping cost before any taxes are applied.
      sig { returns(Integer) }
      attr_reader :amount_subtotal
      # Total tax amount applied due to shipping costs. If no tax was applied, defaults to 0.
      sig { returns(Integer) }
      attr_reader :amount_tax
      # Total shipping cost after taxes are applied.
      sig { returns(Integer) }
      attr_reader :amount_total
      # The ID of the ShippingRate for this invoice.
      sig { returns(T.nilable(T.any(String, Stripe::ShippingRate))) }
      attr_reader :shipping_rate
      # The taxes applied to the shipping rate.
      sig { returns(T::Array[Tax]) }
      attr_reader :taxes
    end
    class TotalTax < Stripe::StripeObject
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
    # The integer amount in cents (or local equivalent) representing the total amount of the credit note, including tax.
    sig { returns(Integer) }
    attr_reader :amount
    # This is the sum of all the shipping amounts.
    sig { returns(Integer) }
    attr_reader :amount_shipping
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    attr_reader :created
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    sig { returns(String) }
    attr_reader :currency
    # ID of the customer.
    sig { returns(T.any(String, Stripe::Customer)) }
    attr_reader :customer
    # Customer balance transaction related to this credit note.
    sig { returns(T.nilable(T.any(String, Stripe::CustomerBalanceTransaction))) }
    attr_reader :customer_balance_transaction
    # The integer amount in cents (or local equivalent) representing the total amount of discount that was credited.
    sig { returns(Integer) }
    attr_reader :discount_amount
    # The aggregate amounts calculated per discount for all line items.
    sig { returns(T::Array[DiscountAmount]) }
    attr_reader :discount_amounts
    # The date when this credit note is in effect. Same as `created` unless overwritten. When defined, this value replaces the system-generated 'Date of issue' printed on the credit note PDF.
    sig { returns(T.nilable(Integer)) }
    attr_reader :effective_at
    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id
    # ID of the invoice.
    sig { returns(T.any(String, Stripe::Invoice)) }
    attr_reader :invoice
    # Line items that make up the credit note
    sig { returns(Stripe::ListObject) }
    attr_reader :lines
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    attr_reader :livemode
    # Customer-facing text that appears on the credit note PDF.
    sig { returns(T.nilable(String)) }
    attr_reader :memo
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    sig { returns(T.nilable(T::Hash[String, String])) }
    attr_reader :metadata
    # A unique number that identifies this particular credit note and appears on the PDF of the credit note and its associated invoice.
    sig { returns(String) }
    attr_reader :number
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object
    # Amount that was credited outside of Stripe.
    sig { returns(T.nilable(Integer)) }
    attr_reader :out_of_band_amount
    # The link to download the PDF of the credit note.
    sig { returns(String) }
    attr_reader :pdf
    # The amount of the credit note that was refunded to the customer, credited to the customer's balance, credited outside of Stripe, or any combination thereof.
    sig { returns(Integer) }
    attr_reader :post_payment_amount
    # The amount of the credit note by which the invoice's `amount_remaining` and `amount_due` were reduced.
    sig { returns(Integer) }
    attr_reader :pre_payment_amount
    # The pretax credit amounts (ex: discount, credit grants, etc) for all line items.
    sig { returns(T::Array[PretaxCreditAmount]) }
    attr_reader :pretax_credit_amounts
    # Reason for issuing this credit note, one of `duplicate`, `fraudulent`, `order_change`, or `product_unsatisfactory`
    sig { returns(T.nilable(String)) }
    attr_reader :reason
    # Refunds related to this credit note.
    sig { returns(T::Array[Refund]) }
    attr_reader :refunds
    # The details of the cost of shipping, including the ShippingRate applied to the invoice.
    sig { returns(T.nilable(ShippingCost)) }
    attr_reader :shipping_cost
    # Status of this credit note, one of `issued` or `void`. Learn more about [voiding credit notes](https://stripe.com/docs/billing/invoices/credit-notes#voiding).
    sig { returns(String) }
    attr_reader :status
    # The integer amount in cents (or local equivalent) representing the amount of the credit note, excluding exclusive tax and invoice level discounts.
    sig { returns(Integer) }
    attr_reader :subtotal
    # The integer amount in cents (or local equivalent) representing the amount of the credit note, excluding all tax and invoice level discounts.
    sig { returns(T.nilable(Integer)) }
    attr_reader :subtotal_excluding_tax
    # The integer amount in cents (or local equivalent) representing the total amount of the credit note, including tax and all discount.
    sig { returns(Integer) }
    attr_reader :total
    # The integer amount in cents (or local equivalent) representing the total amount of the credit note, excluding tax, but including discounts.
    sig { returns(T.nilable(Integer)) }
    attr_reader :total_excluding_tax
    # The aggregate tax information for all line items.
    sig { returns(T.nilable(T::Array[TotalTax])) }
    attr_reader :total_taxes
    # Type of this credit note, one of `pre_payment` or `post_payment`. A `pre_payment` credit note means it was issued when the invoice was open. A `post_payment` credit note means it was issued when the invoice was paid.
    sig { returns(String) }
    attr_reader :type
    # The time that the credit note was voided.
    sig { returns(T.nilable(Integer)) }
    attr_reader :voided_at
    class ListParams < Stripe::RequestParams
      class Created < Stripe::RequestParams
        # Minimum value to filter by (exclusive)
        sig { returns(T.nilable(Integer)) }
        attr_accessor :gt
        # Minimum value to filter by (inclusive)
        sig { returns(T.nilable(Integer)) }
        attr_accessor :gte
        # Maximum value to filter by (exclusive)
        sig { returns(T.nilable(Integer)) }
        attr_accessor :lt
        # Maximum value to filter by (inclusive)
        sig { returns(T.nilable(Integer)) }
        attr_accessor :lte
        sig {
          params(gt: T.nilable(Integer), gte: T.nilable(Integer), lt: T.nilable(Integer), lte: T.nilable(Integer)).void
         }
        def initialize(gt: nil, gte: nil, lt: nil, lte: nil); end
      end
      # Only return credit notes that were created during the given date interval.
      sig { returns(T.nilable(T.any(::Stripe::CreditNote::ListParams::Created, Integer))) }
      attr_accessor :created
      # Only return credit notes for the customer specified by this customer ID.
      sig { returns(T.nilable(String)) }
      attr_accessor :customer
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      sig { returns(T.nilable(String)) }
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # Only return credit notes for the invoice specified by this invoice ID.
      sig { returns(T.nilable(String)) }
      attr_accessor :invoice
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :limit
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(T.nilable(String)) }
      attr_accessor :starting_after
      sig {
        params(created: T.nilable(T.any(::Stripe::CreditNote::ListParams::Created, Integer)), customer: T.nilable(String), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), invoice: T.nilable(String), limit: T.nilable(Integer), starting_after: T.nilable(String)).void
       }
      def initialize(
        created: nil,
        customer: nil,
        ending_before: nil,
        expand: nil,
        invoice: nil,
        limit: nil,
        starting_after: nil
      ); end
    end
    class CreateParams < Stripe::RequestParams
      class Line < Stripe::RequestParams
        class TaxAmount < Stripe::RequestParams
          # The amount, in cents (or local equivalent), of the tax.
          sig { returns(Integer) }
          attr_accessor :amount
          # The id of the tax rate for this tax amount. The tax rate must have been automatically created by Stripe.
          sig { returns(String) }
          attr_accessor :tax_rate
          # The amount on which tax is calculated, in cents (or local equivalent).
          sig { returns(Integer) }
          attr_accessor :taxable_amount
          sig { params(amount: Integer, tax_rate: String, taxable_amount: Integer).void }
          def initialize(amount: nil, tax_rate: nil, taxable_amount: nil); end
        end
        # The line item amount to credit. Only valid when `type` is `invoice_line_item`. If invoice is set up with `automatic_tax[enabled]=true`, this amount is tax exclusive
        sig { returns(T.nilable(Integer)) }
        attr_accessor :amount
        # The description of the credit note line item. Only valid when the `type` is `custom_line_item`.
        sig { returns(T.nilable(String)) }
        attr_accessor :description
        # The invoice line item to credit. Only valid when the `type` is `invoice_line_item`.
        sig { returns(T.nilable(String)) }
        attr_accessor :invoice_line_item
        # The line item quantity to credit.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :quantity
        # A list of up to 10 tax amounts for the credit note line item. Cannot be mixed with `tax_rates`.
        sig {
          returns(T.nilable(T.any(String, T::Array[::Stripe::CreditNote::CreateParams::Line::TaxAmount])))
         }
        attr_accessor :tax_amounts
        # The tax rates which apply to the credit note line item. Only valid when the `type` is `custom_line_item` and cannot be mixed with `tax_amounts`.
        sig { returns(T.nilable(T.any(String, T::Array[String]))) }
        attr_accessor :tax_rates
        # Type of the credit note line item, one of `invoice_line_item` or `custom_line_item`
        sig { returns(String) }
        attr_accessor :type
        # The integer unit amount in cents (or local equivalent) of the credit note line item. This `unit_amount` will be multiplied by the quantity to get the full amount to credit for this line item. Only valid when `type` is `custom_line_item`.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :unit_amount
        # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
        sig { returns(T.nilable(String)) }
        attr_accessor :unit_amount_decimal
        sig {
          params(amount: T.nilable(Integer), description: T.nilable(String), invoice_line_item: T.nilable(String), quantity: T.nilable(Integer), tax_amounts: T.nilable(T.any(String, T::Array[::Stripe::CreditNote::CreateParams::Line::TaxAmount])), tax_rates: T.nilable(T.any(String, T::Array[String])), type: String, unit_amount: T.nilable(Integer), unit_amount_decimal: T.nilable(String)).void
         }
        def initialize(
          amount: nil,
          description: nil,
          invoice_line_item: nil,
          quantity: nil,
          tax_amounts: nil,
          tax_rates: nil,
          type: nil,
          unit_amount: nil,
          unit_amount_decimal: nil
        ); end
      end
      class Refund < Stripe::RequestParams
        # Amount of the refund that applies to this credit note, in cents (or local equivalent). Defaults to the entire refund amount.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :amount_refunded
        # ID of an existing refund to link this credit note to. Required when `type` is `refund`.
        sig { returns(T.nilable(String)) }
        attr_accessor :refund
        sig { params(amount_refunded: T.nilable(Integer), refund: T.nilable(String)).void }
        def initialize(amount_refunded: nil, refund: nil); end
      end
      class ShippingCost < Stripe::RequestParams
        # The ID of the shipping rate to use for this order.
        sig { returns(T.nilable(String)) }
        attr_accessor :shipping_rate
        sig { params(shipping_rate: T.nilable(String)).void }
        def initialize(shipping_rate: nil); end
      end
      # The integer amount in cents (or local equivalent) representing the total amount of the credit note. One of `amount`, `lines`, or `shipping_cost` must be provided.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :amount
      # The integer amount in cents (or local equivalent) representing the amount to credit the customer's balance, which will be automatically applied to their next invoice.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :credit_amount
      # The date when this credit note is in effect. Same as `created` unless overwritten. When defined, this value replaces the system-generated 'Date of issue' printed on the credit note PDF.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :effective_at
      # Type of email to send to the customer, one of `credit_note` or `none` and the default is `credit_note`.
      sig { returns(T.nilable(String)) }
      attr_accessor :email_type
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # ID of the invoice.
      sig { returns(String) }
      attr_accessor :invoice
      # Line items that make up the credit note. One of `amount`, `lines`, or `shipping_cost` must be provided.
      sig { returns(T.nilable(T::Array[::Stripe::CreditNote::CreateParams::Line])) }
      attr_accessor :lines
      # The credit note's memo appears on the credit note PDF.
      sig { returns(T.nilable(String)) }
      attr_accessor :memo
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_accessor :metadata
      # The integer amount in cents (or local equivalent) representing the amount that is credited outside of Stripe.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :out_of_band_amount
      # Reason for issuing this credit note, one of `duplicate`, `fraudulent`, `order_change`, or `product_unsatisfactory`
      sig { returns(T.nilable(String)) }
      attr_accessor :reason
      # The integer amount in cents (or local equivalent) representing the amount to refund. If set, a refund will be created for the charge associated with the invoice.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :refund_amount
      # Refunds to link to this credit note.
      sig { returns(T.nilable(T::Array[::Stripe::CreditNote::CreateParams::Refund])) }
      attr_accessor :refunds
      # When shipping_cost contains the shipping_rate from the invoice, the shipping_cost is included in the credit note. One of `amount`, `lines`, or `shipping_cost` must be provided.
      sig { returns(T.nilable(::Stripe::CreditNote::CreateParams::ShippingCost)) }
      attr_accessor :shipping_cost
      sig {
        params(amount: T.nilable(Integer), credit_amount: T.nilable(Integer), effective_at: T.nilable(Integer), email_type: T.nilable(String), expand: T.nilable(T::Array[String]), invoice: String, lines: T.nilable(T::Array[::Stripe::CreditNote::CreateParams::Line]), memo: T.nilable(String), metadata: T.nilable(T::Hash[String, String]), out_of_band_amount: T.nilable(Integer), reason: T.nilable(String), refund_amount: T.nilable(Integer), refunds: T.nilable(T::Array[::Stripe::CreditNote::CreateParams::Refund]), shipping_cost: T.nilable(::Stripe::CreditNote::CreateParams::ShippingCost)).void
       }
      def initialize(
        amount: nil,
        credit_amount: nil,
        effective_at: nil,
        email_type: nil,
        expand: nil,
        invoice: nil,
        lines: nil,
        memo: nil,
        metadata: nil,
        out_of_band_amount: nil,
        reason: nil,
        refund_amount: nil,
        refunds: nil,
        shipping_cost: nil
      ); end
    end
    class UpdateParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # Credit note memo.
      sig { returns(T.nilable(String)) }
      attr_accessor :memo
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_accessor :metadata
      sig {
        params(expand: T.nilable(T::Array[String]), memo: T.nilable(String), metadata: T.nilable(T::Hash[String, String])).void
       }
      def initialize(expand: nil, memo: nil, metadata: nil); end
    end
    class PreviewParams < Stripe::RequestParams
      class Line < Stripe::RequestParams
        class TaxAmount < Stripe::RequestParams
          # The amount, in cents (or local equivalent), of the tax.
          sig { returns(Integer) }
          attr_accessor :amount
          # The id of the tax rate for this tax amount. The tax rate must have been automatically created by Stripe.
          sig { returns(String) }
          attr_accessor :tax_rate
          # The amount on which tax is calculated, in cents (or local equivalent).
          sig { returns(Integer) }
          attr_accessor :taxable_amount
          sig { params(amount: Integer, tax_rate: String, taxable_amount: Integer).void }
          def initialize(amount: nil, tax_rate: nil, taxable_amount: nil); end
        end
        # The line item amount to credit. Only valid when `type` is `invoice_line_item`. If invoice is set up with `automatic_tax[enabled]=true`, this amount is tax exclusive
        sig { returns(T.nilable(Integer)) }
        attr_accessor :amount
        # The description of the credit note line item. Only valid when the `type` is `custom_line_item`.
        sig { returns(T.nilable(String)) }
        attr_accessor :description
        # The invoice line item to credit. Only valid when the `type` is `invoice_line_item`.
        sig { returns(T.nilable(String)) }
        attr_accessor :invoice_line_item
        # The line item quantity to credit.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :quantity
        # A list of up to 10 tax amounts for the credit note line item. Cannot be mixed with `tax_rates`.
        sig {
          returns(T.nilable(T.any(String, T::Array[::Stripe::CreditNote::PreviewParams::Line::TaxAmount])))
         }
        attr_accessor :tax_amounts
        # The tax rates which apply to the credit note line item. Only valid when the `type` is `custom_line_item` and cannot be mixed with `tax_amounts`.
        sig { returns(T.nilable(T.any(String, T::Array[String]))) }
        attr_accessor :tax_rates
        # Type of the credit note line item, one of `invoice_line_item` or `custom_line_item`
        sig { returns(String) }
        attr_accessor :type
        # The integer unit amount in cents (or local equivalent) of the credit note line item. This `unit_amount` will be multiplied by the quantity to get the full amount to credit for this line item. Only valid when `type` is `custom_line_item`.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :unit_amount
        # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
        sig { returns(T.nilable(String)) }
        attr_accessor :unit_amount_decimal
        sig {
          params(amount: T.nilable(Integer), description: T.nilable(String), invoice_line_item: T.nilable(String), quantity: T.nilable(Integer), tax_amounts: T.nilable(T.any(String, T::Array[::Stripe::CreditNote::PreviewParams::Line::TaxAmount])), tax_rates: T.nilable(T.any(String, T::Array[String])), type: String, unit_amount: T.nilable(Integer), unit_amount_decimal: T.nilable(String)).void
         }
        def initialize(
          amount: nil,
          description: nil,
          invoice_line_item: nil,
          quantity: nil,
          tax_amounts: nil,
          tax_rates: nil,
          type: nil,
          unit_amount: nil,
          unit_amount_decimal: nil
        ); end
      end
      class Refund < Stripe::RequestParams
        # Amount of the refund that applies to this credit note, in cents (or local equivalent). Defaults to the entire refund amount.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :amount_refunded
        # ID of an existing refund to link this credit note to. Required when `type` is `refund`.
        sig { returns(T.nilable(String)) }
        attr_accessor :refund
        sig { params(amount_refunded: T.nilable(Integer), refund: T.nilable(String)).void }
        def initialize(amount_refunded: nil, refund: nil); end
      end
      class ShippingCost < Stripe::RequestParams
        # The ID of the shipping rate to use for this order.
        sig { returns(T.nilable(String)) }
        attr_accessor :shipping_rate
        sig { params(shipping_rate: T.nilable(String)).void }
        def initialize(shipping_rate: nil); end
      end
      # The integer amount in cents (or local equivalent) representing the total amount of the credit note. One of `amount`, `lines`, or `shipping_cost` must be provided.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :amount
      # The integer amount in cents (or local equivalent) representing the amount to credit the customer's balance, which will be automatically applied to their next invoice.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :credit_amount
      # The date when this credit note is in effect. Same as `created` unless overwritten. When defined, this value replaces the system-generated 'Date of issue' printed on the credit note PDF.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :effective_at
      # Type of email to send to the customer, one of `credit_note` or `none` and the default is `credit_note`.
      sig { returns(T.nilable(String)) }
      attr_accessor :email_type
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # ID of the invoice.
      sig { returns(String) }
      attr_accessor :invoice
      # Line items that make up the credit note. One of `amount`, `lines`, or `shipping_cost` must be provided.
      sig { returns(T.nilable(T::Array[::Stripe::CreditNote::PreviewParams::Line])) }
      attr_accessor :lines
      # The credit note's memo appears on the credit note PDF.
      sig { returns(T.nilable(String)) }
      attr_accessor :memo
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_accessor :metadata
      # The integer amount in cents (or local equivalent) representing the amount that is credited outside of Stripe.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :out_of_band_amount
      # Reason for issuing this credit note, one of `duplicate`, `fraudulent`, `order_change`, or `product_unsatisfactory`
      sig { returns(T.nilable(String)) }
      attr_accessor :reason
      # The integer amount in cents (or local equivalent) representing the amount to refund. If set, a refund will be created for the charge associated with the invoice.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :refund_amount
      # Refunds to link to this credit note.
      sig { returns(T.nilable(T::Array[::Stripe::CreditNote::PreviewParams::Refund])) }
      attr_accessor :refunds
      # When shipping_cost contains the shipping_rate from the invoice, the shipping_cost is included in the credit note. One of `amount`, `lines`, or `shipping_cost` must be provided.
      sig { returns(T.nilable(::Stripe::CreditNote::PreviewParams::ShippingCost)) }
      attr_accessor :shipping_cost
      sig {
        params(amount: T.nilable(Integer), credit_amount: T.nilable(Integer), effective_at: T.nilable(Integer), email_type: T.nilable(String), expand: T.nilable(T::Array[String]), invoice: String, lines: T.nilable(T::Array[::Stripe::CreditNote::PreviewParams::Line]), memo: T.nilable(String), metadata: T.nilable(T::Hash[String, String]), out_of_band_amount: T.nilable(Integer), reason: T.nilable(String), refund_amount: T.nilable(Integer), refunds: T.nilable(T::Array[::Stripe::CreditNote::PreviewParams::Refund]), shipping_cost: T.nilable(::Stripe::CreditNote::PreviewParams::ShippingCost)).void
       }
      def initialize(
        amount: nil,
        credit_amount: nil,
        effective_at: nil,
        email_type: nil,
        expand: nil,
        invoice: nil,
        lines: nil,
        memo: nil,
        metadata: nil,
        out_of_band_amount: nil,
        reason: nil,
        refund_amount: nil,
        refunds: nil,
        shipping_cost: nil
      ); end
    end
    class ListPreviewLineItemsParams < Stripe::RequestParams
      class Line < Stripe::RequestParams
        class TaxAmount < Stripe::RequestParams
          # The amount, in cents (or local equivalent), of the tax.
          sig { returns(Integer) }
          attr_accessor :amount
          # The id of the tax rate for this tax amount. The tax rate must have been automatically created by Stripe.
          sig { returns(String) }
          attr_accessor :tax_rate
          # The amount on which tax is calculated, in cents (or local equivalent).
          sig { returns(Integer) }
          attr_accessor :taxable_amount
          sig { params(amount: Integer, tax_rate: String, taxable_amount: Integer).void }
          def initialize(amount: nil, tax_rate: nil, taxable_amount: nil); end
        end
        # The line item amount to credit. Only valid when `type` is `invoice_line_item`. If invoice is set up with `automatic_tax[enabled]=true`, this amount is tax exclusive
        sig { returns(T.nilable(Integer)) }
        attr_accessor :amount
        # The description of the credit note line item. Only valid when the `type` is `custom_line_item`.
        sig { returns(T.nilable(String)) }
        attr_accessor :description
        # The invoice line item to credit. Only valid when the `type` is `invoice_line_item`.
        sig { returns(T.nilable(String)) }
        attr_accessor :invoice_line_item
        # The line item quantity to credit.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :quantity
        # A list of up to 10 tax amounts for the credit note line item. Cannot be mixed with `tax_rates`.
        sig {
          returns(T.nilable(T.any(String, T::Array[::Stripe::CreditNote::ListPreviewLineItemsParams::Line::TaxAmount])))
         }
        attr_accessor :tax_amounts
        # The tax rates which apply to the credit note line item. Only valid when the `type` is `custom_line_item` and cannot be mixed with `tax_amounts`.
        sig { returns(T.nilable(T.any(String, T::Array[String]))) }
        attr_accessor :tax_rates
        # Type of the credit note line item, one of `invoice_line_item` or `custom_line_item`
        sig { returns(String) }
        attr_accessor :type
        # The integer unit amount in cents (or local equivalent) of the credit note line item. This `unit_amount` will be multiplied by the quantity to get the full amount to credit for this line item. Only valid when `type` is `custom_line_item`.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :unit_amount
        # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
        sig { returns(T.nilable(String)) }
        attr_accessor :unit_amount_decimal
        sig {
          params(amount: T.nilable(Integer), description: T.nilable(String), invoice_line_item: T.nilable(String), quantity: T.nilable(Integer), tax_amounts: T.nilable(T.any(String, T::Array[::Stripe::CreditNote::ListPreviewLineItemsParams::Line::TaxAmount])), tax_rates: T.nilable(T.any(String, T::Array[String])), type: String, unit_amount: T.nilable(Integer), unit_amount_decimal: T.nilable(String)).void
         }
        def initialize(
          amount: nil,
          description: nil,
          invoice_line_item: nil,
          quantity: nil,
          tax_amounts: nil,
          tax_rates: nil,
          type: nil,
          unit_amount: nil,
          unit_amount_decimal: nil
        ); end
      end
      class Refund < Stripe::RequestParams
        # Amount of the refund that applies to this credit note, in cents (or local equivalent). Defaults to the entire refund amount.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :amount_refunded
        # ID of an existing refund to link this credit note to. Required when `type` is `refund`.
        sig { returns(T.nilable(String)) }
        attr_accessor :refund
        sig { params(amount_refunded: T.nilable(Integer), refund: T.nilable(String)).void }
        def initialize(amount_refunded: nil, refund: nil); end
      end
      class ShippingCost < Stripe::RequestParams
        # The ID of the shipping rate to use for this order.
        sig { returns(T.nilable(String)) }
        attr_accessor :shipping_rate
        sig { params(shipping_rate: T.nilable(String)).void }
        def initialize(shipping_rate: nil); end
      end
      # The integer amount in cents (or local equivalent) representing the total amount of the credit note. One of `amount`, `lines`, or `shipping_cost` must be provided.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :amount
      # The integer amount in cents (or local equivalent) representing the amount to credit the customer's balance, which will be automatically applied to their next invoice.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :credit_amount
      # The date when this credit note is in effect. Same as `created` unless overwritten. When defined, this value replaces the system-generated 'Date of issue' printed on the credit note PDF.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :effective_at
      # Type of email to send to the customer, one of `credit_note` or `none` and the default is `credit_note`.
      sig { returns(T.nilable(String)) }
      attr_accessor :email_type
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      sig { returns(T.nilable(String)) }
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # ID of the invoice.
      sig { returns(String) }
      attr_accessor :invoice
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :limit
      # Line items that make up the credit note. One of `amount`, `lines`, or `shipping_cost` must be provided.
      sig { returns(T.nilable(T::Array[::Stripe::CreditNote::ListPreviewLineItemsParams::Line])) }
      attr_accessor :lines
      # The credit note's memo appears on the credit note PDF.
      sig { returns(T.nilable(String)) }
      attr_accessor :memo
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_accessor :metadata
      # The integer amount in cents (or local equivalent) representing the amount that is credited outside of Stripe.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :out_of_band_amount
      # Reason for issuing this credit note, one of `duplicate`, `fraudulent`, `order_change`, or `product_unsatisfactory`
      sig { returns(T.nilable(String)) }
      attr_accessor :reason
      # The integer amount in cents (or local equivalent) representing the amount to refund. If set, a refund will be created for the charge associated with the invoice.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :refund_amount
      # Refunds to link to this credit note.
      sig { returns(T.nilable(T::Array[::Stripe::CreditNote::ListPreviewLineItemsParams::Refund])) }
      attr_accessor :refunds
      # When shipping_cost contains the shipping_rate from the invoice, the shipping_cost is included in the credit note. One of `amount`, `lines`, or `shipping_cost` must be provided.
      sig { returns(T.nilable(::Stripe::CreditNote::ListPreviewLineItemsParams::ShippingCost)) }
      attr_accessor :shipping_cost
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(T.nilable(String)) }
      attr_accessor :starting_after
      sig {
        params(amount: T.nilable(Integer), credit_amount: T.nilable(Integer), effective_at: T.nilable(Integer), email_type: T.nilable(String), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), invoice: String, limit: T.nilable(Integer), lines: T.nilable(T::Array[::Stripe::CreditNote::ListPreviewLineItemsParams::Line]), memo: T.nilable(String), metadata: T.nilable(T::Hash[String, String]), out_of_band_amount: T.nilable(Integer), reason: T.nilable(String), refund_amount: T.nilable(Integer), refunds: T.nilable(T::Array[::Stripe::CreditNote::ListPreviewLineItemsParams::Refund]), shipping_cost: T.nilable(::Stripe::CreditNote::ListPreviewLineItemsParams::ShippingCost), starting_after: T.nilable(String)).void
       }
      def initialize(
        amount: nil,
        credit_amount: nil,
        effective_at: nil,
        email_type: nil,
        ending_before: nil,
        expand: nil,
        invoice: nil,
        limit: nil,
        lines: nil,
        memo: nil,
        metadata: nil,
        out_of_band_amount: nil,
        reason: nil,
        refund_amount: nil,
        refunds: nil,
        shipping_cost: nil,
        starting_after: nil
      ); end
    end
    class VoidCreditNoteParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      sig { params(expand: T.nilable(T::Array[String])).void }
      def initialize(expand: nil); end
    end
    # Issue a credit note to adjust the amount of a finalized invoice. A credit note will first reduce the invoice's amount_remaining (and amount_due), but not below zero.
    # This amount is indicated by the credit note's pre_payment_amount. The excess amount is indicated by post_payment_amount, and it can result in any combination of the following:
    #
    #
    # Refunds: create a new refund (using refund_amount) or link existing refunds (using refunds).
    # Customer balance credit: credit the customer's balance (using credit_amount) which will be automatically applied to their next invoice when it's finalized.
    # Outside of Stripe credit: record the amount that is or will be credited outside of Stripe (using out_of_band_amount).
    #
    #
    # The sum of refunds, customer balance credits, and outside of Stripe credits must equal the post_payment_amount.
    #
    # You may issue multiple credit notes for an invoice. Each credit note may increment the invoice's pre_payment_credit_notes_amount,
    # post_payment_credit_notes_amount, or both, depending on the invoice's amount_remaining at the time of credit note creation.
    sig {
      params(params: T.any(::Stripe::CreditNote::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::CreditNote)
     }
    def self.create(params = {}, opts = {}); end

    # Returns a list of credit notes.
    sig {
      params(params: T.any(::Stripe::CreditNote::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def self.list(params = {}, opts = {}); end

    # When retrieving a credit note preview, you'll get a lines property containing the first handful of those items. This URL you can retrieve the full (paginated) list of line items.
    sig {
      params(params: T.any(::Stripe::CreditNote::ListPreviewLineItemsParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def self.list_preview_line_items(params = {}, opts = {}); end

    # Get a preview of a credit note without creating it.
    sig {
      params(params: T.any(::Stripe::CreditNote::PreviewParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::CreditNote)
     }
    def self.preview(params = {}, opts = {}); end

    # Updates an existing credit note.
    sig {
      params(id: String, params: T.any(::Stripe::CreditNote::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::CreditNote)
     }
    def self.update(id, params = {}, opts = {}); end

    # Marks a credit note as void. Learn more about [voiding credit notes](https://docs.stripe.com/docs/billing/invoices/credit-notes#voiding).
    sig {
      params(params: T.any(::Stripe::CreditNote::VoidCreditNoteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::CreditNote)
     }
    def void_credit_note(params = {}, opts = {}); end

    # Marks a credit note as void. Learn more about [voiding credit notes](https://docs.stripe.com/docs/billing/invoices/credit-notes#voiding).
    sig {
      params(id: String, params: T.any(::Stripe::CreditNote::VoidCreditNoteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::CreditNote)
     }
    def self.void_credit_note(id, params = {}, opts = {}); end
  end
end