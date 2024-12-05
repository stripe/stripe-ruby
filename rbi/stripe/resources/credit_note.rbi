# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # Issue a credit note to adjust an invoice's amount after the invoice is finalized.
  #
  # Related guide: [Credit notes](https://stripe.com/docs/billing/invoices/credit-notes)
  class CreditNote < APIResource
    class DiscountAmount < Stripe::StripeObject
      sig { returns(Integer) }
      attr_reader :amount
      sig { returns(T.any(String, Stripe::Discount)) }
      attr_reader :discount
    end
    class PretaxCreditAmount < Stripe::StripeObject
      sig { returns(Integer) }
      attr_reader :amount
      sig { returns(T.any(String, Stripe::Billing::CreditBalanceTransaction)) }
      attr_reader :credit_balance_transaction
      sig { returns(T.any(String, Stripe::Discount)) }
      attr_reader :discount
      sig { returns(String) }
      attr_reader :type
    end
    class Refund < Stripe::StripeObject
      sig { returns(Integer) }
      attr_reader :amount_refunded
      sig { returns(T.any(String, Stripe::Refund)) }
      attr_reader :refund
    end
    class ShippingCost < Stripe::StripeObject
      class Tax < Stripe::StripeObject
        sig { returns(Integer) }
        attr_reader :amount
        sig { returns(Stripe::TaxRate) }
        attr_reader :rate
        sig { returns(T.nilable(String)) }
        attr_reader :taxability_reason
        sig { returns(T.nilable(Integer)) }
        attr_reader :taxable_amount
      end
      sig { returns(Integer) }
      attr_reader :amount_subtotal
      sig { returns(Integer) }
      attr_reader :amount_tax
      sig { returns(Integer) }
      attr_reader :amount_total
      sig { returns(T.nilable(T.any(String, Stripe::ShippingRate))) }
      attr_reader :shipping_rate
      sig { returns(T::Array[Tax]) }
      attr_reader :taxes
    end
    class TaxAmount < Stripe::StripeObject
      sig { returns(Integer) }
      attr_reader :amount
      sig { returns(T::Boolean) }
      attr_reader :inclusive
      sig { returns(T.any(String, Stripe::TaxRate)) }
      attr_reader :tax_rate
      sig { returns(T.nilable(String)) }
      attr_reader :taxability_reason
      sig { returns(T.nilable(Integer)) }
      attr_reader :taxable_amount
    end
    sig { returns(Integer) }
    # The integer amount in cents (or local equivalent) representing the total amount of the credit note, including tax.
    attr_reader :amount
    sig { returns(Integer) }
    # This is the sum of all the shipping amounts.
    attr_reader :amount_shipping
    sig { returns(Integer) }
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    sig { returns(String) }
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    attr_reader :currency
    sig { returns(T.any(String, Stripe::Customer)) }
    # ID of the customer.
    attr_reader :customer
    sig { returns(T.nilable(T.any(String, Stripe::CustomerBalanceTransaction))) }
    # Customer balance transaction related to this credit note.
    attr_reader :customer_balance_transaction
    sig { returns(Integer) }
    # The integer amount in cents (or local equivalent) representing the total amount of discount that was credited.
    attr_reader :discount_amount
    sig { returns(T::Array[DiscountAmount]) }
    # The aggregate amounts calculated per discount for all line items.
    attr_reader :discount_amounts
    sig { returns(T.nilable(Integer)) }
    # The date when this credit note is in effect. Same as `created` unless overwritten. When defined, this value replaces the system-generated 'Date of issue' printed on the credit note PDF.
    attr_reader :effective_at
    sig { returns(String) }
    # Unique identifier for the object.
    attr_reader :id
    sig { returns(T.any(String, Stripe::Invoice)) }
    # ID of the invoice.
    attr_reader :invoice
    sig { returns(Stripe::ListObject) }
    # Line items that make up the credit note
    attr_reader :lines
    sig { returns(T::Boolean) }
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    sig { returns(T.nilable(String)) }
    # Customer-facing text that appears on the credit note PDF.
    attr_reader :memo
    sig { returns(T.nilable(T::Hash[String, String])) }
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    sig { returns(String) }
    # A unique number that identifies this particular credit note and appears on the PDF of the credit note and its associated invoice.
    attr_reader :number
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    sig { returns(T.nilable(Integer)) }
    # Amount that was credited outside of Stripe.
    attr_reader :out_of_band_amount
    sig { returns(String) }
    # The link to download the PDF of the credit note.
    attr_reader :pdf
    sig { returns(Integer) }
    # Attribute for field post_payment_amount
    attr_reader :post_payment_amount
    sig { returns(Integer) }
    # Attribute for field pre_payment_amount
    attr_reader :pre_payment_amount
    sig { returns(T::Array[PretaxCreditAmount]) }
    # The pretax credit amounts (ex: discount, credit grants, etc) for all line items.
    attr_reader :pretax_credit_amounts
    sig { returns(T.nilable(String)) }
    # Reason for issuing this credit note, one of `duplicate`, `fraudulent`, `order_change`, or `product_unsatisfactory`
    attr_reader :reason
    sig { returns(T.nilable(T.any(String, Stripe::Refund))) }
    # Refund related to this credit note.
    attr_reader :refund
    sig { returns(T::Array[Refund]) }
    # Refunds related to this credit note.
    attr_reader :refunds
    sig { returns(T.nilable(ShippingCost)) }
    # The details of the cost of shipping, including the ShippingRate applied to the invoice.
    attr_reader :shipping_cost
    sig { returns(String) }
    # Status of this credit note, one of `issued` or `void`. Learn more about [voiding credit notes](https://stripe.com/docs/billing/invoices/credit-notes#voiding).
    attr_reader :status
    sig { returns(Integer) }
    # The integer amount in cents (or local equivalent) representing the amount of the credit note, excluding exclusive tax and invoice level discounts.
    attr_reader :subtotal
    sig { returns(T.nilable(Integer)) }
    # The integer amount in cents (or local equivalent) representing the amount of the credit note, excluding all tax and invoice level discounts.
    attr_reader :subtotal_excluding_tax
    sig { returns(T::Array[TaxAmount]) }
    # The aggregate amounts calculated per tax rate for all line items.
    attr_reader :tax_amounts
    sig { returns(Integer) }
    # The integer amount in cents (or local equivalent) representing the total amount of the credit note, including tax and all discount.
    attr_reader :total
    sig { returns(T.nilable(Integer)) }
    # The integer amount in cents (or local equivalent) representing the total amount of the credit note, excluding tax, but including discounts.
    attr_reader :total_excluding_tax
    sig { returns(String) }
    # Type of this credit note, one of `pre_payment` or `post_payment`. A `pre_payment` credit note means it was issued when the invoice was open. A `post_payment` credit note means it was issued when the invoice was paid.
    attr_reader :type
    sig { returns(T.nilable(Integer)) }
    # The time that the credit note was voided.
    attr_reader :voided_at
  end
end