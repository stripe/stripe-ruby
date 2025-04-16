# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class CreditNoteService < StripeService
    attr_reader :line_items, :preview_lines

    def initialize(requestor)
      super
      @line_items = Stripe::CreditNoteLineItemService.new(@requestor)
      @preview_lines = Stripe::CreditNotePreviewLinesService.new(@requestor)
    end

    class ListParams < Stripe::RequestParams
      class Created < Stripe::RequestParams
        # Minimum value to filter by (exclusive)
        attr_accessor :gt
        # Minimum value to filter by (inclusive)
        attr_accessor :gte
        # Maximum value to filter by (exclusive)
        attr_accessor :lt
        # Maximum value to filter by (inclusive)
        attr_accessor :lte

        def initialize(gt: nil, gte: nil, lt: nil, lte: nil)
          @gt = gt
          @gte = gte
          @lt = lt
          @lte = lte
        end
      end
      # Only return credit notes that were created during the given date interval.
      attr_accessor :created
      # Only return credit notes for the customer specified by this customer ID.
      attr_accessor :customer
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Only return credit notes for the invoice specified by this invoice ID.
      attr_accessor :invoice
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      attr_accessor :limit
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      attr_accessor :starting_after

      def initialize(
        created: nil,
        customer: nil,
        ending_before: nil,
        expand: nil,
        invoice: nil,
        limit: nil,
        starting_after: nil
      )
        @created = created
        @customer = customer
        @ending_before = ending_before
        @expand = expand
        @invoice = invoice
        @limit = limit
        @starting_after = starting_after
      end
    end

    class CreateParams < Stripe::RequestParams
      class Line < Stripe::RequestParams
        class TaxAmount < Stripe::RequestParams
          # The amount, in cents (or local equivalent), of the tax.
          attr_accessor :amount
          # The id of the tax rate for this tax amount. The tax rate must have been automatically created by Stripe.
          attr_accessor :tax_rate
          # The amount on which tax is calculated, in cents (or local equivalent).
          attr_accessor :taxable_amount

          def initialize(amount: nil, tax_rate: nil, taxable_amount: nil)
            @amount = amount
            @tax_rate = tax_rate
            @taxable_amount = taxable_amount
          end
        end
        # The line item amount to credit. Only valid when `type` is `invoice_line_item`. If invoice is set up with `automatic_tax[enabled]=true`, this amount is tax exclusive
        attr_accessor :amount
        # The description of the credit note line item. Only valid when the `type` is `custom_line_item`.
        attr_accessor :description
        # The invoice line item to credit. Only valid when the `type` is `invoice_line_item`.
        attr_accessor :invoice_line_item
        # The line item quantity to credit.
        attr_accessor :quantity
        # A list of up to 10 tax amounts for the credit note line item. Cannot be mixed with `tax_rates`.
        attr_accessor :tax_amounts
        # The tax rates which apply to the credit note line item. Only valid when the `type` is `custom_line_item` and cannot be mixed with `tax_amounts`.
        attr_accessor :tax_rates
        # Type of the credit note line item, one of `invoice_line_item` or `custom_line_item`
        attr_accessor :type
        # The integer unit amount in cents (or local equivalent) of the credit note line item. This `unit_amount` will be multiplied by the quantity to get the full amount to credit for this line item. Only valid when `type` is `custom_line_item`.
        attr_accessor :unit_amount
        # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
        attr_accessor :unit_amount_decimal

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
        )
          @amount = amount
          @description = description
          @invoice_line_item = invoice_line_item
          @quantity = quantity
          @tax_amounts = tax_amounts
          @tax_rates = tax_rates
          @type = type
          @unit_amount = unit_amount
          @unit_amount_decimal = unit_amount_decimal
        end
      end

      class Refund < Stripe::RequestParams
        # Amount of the refund that applies to this credit note, in cents (or local equivalent). Defaults to the entire refund amount.
        attr_accessor :amount_refunded
        # ID of an existing refund to link this credit note to.
        attr_accessor :refund

        def initialize(amount_refunded: nil, refund: nil)
          @amount_refunded = amount_refunded
          @refund = refund
        end
      end

      class ShippingCost < Stripe::RequestParams
        # The ID of the shipping rate to use for this order.
        attr_accessor :shipping_rate

        def initialize(shipping_rate: nil)
          @shipping_rate = shipping_rate
        end
      end
      # The integer amount in cents (or local equivalent) representing the total amount of the credit note.
      attr_accessor :amount
      # The integer amount in cents (or local equivalent) representing the amount to credit the customer's balance, which will be automatically applied to their next invoice.
      attr_accessor :credit_amount
      # The date when this credit note is in effect. Same as `created` unless overwritten. When defined, this value replaces the system-generated 'Date of issue' printed on the credit note PDF.
      attr_accessor :effective_at
      # Type of email to send to the customer, one of `credit_note` or `none` and the default is `credit_note`.
      attr_accessor :email_type
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # ID of the invoice.
      attr_accessor :invoice
      # Line items that make up the credit note.
      attr_accessor :lines
      # The credit note's memo appears on the credit note PDF.
      attr_accessor :memo
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata
      # The integer amount in cents (or local equivalent) representing the amount that is credited outside of Stripe.
      attr_accessor :out_of_band_amount
      # Reason for issuing this credit note, one of `duplicate`, `fraudulent`, `order_change`, or `product_unsatisfactory`
      attr_accessor :reason
      # The integer amount in cents (or local equivalent) representing the amount to refund. If set, a refund will be created for the charge associated with the invoice.
      attr_accessor :refund_amount
      # Refunds to link to this credit note.
      attr_accessor :refunds
      # When shipping_cost contains the shipping_rate from the invoice, the shipping_cost is included in the credit note.
      attr_accessor :shipping_cost

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
      )
        @amount = amount
        @credit_amount = credit_amount
        @effective_at = effective_at
        @email_type = email_type
        @expand = expand
        @invoice = invoice
        @lines = lines
        @memo = memo
        @metadata = metadata
        @out_of_band_amount = out_of_band_amount
        @reason = reason
        @refund_amount = refund_amount
        @refunds = refunds
        @shipping_cost = shipping_cost
      end
    end

    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand

      def initialize(expand: nil)
        @expand = expand
      end
    end

    class UpdateParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Credit note memo.
      attr_accessor :memo
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata

      def initialize(expand: nil, memo: nil, metadata: nil)
        @expand = expand
        @memo = memo
        @metadata = metadata
      end
    end

    class PreviewParams < Stripe::RequestParams
      class Line < Stripe::RequestParams
        class TaxAmount < Stripe::RequestParams
          # The amount, in cents (or local equivalent), of the tax.
          attr_accessor :amount
          # The id of the tax rate for this tax amount. The tax rate must have been automatically created by Stripe.
          attr_accessor :tax_rate
          # The amount on which tax is calculated, in cents (or local equivalent).
          attr_accessor :taxable_amount

          def initialize(amount: nil, tax_rate: nil, taxable_amount: nil)
            @amount = amount
            @tax_rate = tax_rate
            @taxable_amount = taxable_amount
          end
        end
        # The line item amount to credit. Only valid when `type` is `invoice_line_item`. If invoice is set up with `automatic_tax[enabled]=true`, this amount is tax exclusive
        attr_accessor :amount
        # The description of the credit note line item. Only valid when the `type` is `custom_line_item`.
        attr_accessor :description
        # The invoice line item to credit. Only valid when the `type` is `invoice_line_item`.
        attr_accessor :invoice_line_item
        # The line item quantity to credit.
        attr_accessor :quantity
        # A list of up to 10 tax amounts for the credit note line item. Cannot be mixed with `tax_rates`.
        attr_accessor :tax_amounts
        # The tax rates which apply to the credit note line item. Only valid when the `type` is `custom_line_item` and cannot be mixed with `tax_amounts`.
        attr_accessor :tax_rates
        # Type of the credit note line item, one of `invoice_line_item` or `custom_line_item`
        attr_accessor :type
        # The integer unit amount in cents (or local equivalent) of the credit note line item. This `unit_amount` will be multiplied by the quantity to get the full amount to credit for this line item. Only valid when `type` is `custom_line_item`.
        attr_accessor :unit_amount
        # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
        attr_accessor :unit_amount_decimal

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
        )
          @amount = amount
          @description = description
          @invoice_line_item = invoice_line_item
          @quantity = quantity
          @tax_amounts = tax_amounts
          @tax_rates = tax_rates
          @type = type
          @unit_amount = unit_amount
          @unit_amount_decimal = unit_amount_decimal
        end
      end

      class Refund < Stripe::RequestParams
        # Amount of the refund that applies to this credit note, in cents (or local equivalent). Defaults to the entire refund amount.
        attr_accessor :amount_refunded
        # ID of an existing refund to link this credit note to.
        attr_accessor :refund

        def initialize(amount_refunded: nil, refund: nil)
          @amount_refunded = amount_refunded
          @refund = refund
        end
      end

      class ShippingCost < Stripe::RequestParams
        # The ID of the shipping rate to use for this order.
        attr_accessor :shipping_rate

        def initialize(shipping_rate: nil)
          @shipping_rate = shipping_rate
        end
      end
      # The integer amount in cents (or local equivalent) representing the total amount of the credit note.
      attr_accessor :amount
      # The integer amount in cents (or local equivalent) representing the amount to credit the customer's balance, which will be automatically applied to their next invoice.
      attr_accessor :credit_amount
      # The date when this credit note is in effect. Same as `created` unless overwritten. When defined, this value replaces the system-generated 'Date of issue' printed on the credit note PDF.
      attr_accessor :effective_at
      # Type of email to send to the customer, one of `credit_note` or `none` and the default is `credit_note`.
      attr_accessor :email_type
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # ID of the invoice.
      attr_accessor :invoice
      # Line items that make up the credit note.
      attr_accessor :lines
      # The credit note's memo appears on the credit note PDF.
      attr_accessor :memo
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata
      # The integer amount in cents (or local equivalent) representing the amount that is credited outside of Stripe.
      attr_accessor :out_of_band_amount
      # Reason for issuing this credit note, one of `duplicate`, `fraudulent`, `order_change`, or `product_unsatisfactory`
      attr_accessor :reason
      # The integer amount in cents (or local equivalent) representing the amount to refund. If set, a refund will be created for the charge associated with the invoice.
      attr_accessor :refund_amount
      # Refunds to link to this credit note.
      attr_accessor :refunds
      # When shipping_cost contains the shipping_rate from the invoice, the shipping_cost is included in the credit note.
      attr_accessor :shipping_cost

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
      )
        @amount = amount
        @credit_amount = credit_amount
        @effective_at = effective_at
        @email_type = email_type
        @expand = expand
        @invoice = invoice
        @lines = lines
        @memo = memo
        @metadata = metadata
        @out_of_band_amount = out_of_band_amount
        @reason = reason
        @refund_amount = refund_amount
        @refunds = refunds
        @shipping_cost = shipping_cost
      end
    end

    class VoidCreditNoteParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand

      def initialize(expand: nil)
        @expand = expand
      end
    end

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
    def create(params = {}, opts = {})
      request(
        method: :post,
        path: "/v1/credit_notes",
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Returns a list of credit notes.
    def list(params = {}, opts = {})
      request(
        method: :get,
        path: "/v1/credit_notes",
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Get a preview of a credit note without creating it.
    def preview(params = {}, opts = {})
      request(
        method: :get,
        path: "/v1/credit_notes/preview",
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Retrieves the credit note object with the given identifier.
    def retrieve(id, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/credit_notes/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Updates an existing credit note.
    def update(id, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/credit_notes/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Marks a credit note as void. Learn more about [voiding credit notes](https://stripe.com/docs/billing/invoices/credit-notes#voiding).
    def void_credit_note(id, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/credit_notes/%<id>s/void", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
