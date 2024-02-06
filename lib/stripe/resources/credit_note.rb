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

    # Marks a credit note as void. Learn more about [voiding credit notes](https://stripe.com/docs/billing/invoices/credit-notes#voiding).
    def void_credit_note(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/credit_notes/%<id>s/void", { id: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
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

    # Marks a credit note as void. Learn more about [voiding credit notes](https://stripe.com/docs/billing/invoices/credit-notes#voiding).
    def self.void_credit_note(id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/credit_notes/%<id>s/void", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
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
    def self.create(params = {}, opts = {})
      request_stripe_object(method: :post, path: "/v1/credit_notes", params: params, opts: opts)
    end

    # Returns a list of credit notes.
    def self.list(filters = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/credit_notes", params: filters, opts: opts)
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
  end
end
