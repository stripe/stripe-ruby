# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Issue a credit note to adjust an invoice's amount after the invoice is finalized.
  #
  # Related guide: [Credit notes](https://stripe.com/docs/billing/invoices/credit-notes)
  class CreditNote < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "credit_note"
    def self.object_name
      "credit_note"
    end

    class DiscountAmount < Stripe::StripeObject
      attr_reader :amount, :discount
    end

    class PretaxCreditAmount < Stripe::StripeObject
      attr_reader :amount, :credit_balance_transaction, :discount, :type
    end

    class Refund < Stripe::StripeObject
      attr_reader :amount_refunded, :refund
    end

    class ShippingCost < Stripe::StripeObject
      class Tax < Stripe::StripeObject
        attr_reader :amount, :rate, :taxability_reason, :taxable_amount
      end
      attr_reader :amount_subtotal, :amount_tax, :amount_total, :shipping_rate, :taxes
    end

    class TaxAmount < Stripe::StripeObject
      attr_reader :amount, :inclusive, :tax_rate, :taxability_reason, :taxable_amount
    end
    # The integer amount in cents (or local equivalent) representing the total amount of the credit note, including tax.
    attr_reader :amount
    # This is the sum of all the shipping amounts.
    attr_reader :amount_shipping
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    attr_reader :currency
    # ID of the customer.
    attr_reader :customer
    # Customer balance transaction related to this credit note.
    attr_reader :customer_balance_transaction
    # The integer amount in cents (or local equivalent) representing the total amount of discount that was credited.
    attr_reader :discount_amount
    # The aggregate amounts calculated per discount for all line items.
    attr_reader :discount_amounts
    # The date when this credit note is in effect. Same as `created` unless overwritten. When defined, this value replaces the system-generated 'Date of issue' printed on the credit note PDF.
    attr_reader :effective_at
    # Unique identifier for the object.
    attr_reader :id
    # ID of the invoice.
    attr_reader :invoice
    # Line items that make up the credit note
    attr_reader :lines
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    # Customer-facing text that appears on the credit note PDF.
    attr_reader :memo
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    # A unique number that identifies this particular credit note and appears on the PDF of the credit note and its associated invoice.
    attr_reader :number
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # Amount that was credited outside of Stripe.
    attr_reader :out_of_band_amount
    # The link to download the PDF of the credit note.
    attr_reader :pdf
    # Attribute for field post_payment_amount
    attr_reader :post_payment_amount
    # Attribute for field pre_payment_amount
    attr_reader :pre_payment_amount
    # The pretax credit amounts (ex: discount, credit grants, etc) for all line items.
    attr_reader :pretax_credit_amounts
    # Reason for issuing this credit note, one of `duplicate`, `fraudulent`, `order_change`, or `product_unsatisfactory`
    attr_reader :reason
    # Refund related to this credit note.
    attr_reader :refund
    # Refunds related to this credit note.
    attr_reader :refunds
    # The details of the cost of shipping, including the ShippingRate applied to the invoice.
    attr_reader :shipping_cost
    # Status of this credit note, one of `issued` or `void`. Learn more about [voiding credit notes](https://stripe.com/docs/billing/invoices/credit-notes#voiding).
    attr_reader :status
    # The integer amount in cents (or local equivalent) representing the amount of the credit note, excluding exclusive tax and invoice level discounts.
    attr_reader :subtotal
    # The integer amount in cents (or local equivalent) representing the amount of the credit note, excluding all tax and invoice level discounts.
    attr_reader :subtotal_excluding_tax
    # The aggregate amounts calculated per tax rate for all line items.
    attr_reader :tax_amounts
    # The integer amount in cents (or local equivalent) representing the total amount of the credit note, including tax and all discount.
    attr_reader :total
    # The integer amount in cents (or local equivalent) representing the total amount of the credit note, excluding tax, but including discounts.
    attr_reader :total_excluding_tax
    # Type of this credit note, one of `pre_payment` or `post_payment`. A `pre_payment` credit note means it was issued when the invoice was open. A `post_payment` credit note means it was issued when the invoice was paid.
    attr_reader :type
    # The time that the credit note was voided.
    attr_reader :voided_at

    # Issue a credit note to adjust the amount of a finalized invoice. For a status=open invoice, a credit note reduces
    # its amount_due. For a status=paid invoice, a credit note does not affect its amount_due. Instead, it can result
    # in any combination of the following:
    #
    #
    # Refund: create a new refund (using refund_amount) or link an existing refund (using refund).
    # Customer balance credit: credit the customer's balance (using credit_amount) which will be automatically applied to their next invoice when it's finalized.
    # Outside of Stripe credit: record the amount that is or will be credited outside of Stripe (using out_of_band_amount).
    #
    #
    # For post-payment credit notes the sum of the refund, credit and outside of Stripe amounts must equal the credit note total.
    #
    # You may issue multiple credit notes for an invoice. Each credit note will increment the invoice's pre_payment_credit_notes_amount
    # or post_payment_credit_notes_amount depending on its status at the time of credit note creation.
    def self.create(params = {}, opts = {})
      request_stripe_object(method: :post, path: "/v1/credit_notes", params: params, opts: opts)
    end

    # Returns a list of credit notes.
    def self.list(filters = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/credit_notes", params: filters, opts: opts)
    end

    # When retrieving a credit note preview, you'll get a lines property containing the first handful of those items. This URL you can retrieve the full (paginated) list of line items.
    def self.list_preview_line_items(params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: "/v1/credit_notes/preview/lines",
        params: params,
        opts: opts
      )
    end

    # Get a preview of a credit note without creating it.
    def self.preview(params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: "/v1/credit_notes/preview",
        params: params,
        opts: opts
      )
    end

    # Updates an existing credit note.
    def self.update(id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/credit_notes/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end

    # Marks a credit note as void. Learn more about [voiding credit notes](https://stripe.com/docs/billing/invoices/credit-notes#voiding).
    def void_credit_note(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/credit_notes/%<id>s/void", { id: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Marks a credit note as void. Learn more about [voiding credit notes](https://stripe.com/docs/billing/invoices/credit-notes#voiding).
    def self.void_credit_note(id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/credit_notes/%<id>s/void", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end
  end
end
