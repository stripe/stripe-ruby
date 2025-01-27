# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Invoices are statements of amounts owed by a customer, and are either
  # generated one-off, or generated periodically from a subscription.
  #
  # They contain [invoice items](https://stripe.com/docs/api#invoiceitems), and proration adjustments
  # that may be caused by subscription upgrades/downgrades (if necessary).
  #
  # If your invoice is configured to be billed through automatic charges,
  # Stripe automatically finalizes your invoice and attempts payment. Note
  # that finalizing the invoice,
  # [when automatic](https://stripe.com/docs/invoicing/integration/automatic-advancement-collection), does
  # not happen immediately as the invoice is created. Stripe waits
  # until one hour after the last webhook was successfully sent (or the last
  # webhook timed out after failing). If you (and the platforms you may have
  # connected to) have no webhooks configured, Stripe waits one hour after
  # creation to finalize the invoice.
  #
  # If your invoice is configured to be billed by sending an email, then based on your
  # [email settings](https://dashboard.stripe.com/account/billing/automatic),
  # Stripe will email the invoice to your customer and await payment. These
  # emails can contain a link to a hosted page to pay the invoice.
  #
  # Stripe applies any customer credit on the account before determining the
  # amount due for the invoice (i.e., the amount that will be actually
  # charged). If the amount due for the invoice is less than Stripe's [minimum allowed charge
  # per currency](https://stripe.com/docs/currencies#minimum-and-maximum-charge-amounts), the
  # invoice is automatically marked paid, and we add the amount due to the
  # customer's credit balance which is applied to the next invoice.
  #
  # More details on the customer's credit balance are
  # [here](https://stripe.com/docs/billing/customer/balance).
  #
  # Related guide: [Send invoices to customers](https://stripe.com/docs/billing/invoices/sending)
  class Invoice < APIResource
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Delete
    extend Stripe::APIOperations::List
    extend Stripe::APIOperations::NestedResource
    extend Stripe::APIOperations::Search
    include Stripe::APIOperations::Save

    OBJECT_NAME = "invoice"
    def self.object_name
      "invoice"
    end

    nested_resource_class_methods :line, operations: %i[list]

    # Adds multiple line items to an invoice. This is only possible when an invoice is still a draft.
    def add_lines(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/invoices/%<invoice>s/add_lines", { invoice: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Adds multiple line items to an invoice. This is only possible when an invoice is still a draft.
    def self.add_lines(invoice, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/invoices/%<invoice>s/add_lines", { invoice: CGI.escape(invoice) }),
        params: params,
        opts: opts
      )
    end

    # This endpoint creates a draft invoice for a given customer. The invoice remains a draft until you [finalize the invoice, which allows you to [pay](#pay_invoice) or <a href="#send_invoice">send](https://stripe.com/docs/api#finalize_invoice) the invoice to your customers.
    def self.create(params = {}, opts = {})
      request_stripe_object(method: :post, path: "/v1/invoices", params: params, opts: opts)
    end

    # At any time, you can preview the upcoming invoice for a customer. This will show you all the charges that are pending, including subscription renewal charges, invoice item charges, etc. It will also show you any discounts that are applicable to the invoice.
    #
    # Note that when you are viewing an upcoming invoice, you are simply viewing a preview – the invoice has not yet been created. As such, the upcoming invoice will not show up in invoice listing calls, and you cannot use the API to pay or edit the invoice. If you want to change the amount that your customer will be billed, you can add, remove, or update pending invoice items, or update the customer's discount.
    #
    # You can preview the effects of updating a subscription, including a preview of what proration will take place. To ensure that the actual proration is calculated exactly the same as the previewed proration, you should pass the subscription_details.proration_date parameter when doing the actual subscription update. The recommended way to get only the prorations being previewed is to consider only proration line items where period[start] is equal to the subscription_details.proration_date value passed in the request.
    #
    # Note: Currency conversion calculations use the latest exchange rates. Exchange rates may vary between the time of the preview and the time of the actual invoice creation. [Learn more](https://docs.stripe.com/currencies/conversions)
    def self.create_preview(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: "/v1/invoices/create_preview",
        params: params,
        opts: opts
      )
    end

    # Permanently deletes a one-off invoice draft. This cannot be undone. Attempts to delete invoices that are no longer in a draft state will fail; once an invoice has been finalized or if an invoice is for a subscription, it must be [voided](https://stripe.com/docs/api#void_invoice).
    def self.delete(invoice, params = {}, opts = {})
      request_stripe_object(
        method: :delete,
        path: format("/v1/invoices/%<invoice>s", { invoice: CGI.escape(invoice) }),
        params: params,
        opts: opts
      )
    end

    # Permanently deletes a one-off invoice draft. This cannot be undone. Attempts to delete invoices that are no longer in a draft state will fail; once an invoice has been finalized or if an invoice is for a subscription, it must be [voided](https://stripe.com/docs/api#void_invoice).
    def delete(params = {}, opts = {})
      request_stripe_object(
        method: :delete,
        path: format("/v1/invoices/%<invoice>s", { invoice: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Stripe automatically finalizes drafts before sending and attempting payment on invoices. However, if you'd like to finalize a draft invoice manually, you can do so using this method.
    def finalize_invoice(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/invoices/%<invoice>s/finalize", { invoice: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Stripe automatically finalizes drafts before sending and attempting payment on invoices. However, if you'd like to finalize a draft invoice manually, you can do so using this method.
    def self.finalize_invoice(invoice, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/invoices/%<invoice>s/finalize", { invoice: CGI.escape(invoice) }),
        params: params,
        opts: opts
      )
    end

    # You can list all invoices, or list the invoices for a specific customer. The invoices are returned sorted by creation date, with the most recently created invoices appearing first.
    def self.list(params = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/invoices", params: params, opts: opts)
    end

    # When retrieving an upcoming invoice, you'll get a lines property containing the total count of line items and the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of line items.
    def self.list_upcoming_line_items(params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: "/v1/invoices/upcoming/lines",
        params: params,
        opts: opts
      )
    end

    # Marking an invoice as uncollectible is useful for keeping track of bad debts that can be written off for accounting purposes.
    def mark_uncollectible(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/invoices/%<invoice>s/mark_uncollectible", { invoice: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Marking an invoice as uncollectible is useful for keeping track of bad debts that can be written off for accounting purposes.
    def self.mark_uncollectible(invoice, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/invoices/%<invoice>s/mark_uncollectible", { invoice: CGI.escape(invoice) }),
        params: params,
        opts: opts
      )
    end

    # Stripe automatically creates and then attempts to collect payment on invoices for customers on subscriptions according to your [subscriptions settings](https://dashboard.stripe.com/account/billing/automatic). However, if you'd like to attempt payment on an invoice out of the normal collection schedule or for some other reason, you can do so.
    def pay(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/invoices/%<invoice>s/pay", { invoice: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Stripe automatically creates and then attempts to collect payment on invoices for customers on subscriptions according to your [subscriptions settings](https://dashboard.stripe.com/account/billing/automatic). However, if you'd like to attempt payment on an invoice out of the normal collection schedule or for some other reason, you can do so.
    def self.pay(invoice, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/invoices/%<invoice>s/pay", { invoice: CGI.escape(invoice) }),
        params: params,
        opts: opts
      )
    end

    # Removes multiple line items from an invoice. This is only possible when an invoice is still a draft.
    def remove_lines(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/invoices/%<invoice>s/remove_lines", { invoice: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Removes multiple line items from an invoice. This is only possible when an invoice is still a draft.
    def self.remove_lines(invoice, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/invoices/%<invoice>s/remove_lines", { invoice: CGI.escape(invoice) }),
        params: params,
        opts: opts
      )
    end

    def self.search(params = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/invoices/search", params: params, opts: opts)
    end

    def self.search_auto_paging_each(params = {}, opts = {}, &blk)
      search(params, opts).auto_paging_each(&blk)
    end

    # Stripe will automatically send invoices to customers according to your [subscriptions settings](https://dashboard.stripe.com/account/billing/automatic). However, if you'd like to manually send an invoice to your customer out of the normal schedule, you can do so. When sending invoices that have already been paid, there will be no reference to the payment in the email.
    #
    # Requests made in test-mode result in no emails being sent, despite sending an invoice.sent event.
    def send_invoice(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/invoices/%<invoice>s/send", { invoice: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Stripe will automatically send invoices to customers according to your [subscriptions settings](https://dashboard.stripe.com/account/billing/automatic). However, if you'd like to manually send an invoice to your customer out of the normal schedule, you can do so. When sending invoices that have already been paid, there will be no reference to the payment in the email.
    #
    # Requests made in test-mode result in no emails being sent, despite sending an invoice.sent event.
    def self.send_invoice(invoice, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/invoices/%<invoice>s/send", { invoice: CGI.escape(invoice) }),
        params: params,
        opts: opts
      )
    end

    # At any time, you can preview the upcoming invoice for a customer. This will show you all the charges that are pending, including subscription renewal charges, invoice item charges, etc. It will also show you any discounts that are applicable to the invoice.
    #
    # Note that when you are viewing an upcoming invoice, you are simply viewing a preview – the invoice has not yet been created. As such, the upcoming invoice will not show up in invoice listing calls, and you cannot use the API to pay or edit the invoice. If you want to change the amount that your customer will be billed, you can add, remove, or update pending invoice items, or update the customer's discount.
    #
    # You can preview the effects of updating a subscription, including a preview of what proration will take place. To ensure that the actual proration is calculated exactly the same as the previewed proration, you should pass the subscription_details.proration_date parameter when doing the actual subscription update. The recommended way to get only the prorations being previewed is to consider only proration line items where period[start] is equal to the subscription_details.proration_date value passed in the request.
    #
    # Note: Currency conversion calculations use the latest exchange rates. Exchange rates may vary between the time of the preview and the time of the actual invoice creation. [Learn more](https://docs.stripe.com/currencies/conversions)
    def self.upcoming(params = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/invoices/upcoming", params: params, opts: opts)
    end

    # Draft invoices are fully editable. Once an invoice is [finalized](https://stripe.com/docs/billing/invoices/workflow#finalized),
    # monetary values, as well as collection_method, become uneditable.
    #
    # If you would like to stop the Stripe Billing engine from automatically finalizing, reattempting payments on,
    # sending reminders for, or [automatically reconciling](https://stripe.com/docs/billing/invoices/reconciliation) invoices, pass
    # auto_advance=false.
    def self.update(invoice, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/invoices/%<invoice>s", { invoice: CGI.escape(invoice) }),
        params: params,
        opts: opts
      )
    end

    # Updates multiple line items on an invoice. This is only possible when an invoice is still a draft.
    def update_lines(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/invoices/%<invoice>s/update_lines", { invoice: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Updates multiple line items on an invoice. This is only possible when an invoice is still a draft.
    def self.update_lines(invoice, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/invoices/%<invoice>s/update_lines", { invoice: CGI.escape(invoice) }),
        params: params,
        opts: opts
      )
    end

    # Mark a finalized invoice as void. This cannot be undone. Voiding an invoice is similar to [deletion](https://stripe.com/docs/api#delete_invoice), however it only applies to finalized invoices and maintains a papertrail where the invoice can still be found.
    #
    # Consult with local regulations to determine whether and how an invoice might be amended, canceled, or voided in the jurisdiction you're doing business in. You might need to [issue another invoice or <a href="#create_credit_note">credit note](https://stripe.com/docs/api#create_invoice) instead. Stripe recommends that you consult with your legal counsel for advice specific to your business.
    def void_invoice(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/invoices/%<invoice>s/void", { invoice: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Mark a finalized invoice as void. This cannot be undone. Voiding an invoice is similar to [deletion](https://stripe.com/docs/api#delete_invoice), however it only applies to finalized invoices and maintains a papertrail where the invoice can still be found.
    #
    # Consult with local regulations to determine whether and how an invoice might be amended, canceled, or voided in the jurisdiction you're doing business in. You might need to [issue another invoice or <a href="#create_credit_note">credit note](https://stripe.com/docs/api#create_invoice) instead. Stripe recommends that you consult with your legal counsel for advice specific to your business.
    def self.void_invoice(invoice, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/invoices/%<invoice>s/void", { invoice: CGI.escape(invoice) }),
        params: params,
        opts: opts
      )
    end
  end
end
