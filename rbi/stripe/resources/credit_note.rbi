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
        # Tax rates can be applied to [invoices](https://stripe.com/docs/billing/invoices/tax-rates), [subscriptions](https://stripe.com/docs/billing/subscriptions/taxes) and [Checkout Sessions](https://stripe.com/docs/payments/checkout/set-up-a-subscription#tax-rates) to collect tax.
        #
        # Related guide: [Tax rates](https://stripe.com/docs/billing/taxes/tax-rates)
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
    class TaxAmount < Stripe::StripeObject
      # The amount, in cents (or local equivalent), of the tax.
      sig { returns(Integer) }
      attr_reader :amount
      # Whether this tax amount is inclusive or exclusive.
      sig { returns(T::Boolean) }
      attr_reader :inclusive
      # The tax rate that was applied to get this tax amount.
      sig { returns(T.any(String, Stripe::TaxRate)) }
      attr_reader :tax_rate
      # The reasoning behind this tax, for example, if the product is tax exempt. The possible values for this field may be extended as new tax rules are supported.
      sig { returns(T.nilable(String)) }
      attr_reader :taxability_reason
      # The amount on which tax is calculated, in cents (or local equivalent).
      sig { returns(T.nilable(Integer)) }
      attr_reader :taxable_amount
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

    # Attribute for field post_payment_amount
    sig { returns(Integer) }
    attr_reader :post_payment_amount

    # Attribute for field pre_payment_amount
    sig { returns(Integer) }
    attr_reader :pre_payment_amount

    # The pretax credit amounts (ex: discount, credit grants, etc) for all line items.
    sig { returns(T::Array[PretaxCreditAmount]) }
    attr_reader :pretax_credit_amounts

    # Reason for issuing this credit note, one of `duplicate`, `fraudulent`, `order_change`, or `product_unsatisfactory`
    sig { returns(T.nilable(String)) }
    attr_reader :reason

    # Refund related to this credit note.
    sig { returns(T.nilable(T.any(String, Stripe::Refund))) }
    attr_reader :refund

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

    # The aggregate amounts calculated per tax rate for all line items.
    sig { returns(T::Array[TaxAmount]) }
    attr_reader :tax_amounts

    # The integer amount in cents (or local equivalent) representing the total amount of the credit note, including tax and all discount.
    sig { returns(Integer) }
    attr_reader :total

    # The integer amount in cents (or local equivalent) representing the total amount of the credit note, excluding tax, but including discounts.
    sig { returns(T.nilable(Integer)) }
    attr_reader :total_excluding_tax

    # Type of this credit note, one of `pre_payment` or `post_payment`. A `pre_payment` credit note means it was issued when the invoice was open. A `post_payment` credit note means it was issued when the invoice was paid.
    sig { returns(String) }
    attr_reader :type

    # The time that the credit note was voided.
    sig { returns(T.nilable(Integer)) }
    attr_reader :voided_at
  end
end