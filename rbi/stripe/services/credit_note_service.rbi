# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class CreditNoteService < StripeService
    attr_reader :line_items
    attr_reader :preview_lines
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
      sig { returns(T.nilable(T.any(::Stripe::CreditNoteService::ListParams::Created, Integer))) }
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
        params(created: T.nilable(T.any(::Stripe::CreditNoteService::ListParams::Created, Integer)), customer: T.nilable(String), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), invoice: T.nilable(String), limit: T.nilable(Integer), starting_after: T.nilable(String)).void
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
          returns(T.nilable(T.any(String, T::Array[::Stripe::CreditNoteService::CreateParams::Line::TaxAmount])))
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
          params(amount: T.nilable(Integer), description: T.nilable(String), invoice_line_item: T.nilable(String), quantity: T.nilable(Integer), tax_amounts: T.nilable(T.any(String, T::Array[::Stripe::CreditNoteService::CreateParams::Line::TaxAmount])), tax_rates: T.nilable(T.any(String, T::Array[String])), type: String, unit_amount: T.nilable(Integer), unit_amount_decimal: T.nilable(String)).void
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
      sig { returns(T.nilable(T::Array[::Stripe::CreditNoteService::CreateParams::Line])) }
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
      sig { returns(T.nilable(T::Array[::Stripe::CreditNoteService::CreateParams::Refund])) }
      attr_accessor :refunds
      # When shipping_cost contains the shipping_rate from the invoice, the shipping_cost is included in the credit note. One of `amount`, `lines`, or `shipping_cost` must be provided.
      sig { returns(T.nilable(::Stripe::CreditNoteService::CreateParams::ShippingCost)) }
      attr_accessor :shipping_cost
      sig {
        params(amount: T.nilable(Integer), credit_amount: T.nilable(Integer), effective_at: T.nilable(Integer), email_type: T.nilable(String), expand: T.nilable(T::Array[String]), invoice: String, lines: T.nilable(T::Array[::Stripe::CreditNoteService::CreateParams::Line]), memo: T.nilable(String), metadata: T.nilable(T::Hash[String, String]), out_of_band_amount: T.nilable(Integer), reason: T.nilable(String), refund_amount: T.nilable(Integer), refunds: T.nilable(T::Array[::Stripe::CreditNoteService::CreateParams::Refund]), shipping_cost: T.nilable(::Stripe::CreditNoteService::CreateParams::ShippingCost)).void
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
    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      sig { params(expand: T.nilable(T::Array[String])).void }
      def initialize(expand: nil); end
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
          returns(T.nilable(T.any(String, T::Array[::Stripe::CreditNoteService::PreviewParams::Line::TaxAmount])))
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
          params(amount: T.nilable(Integer), description: T.nilable(String), invoice_line_item: T.nilable(String), quantity: T.nilable(Integer), tax_amounts: T.nilable(T.any(String, T::Array[::Stripe::CreditNoteService::PreviewParams::Line::TaxAmount])), tax_rates: T.nilable(T.any(String, T::Array[String])), type: String, unit_amount: T.nilable(Integer), unit_amount_decimal: T.nilable(String)).void
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
      sig { returns(T.nilable(T::Array[::Stripe::CreditNoteService::PreviewParams::Line])) }
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
      sig { returns(T.nilable(T::Array[::Stripe::CreditNoteService::PreviewParams::Refund])) }
      attr_accessor :refunds
      # When shipping_cost contains the shipping_rate from the invoice, the shipping_cost is included in the credit note. One of `amount`, `lines`, or `shipping_cost` must be provided.
      sig { returns(T.nilable(::Stripe::CreditNoteService::PreviewParams::ShippingCost)) }
      attr_accessor :shipping_cost
      sig {
        params(amount: T.nilable(Integer), credit_amount: T.nilable(Integer), effective_at: T.nilable(Integer), email_type: T.nilable(String), expand: T.nilable(T::Array[String]), invoice: String, lines: T.nilable(T::Array[::Stripe::CreditNoteService::PreviewParams::Line]), memo: T.nilable(String), metadata: T.nilable(T::Hash[String, String]), out_of_band_amount: T.nilable(Integer), reason: T.nilable(String), refund_amount: T.nilable(Integer), refunds: T.nilable(T::Array[::Stripe::CreditNoteService::PreviewParams::Refund]), shipping_cost: T.nilable(::Stripe::CreditNoteService::PreviewParams::ShippingCost)).void
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
      params(params: T.any(::Stripe::CreditNoteService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::CreditNote)
     }
    def create(params = {}, opts = {}); end

    # Returns a list of credit notes.
    sig {
      params(params: T.any(::Stripe::CreditNoteService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def list(params = {}, opts = {}); end

    # Get a preview of a credit note without creating it.
    sig {
      params(params: T.any(::Stripe::CreditNoteService::PreviewParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::CreditNote)
     }
    def preview(params = {}, opts = {}); end

    # Retrieves the credit note object with the given identifier.
    sig {
      params(id: String, params: T.any(::Stripe::CreditNoteService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::CreditNote)
     }
    def retrieve(id, params = {}, opts = {}); end

    # Updates an existing credit note.
    sig {
      params(id: String, params: T.any(::Stripe::CreditNoteService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::CreditNote)
     }
    def update(id, params = {}, opts = {}); end

    # Marks a credit note as void. Learn more about [voiding credit notes](https://docs.stripe.com/docs/billing/invoices/credit-notes#voiding).
    sig {
      params(id: String, params: T.any(::Stripe::CreditNoteService::VoidCreditNoteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::CreditNote)
     }
    def void_credit_note(id, params = {}, opts = {}); end
  end
end