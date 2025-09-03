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
      def amount; end
      # The discount that was applied to get this discount amount.
      sig { returns(T.any(String, Stripe::Discount)) }
      def discount; end
    end
    class PretaxCreditAmount < Stripe::StripeObject
      # The amount, in cents (or local equivalent), of the pretax credit amount.
      sig { returns(Integer) }
      def amount; end
      # The credit balance transaction that was applied to get this pretax credit amount.
      sig { returns(T.any(String, Stripe::Billing::CreditBalanceTransaction)) }
      def credit_balance_transaction; end
      # The discount that was applied to get this pretax credit amount.
      sig { returns(T.any(String, Stripe::Discount)) }
      def discount; end
      # Type of the pretax credit amount referenced.
      sig { returns(String) }
      def type; end
    end
    class Refund < Stripe::StripeObject
      # Amount of the refund that applies to this credit note, in cents (or local equivalent).
      sig { returns(Integer) }
      def amount_refunded; end
      # ID of the refund.
      sig { returns(T.any(String, Stripe::Refund)) }
      def refund; end
    end
    class ShippingCost < Stripe::StripeObject
      class Tax < Stripe::StripeObject
        # Amount of tax applied for this rate.
        sig { returns(Integer) }
        def amount; end
        # Tax rates can be applied to [invoices](/invoicing/taxes/tax-rates), [subscriptions](/billing/taxes/tax-rates) and [Checkout Sessions](/payments/checkout/use-manual-tax-rates) to collect tax.
        #
        # Related guide: [Tax rates](/billing/taxes/tax-rates)
        sig { returns(Stripe::TaxRate) }
        def rate; end
        # The reasoning behind this tax, for example, if the product is tax exempt. The possible values for this field may be extended as new tax rules are supported.
        sig { returns(T.nilable(String)) }
        def taxability_reason; end
        # The amount on which tax is calculated, in cents (or local equivalent).
        sig { returns(T.nilable(Integer)) }
        def taxable_amount; end
      end
      # Total shipping cost before any taxes are applied.
      sig { returns(Integer) }
      def amount_subtotal; end
      # Total tax amount applied due to shipping costs. If no tax was applied, defaults to 0.
      sig { returns(Integer) }
      def amount_tax; end
      # Total shipping cost after taxes are applied.
      sig { returns(Integer) }
      def amount_total; end
      # The ID of the ShippingRate for this invoice.
      sig { returns(T.nilable(T.any(String, Stripe::ShippingRate))) }
      def shipping_rate; end
      # The taxes applied to the shipping rate.
      sig { returns(T::Array[Tax]) }
      def taxes; end
    end
    class TotalTax < Stripe::StripeObject
      class TaxRateDetails < Stripe::StripeObject
        # Attribute for field tax_rate
        sig { returns(String) }
        def tax_rate; end
      end
      # The amount of the tax, in cents (or local equivalent).
      sig { returns(Integer) }
      def amount; end
      # Whether this tax is inclusive or exclusive.
      sig { returns(String) }
      def tax_behavior; end
      # Additional details about the tax rate. Only present when `type` is `tax_rate_details`.
      sig { returns(T.nilable(TaxRateDetails)) }
      def tax_rate_details; end
      # The reasoning behind this tax, for example, if the product is tax exempt. The possible values for this field may be extended as new tax rules are supported.
      sig { returns(String) }
      def taxability_reason; end
      # The amount on which tax is calculated, in cents (or local equivalent).
      sig { returns(T.nilable(Integer)) }
      def taxable_amount; end
      # The type of tax information.
      sig { returns(String) }
      def type; end
    end
    # The integer amount in cents (or local equivalent) representing the total amount of the credit note, including tax.
    sig { returns(Integer) }
    def amount; end
    # This is the sum of all the shipping amounts.
    sig { returns(Integer) }
    def amount_shipping; end
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    def created; end
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    sig { returns(String) }
    def currency; end
    # ID of the customer.
    sig { returns(T.any(String, Stripe::Customer)) }
    def customer; end
    # Customer balance transaction related to this credit note.
    sig { returns(T.nilable(T.any(String, Stripe::CustomerBalanceTransaction))) }
    def customer_balance_transaction; end
    # The integer amount in cents (or local equivalent) representing the total amount of discount that was credited.
    sig { returns(Integer) }
    def discount_amount; end
    # The aggregate amounts calculated per discount for all line items.
    sig { returns(T::Array[DiscountAmount]) }
    def discount_amounts; end
    # The date when this credit note is in effect. Same as `created` unless overwritten. When defined, this value replaces the system-generated 'Date of issue' printed on the credit note PDF.
    sig { returns(T.nilable(Integer)) }
    def effective_at; end
    # Unique identifier for the object.
    sig { returns(String) }
    def id; end
    # ID of the invoice.
    sig { returns(T.any(String, Stripe::Invoice)) }
    def invoice; end
    # Line items that make up the credit note
    sig { returns(Stripe::ListObject) }
    def lines; end
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    def livemode; end
    # Customer-facing text that appears on the credit note PDF.
    sig { returns(T.nilable(String)) }
    def memo; end
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    sig { returns(T.nilable(T::Hash[String, String])) }
    def metadata; end
    # A unique number that identifies this particular credit note and appears on the PDF of the credit note and its associated invoice.
    sig { returns(String) }
    def number; end
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    def object; end
    # Amount that was credited outside of Stripe.
    sig { returns(T.nilable(Integer)) }
    def out_of_band_amount; end
    # The link to download the PDF of the credit note.
    sig { returns(String) }
    def pdf; end
    # The amount of the credit note that was refunded to the customer, credited to the customer's balance, credited outside of Stripe, or any combination thereof.
    sig { returns(Integer) }
    def post_payment_amount; end
    # The amount of the credit note by which the invoice's `amount_remaining` and `amount_due` were reduced.
    sig { returns(Integer) }
    def pre_payment_amount; end
    # The pretax credit amounts (ex: discount, credit grants, etc) for all line items.
    sig { returns(T::Array[PretaxCreditAmount]) }
    def pretax_credit_amounts; end
    # Reason for issuing this credit note, one of `duplicate`, `fraudulent`, `order_change`, or `product_unsatisfactory`
    sig { returns(T.nilable(String)) }
    def reason; end
    # Refunds related to this credit note.
    sig { returns(T::Array[Refund]) }
    def refunds; end
    # The details of the cost of shipping, including the ShippingRate applied to the invoice.
    sig { returns(T.nilable(ShippingCost)) }
    def shipping_cost; end
    # Status of this credit note, one of `issued` or `void`. Learn more about [voiding credit notes](https://stripe.com/docs/billing/invoices/credit-notes#voiding).
    sig { returns(String) }
    def status; end
    # The integer amount in cents (or local equivalent) representing the amount of the credit note, excluding exclusive tax and invoice level discounts.
    sig { returns(Integer) }
    def subtotal; end
    # The integer amount in cents (or local equivalent) representing the amount of the credit note, excluding all tax and invoice level discounts.
    sig { returns(T.nilable(Integer)) }
    def subtotal_excluding_tax; end
    # The integer amount in cents (or local equivalent) representing the total amount of the credit note, including tax and all discount.
    sig { returns(Integer) }
    def total; end
    # The integer amount in cents (or local equivalent) representing the total amount of the credit note, excluding tax, but including discounts.
    sig { returns(T.nilable(Integer)) }
    def total_excluding_tax; end
    # The aggregate tax information for all line items.
    sig { returns(T.nilable(T::Array[TotalTax])) }
    def total_taxes; end
    # Type of this credit note, one of `pre_payment` or `post_payment`. A `pre_payment` credit note means it was issued when the invoice was open. A `post_payment` credit note means it was issued when the invoice was paid.
    sig { returns(String) }
    def type; end
    # The time that the credit note was voided.
    sig { returns(T.nilable(Integer)) }
    def voided_at; end
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
      # Only return credit notes that were created during the given date interval.
      sig { returns(T.nilable(T.any(::Stripe::CreditNote::ListParams::Created, Integer))) }
      def created; end
      sig {
        params(_created: T.nilable(T.any(::Stripe::CreditNote::ListParams::Created, Integer))).returns(T.nilable(T.any(::Stripe::CreditNote::ListParams::Created, Integer)))
       }
      def created=(_created); end
      # Only return credit notes for the customer specified by this customer ID.
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
      # Only return credit notes for the invoice specified by this invoice ID.
      sig { returns(T.nilable(String)) }
      def invoice; end
      sig { params(_invoice: T.nilable(String)).returns(T.nilable(String)) }
      def invoice=(_invoice); end
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(T.nilable(Integer)) }
      def limit; end
      sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def limit=(_limit); end
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(T.nilable(String)) }
      def starting_after; end
      sig { params(_starting_after: T.nilable(String)).returns(T.nilable(String)) }
      def starting_after=(_starting_after); end
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
          def amount; end
          sig { params(_amount: Integer).returns(Integer) }
          def amount=(_amount); end
          # The id of the tax rate for this tax amount. The tax rate must have been automatically created by Stripe.
          sig { returns(String) }
          def tax_rate; end
          sig { params(_tax_rate: String).returns(String) }
          def tax_rate=(_tax_rate); end
          # The amount on which tax is calculated, in cents (or local equivalent).
          sig { returns(Integer) }
          def taxable_amount; end
          sig { params(_taxable_amount: Integer).returns(Integer) }
          def taxable_amount=(_taxable_amount); end
          sig { params(amount: Integer, tax_rate: String, taxable_amount: Integer).void }
          def initialize(amount: nil, tax_rate: nil, taxable_amount: nil); end
        end
        # The line item amount to credit. Only valid when `type` is `invoice_line_item`. If invoice is set up with `automatic_tax[enabled]=true`, this amount is tax exclusive
        sig { returns(T.nilable(Integer)) }
        def amount; end
        sig { params(_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def amount=(_amount); end
        # The description of the credit note line item. Only valid when the `type` is `custom_line_item`.
        sig { returns(T.nilable(String)) }
        def description; end
        sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
        def description=(_description); end
        # The invoice line item to credit. Only valid when the `type` is `invoice_line_item`.
        sig { returns(T.nilable(String)) }
        def invoice_line_item; end
        sig { params(_invoice_line_item: T.nilable(String)).returns(T.nilable(String)) }
        def invoice_line_item=(_invoice_line_item); end
        # The line item quantity to credit.
        sig { returns(T.nilable(Integer)) }
        def quantity; end
        sig { params(_quantity: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def quantity=(_quantity); end
        # A list of up to 10 tax amounts for the credit note line item. Cannot be mixed with `tax_rates`.
        sig {
          returns(T.nilable(T.any(String, T::Array[::Stripe::CreditNote::CreateParams::Line::TaxAmount])))
         }
        def tax_amounts; end
        sig {
          params(_tax_amounts: T.nilable(T.any(String, T::Array[::Stripe::CreditNote::CreateParams::Line::TaxAmount]))).returns(T.nilable(T.any(String, T::Array[::Stripe::CreditNote::CreateParams::Line::TaxAmount])))
         }
        def tax_amounts=(_tax_amounts); end
        # The tax rates which apply to the credit note line item. Only valid when the `type` is `custom_line_item` and cannot be mixed with `tax_amounts`.
        sig { returns(T.nilable(T.any(String, T::Array[String]))) }
        def tax_rates; end
        sig {
          params(_tax_rates: T.nilable(T.any(String, T::Array[String]))).returns(T.nilable(T.any(String, T::Array[String])))
         }
        def tax_rates=(_tax_rates); end
        # Type of the credit note line item, one of `invoice_line_item` or `custom_line_item`
        sig { returns(String) }
        def type; end
        sig { params(_type: String).returns(String) }
        def type=(_type); end
        # The integer unit amount in cents (or local equivalent) of the credit note line item. This `unit_amount` will be multiplied by the quantity to get the full amount to credit for this line item. Only valid when `type` is `custom_line_item`.
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
        def amount_refunded; end
        sig { params(_amount_refunded: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def amount_refunded=(_amount_refunded); end
        # ID of an existing refund to link this credit note to. Required when `type` is `refund`.
        sig { returns(T.nilable(String)) }
        def refund; end
        sig { params(_refund: T.nilable(String)).returns(T.nilable(String)) }
        def refund=(_refund); end
        sig { params(amount_refunded: T.nilable(Integer), refund: T.nilable(String)).void }
        def initialize(amount_refunded: nil, refund: nil); end
      end
      class ShippingCost < Stripe::RequestParams
        # The ID of the shipping rate to use for this order.
        sig { returns(T.nilable(String)) }
        def shipping_rate; end
        sig { params(_shipping_rate: T.nilable(String)).returns(T.nilable(String)) }
        def shipping_rate=(_shipping_rate); end
        sig { params(shipping_rate: T.nilable(String)).void }
        def initialize(shipping_rate: nil); end
      end
      # The integer amount in cents (or local equivalent) representing the total amount of the credit note. One of `amount`, `lines`, or `shipping_cost` must be provided.
      sig { returns(T.nilable(Integer)) }
      def amount; end
      sig { params(_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def amount=(_amount); end
      # The integer amount in cents (or local equivalent) representing the amount to credit the customer's balance, which will be automatically applied to their next invoice.
      sig { returns(T.nilable(Integer)) }
      def credit_amount; end
      sig { params(_credit_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def credit_amount=(_credit_amount); end
      # The date when this credit note is in effect. Same as `created` unless overwritten. When defined, this value replaces the system-generated 'Date of issue' printed on the credit note PDF.
      sig { returns(T.nilable(Integer)) }
      def effective_at; end
      sig { params(_effective_at: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def effective_at=(_effective_at); end
      # Type of email to send to the customer, one of `credit_note` or `none` and the default is `credit_note`.
      sig { returns(T.nilable(String)) }
      def email_type; end
      sig { params(_email_type: T.nilable(String)).returns(T.nilable(String)) }
      def email_type=(_email_type); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # ID of the invoice.
      sig { returns(String) }
      def invoice; end
      sig { params(_invoice: String).returns(String) }
      def invoice=(_invoice); end
      # Line items that make up the credit note. One of `amount`, `lines`, or `shipping_cost` must be provided.
      sig { returns(T.nilable(T::Array[::Stripe::CreditNote::CreateParams::Line])) }
      def lines; end
      sig {
        params(_lines: T.nilable(T::Array[::Stripe::CreditNote::CreateParams::Line])).returns(T.nilable(T::Array[::Stripe::CreditNote::CreateParams::Line]))
       }
      def lines=(_lines); end
      # The credit note's memo appears on the credit note PDF.
      sig { returns(T.nilable(String)) }
      def memo; end
      sig { params(_memo: T.nilable(String)).returns(T.nilable(String)) }
      def memo=(_memo); end
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T::Hash[String, String])) }
      def metadata; end
      sig {
        params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
       }
      def metadata=(_metadata); end
      # The integer amount in cents (or local equivalent) representing the amount that is credited outside of Stripe.
      sig { returns(T.nilable(Integer)) }
      def out_of_band_amount; end
      sig { params(_out_of_band_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def out_of_band_amount=(_out_of_band_amount); end
      # Reason for issuing this credit note, one of `duplicate`, `fraudulent`, `order_change`, or `product_unsatisfactory`
      sig { returns(T.nilable(String)) }
      def reason; end
      sig { params(_reason: T.nilable(String)).returns(T.nilable(String)) }
      def reason=(_reason); end
      # The integer amount in cents (or local equivalent) representing the amount to refund. If set, a refund will be created for the charge associated with the invoice.
      sig { returns(T.nilable(Integer)) }
      def refund_amount; end
      sig { params(_refund_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def refund_amount=(_refund_amount); end
      # Refunds to link to this credit note.
      sig { returns(T.nilable(T::Array[::Stripe::CreditNote::CreateParams::Refund])) }
      def refunds; end
      sig {
        params(_refunds: T.nilable(T::Array[::Stripe::CreditNote::CreateParams::Refund])).returns(T.nilable(T::Array[::Stripe::CreditNote::CreateParams::Refund]))
       }
      def refunds=(_refunds); end
      # When shipping_cost contains the shipping_rate from the invoice, the shipping_cost is included in the credit note. One of `amount`, `lines`, or `shipping_cost` must be provided.
      sig { returns(T.nilable(::Stripe::CreditNote::CreateParams::ShippingCost)) }
      def shipping_cost; end
      sig {
        params(_shipping_cost: T.nilable(::Stripe::CreditNote::CreateParams::ShippingCost)).returns(T.nilable(::Stripe::CreditNote::CreateParams::ShippingCost))
       }
      def shipping_cost=(_shipping_cost); end
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
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # Credit note memo.
      sig { returns(T.nilable(String)) }
      def memo; end
      sig { params(_memo: T.nilable(String)).returns(T.nilable(String)) }
      def memo=(_memo); end
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T::Hash[String, String])) }
      def metadata; end
      sig {
        params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
       }
      def metadata=(_metadata); end
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
          def amount; end
          sig { params(_amount: Integer).returns(Integer) }
          def amount=(_amount); end
          # The id of the tax rate for this tax amount. The tax rate must have been automatically created by Stripe.
          sig { returns(String) }
          def tax_rate; end
          sig { params(_tax_rate: String).returns(String) }
          def tax_rate=(_tax_rate); end
          # The amount on which tax is calculated, in cents (or local equivalent).
          sig { returns(Integer) }
          def taxable_amount; end
          sig { params(_taxable_amount: Integer).returns(Integer) }
          def taxable_amount=(_taxable_amount); end
          sig { params(amount: Integer, tax_rate: String, taxable_amount: Integer).void }
          def initialize(amount: nil, tax_rate: nil, taxable_amount: nil); end
        end
        # The line item amount to credit. Only valid when `type` is `invoice_line_item`. If invoice is set up with `automatic_tax[enabled]=true`, this amount is tax exclusive
        sig { returns(T.nilable(Integer)) }
        def amount; end
        sig { params(_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def amount=(_amount); end
        # The description of the credit note line item. Only valid when the `type` is `custom_line_item`.
        sig { returns(T.nilable(String)) }
        def description; end
        sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
        def description=(_description); end
        # The invoice line item to credit. Only valid when the `type` is `invoice_line_item`.
        sig { returns(T.nilable(String)) }
        def invoice_line_item; end
        sig { params(_invoice_line_item: T.nilable(String)).returns(T.nilable(String)) }
        def invoice_line_item=(_invoice_line_item); end
        # The line item quantity to credit.
        sig { returns(T.nilable(Integer)) }
        def quantity; end
        sig { params(_quantity: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def quantity=(_quantity); end
        # A list of up to 10 tax amounts for the credit note line item. Cannot be mixed with `tax_rates`.
        sig {
          returns(T.nilable(T.any(String, T::Array[::Stripe::CreditNote::PreviewParams::Line::TaxAmount])))
         }
        def tax_amounts; end
        sig {
          params(_tax_amounts: T.nilable(T.any(String, T::Array[::Stripe::CreditNote::PreviewParams::Line::TaxAmount]))).returns(T.nilable(T.any(String, T::Array[::Stripe::CreditNote::PreviewParams::Line::TaxAmount])))
         }
        def tax_amounts=(_tax_amounts); end
        # The tax rates which apply to the credit note line item. Only valid when the `type` is `custom_line_item` and cannot be mixed with `tax_amounts`.
        sig { returns(T.nilable(T.any(String, T::Array[String]))) }
        def tax_rates; end
        sig {
          params(_tax_rates: T.nilable(T.any(String, T::Array[String]))).returns(T.nilable(T.any(String, T::Array[String])))
         }
        def tax_rates=(_tax_rates); end
        # Type of the credit note line item, one of `invoice_line_item` or `custom_line_item`
        sig { returns(String) }
        def type; end
        sig { params(_type: String).returns(String) }
        def type=(_type); end
        # The integer unit amount in cents (or local equivalent) of the credit note line item. This `unit_amount` will be multiplied by the quantity to get the full amount to credit for this line item. Only valid when `type` is `custom_line_item`.
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
        def amount_refunded; end
        sig { params(_amount_refunded: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def amount_refunded=(_amount_refunded); end
        # ID of an existing refund to link this credit note to. Required when `type` is `refund`.
        sig { returns(T.nilable(String)) }
        def refund; end
        sig { params(_refund: T.nilable(String)).returns(T.nilable(String)) }
        def refund=(_refund); end
        sig { params(amount_refunded: T.nilable(Integer), refund: T.nilable(String)).void }
        def initialize(amount_refunded: nil, refund: nil); end
      end
      class ShippingCost < Stripe::RequestParams
        # The ID of the shipping rate to use for this order.
        sig { returns(T.nilable(String)) }
        def shipping_rate; end
        sig { params(_shipping_rate: T.nilable(String)).returns(T.nilable(String)) }
        def shipping_rate=(_shipping_rate); end
        sig { params(shipping_rate: T.nilable(String)).void }
        def initialize(shipping_rate: nil); end
      end
      # The integer amount in cents (or local equivalent) representing the total amount of the credit note. One of `amount`, `lines`, or `shipping_cost` must be provided.
      sig { returns(T.nilable(Integer)) }
      def amount; end
      sig { params(_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def amount=(_amount); end
      # The integer amount in cents (or local equivalent) representing the amount to credit the customer's balance, which will be automatically applied to their next invoice.
      sig { returns(T.nilable(Integer)) }
      def credit_amount; end
      sig { params(_credit_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def credit_amount=(_credit_amount); end
      # The date when this credit note is in effect. Same as `created` unless overwritten. When defined, this value replaces the system-generated 'Date of issue' printed on the credit note PDF.
      sig { returns(T.nilable(Integer)) }
      def effective_at; end
      sig { params(_effective_at: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def effective_at=(_effective_at); end
      # Type of email to send to the customer, one of `credit_note` or `none` and the default is `credit_note`.
      sig { returns(T.nilable(String)) }
      def email_type; end
      sig { params(_email_type: T.nilable(String)).returns(T.nilable(String)) }
      def email_type=(_email_type); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # ID of the invoice.
      sig { returns(String) }
      def invoice; end
      sig { params(_invoice: String).returns(String) }
      def invoice=(_invoice); end
      # Line items that make up the credit note. One of `amount`, `lines`, or `shipping_cost` must be provided.
      sig { returns(T.nilable(T::Array[::Stripe::CreditNote::PreviewParams::Line])) }
      def lines; end
      sig {
        params(_lines: T.nilable(T::Array[::Stripe::CreditNote::PreviewParams::Line])).returns(T.nilable(T::Array[::Stripe::CreditNote::PreviewParams::Line]))
       }
      def lines=(_lines); end
      # The credit note's memo appears on the credit note PDF.
      sig { returns(T.nilable(String)) }
      def memo; end
      sig { params(_memo: T.nilable(String)).returns(T.nilable(String)) }
      def memo=(_memo); end
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T::Hash[String, String])) }
      def metadata; end
      sig {
        params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
       }
      def metadata=(_metadata); end
      # The integer amount in cents (or local equivalent) representing the amount that is credited outside of Stripe.
      sig { returns(T.nilable(Integer)) }
      def out_of_band_amount; end
      sig { params(_out_of_band_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def out_of_band_amount=(_out_of_band_amount); end
      # Reason for issuing this credit note, one of `duplicate`, `fraudulent`, `order_change`, or `product_unsatisfactory`
      sig { returns(T.nilable(String)) }
      def reason; end
      sig { params(_reason: T.nilable(String)).returns(T.nilable(String)) }
      def reason=(_reason); end
      # The integer amount in cents (or local equivalent) representing the amount to refund. If set, a refund will be created for the charge associated with the invoice.
      sig { returns(T.nilable(Integer)) }
      def refund_amount; end
      sig { params(_refund_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def refund_amount=(_refund_amount); end
      # Refunds to link to this credit note.
      sig { returns(T.nilable(T::Array[::Stripe::CreditNote::PreviewParams::Refund])) }
      def refunds; end
      sig {
        params(_refunds: T.nilable(T::Array[::Stripe::CreditNote::PreviewParams::Refund])).returns(T.nilable(T::Array[::Stripe::CreditNote::PreviewParams::Refund]))
       }
      def refunds=(_refunds); end
      # When shipping_cost contains the shipping_rate from the invoice, the shipping_cost is included in the credit note. One of `amount`, `lines`, or `shipping_cost` must be provided.
      sig { returns(T.nilable(::Stripe::CreditNote::PreviewParams::ShippingCost)) }
      def shipping_cost; end
      sig {
        params(_shipping_cost: T.nilable(::Stripe::CreditNote::PreviewParams::ShippingCost)).returns(T.nilable(::Stripe::CreditNote::PreviewParams::ShippingCost))
       }
      def shipping_cost=(_shipping_cost); end
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
          def amount; end
          sig { params(_amount: Integer).returns(Integer) }
          def amount=(_amount); end
          # The id of the tax rate for this tax amount. The tax rate must have been automatically created by Stripe.
          sig { returns(String) }
          def tax_rate; end
          sig { params(_tax_rate: String).returns(String) }
          def tax_rate=(_tax_rate); end
          # The amount on which tax is calculated, in cents (or local equivalent).
          sig { returns(Integer) }
          def taxable_amount; end
          sig { params(_taxable_amount: Integer).returns(Integer) }
          def taxable_amount=(_taxable_amount); end
          sig { params(amount: Integer, tax_rate: String, taxable_amount: Integer).void }
          def initialize(amount: nil, tax_rate: nil, taxable_amount: nil); end
        end
        # The line item amount to credit. Only valid when `type` is `invoice_line_item`. If invoice is set up with `automatic_tax[enabled]=true`, this amount is tax exclusive
        sig { returns(T.nilable(Integer)) }
        def amount; end
        sig { params(_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def amount=(_amount); end
        # The description of the credit note line item. Only valid when the `type` is `custom_line_item`.
        sig { returns(T.nilable(String)) }
        def description; end
        sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
        def description=(_description); end
        # The invoice line item to credit. Only valid when the `type` is `invoice_line_item`.
        sig { returns(T.nilable(String)) }
        def invoice_line_item; end
        sig { params(_invoice_line_item: T.nilable(String)).returns(T.nilable(String)) }
        def invoice_line_item=(_invoice_line_item); end
        # The line item quantity to credit.
        sig { returns(T.nilable(Integer)) }
        def quantity; end
        sig { params(_quantity: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def quantity=(_quantity); end
        # A list of up to 10 tax amounts for the credit note line item. Cannot be mixed with `tax_rates`.
        sig {
          returns(T.nilable(T.any(String, T::Array[::Stripe::CreditNote::ListPreviewLineItemsParams::Line::TaxAmount])))
         }
        def tax_amounts; end
        sig {
          params(_tax_amounts: T.nilable(T.any(String, T::Array[::Stripe::CreditNote::ListPreviewLineItemsParams::Line::TaxAmount]))).returns(T.nilable(T.any(String, T::Array[::Stripe::CreditNote::ListPreviewLineItemsParams::Line::TaxAmount])))
         }
        def tax_amounts=(_tax_amounts); end
        # The tax rates which apply to the credit note line item. Only valid when the `type` is `custom_line_item` and cannot be mixed with `tax_amounts`.
        sig { returns(T.nilable(T.any(String, T::Array[String]))) }
        def tax_rates; end
        sig {
          params(_tax_rates: T.nilable(T.any(String, T::Array[String]))).returns(T.nilable(T.any(String, T::Array[String])))
         }
        def tax_rates=(_tax_rates); end
        # Type of the credit note line item, one of `invoice_line_item` or `custom_line_item`
        sig { returns(String) }
        def type; end
        sig { params(_type: String).returns(String) }
        def type=(_type); end
        # The integer unit amount in cents (or local equivalent) of the credit note line item. This `unit_amount` will be multiplied by the quantity to get the full amount to credit for this line item. Only valid when `type` is `custom_line_item`.
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
        def amount_refunded; end
        sig { params(_amount_refunded: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def amount_refunded=(_amount_refunded); end
        # ID of an existing refund to link this credit note to. Required when `type` is `refund`.
        sig { returns(T.nilable(String)) }
        def refund; end
        sig { params(_refund: T.nilable(String)).returns(T.nilable(String)) }
        def refund=(_refund); end
        sig { params(amount_refunded: T.nilable(Integer), refund: T.nilable(String)).void }
        def initialize(amount_refunded: nil, refund: nil); end
      end
      class ShippingCost < Stripe::RequestParams
        # The ID of the shipping rate to use for this order.
        sig { returns(T.nilable(String)) }
        def shipping_rate; end
        sig { params(_shipping_rate: T.nilable(String)).returns(T.nilable(String)) }
        def shipping_rate=(_shipping_rate); end
        sig { params(shipping_rate: T.nilable(String)).void }
        def initialize(shipping_rate: nil); end
      end
      # The integer amount in cents (or local equivalent) representing the total amount of the credit note. One of `amount`, `lines`, or `shipping_cost` must be provided.
      sig { returns(T.nilable(Integer)) }
      def amount; end
      sig { params(_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def amount=(_amount); end
      # The integer amount in cents (or local equivalent) representing the amount to credit the customer's balance, which will be automatically applied to their next invoice.
      sig { returns(T.nilable(Integer)) }
      def credit_amount; end
      sig { params(_credit_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def credit_amount=(_credit_amount); end
      # The date when this credit note is in effect. Same as `created` unless overwritten. When defined, this value replaces the system-generated 'Date of issue' printed on the credit note PDF.
      sig { returns(T.nilable(Integer)) }
      def effective_at; end
      sig { params(_effective_at: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def effective_at=(_effective_at); end
      # Type of email to send to the customer, one of `credit_note` or `none` and the default is `credit_note`.
      sig { returns(T.nilable(String)) }
      def email_type; end
      sig { params(_email_type: T.nilable(String)).returns(T.nilable(String)) }
      def email_type=(_email_type); end
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
      # ID of the invoice.
      sig { returns(String) }
      def invoice; end
      sig { params(_invoice: String).returns(String) }
      def invoice=(_invoice); end
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(T.nilable(Integer)) }
      def limit; end
      sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def limit=(_limit); end
      # Line items that make up the credit note. One of `amount`, `lines`, or `shipping_cost` must be provided.
      sig { returns(T.nilable(T::Array[::Stripe::CreditNote::ListPreviewLineItemsParams::Line])) }
      def lines; end
      sig {
        params(_lines: T.nilable(T::Array[::Stripe::CreditNote::ListPreviewLineItemsParams::Line])).returns(T.nilable(T::Array[::Stripe::CreditNote::ListPreviewLineItemsParams::Line]))
       }
      def lines=(_lines); end
      # The credit note's memo appears on the credit note PDF.
      sig { returns(T.nilable(String)) }
      def memo; end
      sig { params(_memo: T.nilable(String)).returns(T.nilable(String)) }
      def memo=(_memo); end
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T::Hash[String, String])) }
      def metadata; end
      sig {
        params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
       }
      def metadata=(_metadata); end
      # The integer amount in cents (or local equivalent) representing the amount that is credited outside of Stripe.
      sig { returns(T.nilable(Integer)) }
      def out_of_band_amount; end
      sig { params(_out_of_band_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def out_of_band_amount=(_out_of_band_amount); end
      # Reason for issuing this credit note, one of `duplicate`, `fraudulent`, `order_change`, or `product_unsatisfactory`
      sig { returns(T.nilable(String)) }
      def reason; end
      sig { params(_reason: T.nilable(String)).returns(T.nilable(String)) }
      def reason=(_reason); end
      # The integer amount in cents (or local equivalent) representing the amount to refund. If set, a refund will be created for the charge associated with the invoice.
      sig { returns(T.nilable(Integer)) }
      def refund_amount; end
      sig { params(_refund_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def refund_amount=(_refund_amount); end
      # Refunds to link to this credit note.
      sig { returns(T.nilable(T::Array[::Stripe::CreditNote::ListPreviewLineItemsParams::Refund])) }
      def refunds; end
      sig {
        params(_refunds: T.nilable(T::Array[::Stripe::CreditNote::ListPreviewLineItemsParams::Refund])).returns(T.nilable(T::Array[::Stripe::CreditNote::ListPreviewLineItemsParams::Refund]))
       }
      def refunds=(_refunds); end
      # When shipping_cost contains the shipping_rate from the invoice, the shipping_cost is included in the credit note. One of `amount`, `lines`, or `shipping_cost` must be provided.
      sig { returns(T.nilable(::Stripe::CreditNote::ListPreviewLineItemsParams::ShippingCost)) }
      def shipping_cost; end
      sig {
        params(_shipping_cost: T.nilable(::Stripe::CreditNote::ListPreviewLineItemsParams::ShippingCost)).returns(T.nilable(::Stripe::CreditNote::ListPreviewLineItemsParams::ShippingCost))
       }
      def shipping_cost=(_shipping_cost); end
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(T.nilable(String)) }
      def starting_after; end
      sig { params(_starting_after: T.nilable(String)).returns(T.nilable(String)) }
      def starting_after=(_starting_after); end
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
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
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