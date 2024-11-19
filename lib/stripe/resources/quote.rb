# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # A Quote is a way to model prices that you'd like to provide to a customer.
  # Once accepted, it will automatically create an invoice, subscription or subscription schedule.
  class Quote < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    extend Stripe::APIOperations::NestedResource
    include Stripe::APIOperations::Save

    OBJECT_NAME = "quote"
    def self.object_name
      "quote"
    end

    nested_resource_class_methods :preview_invoice, operations: %i[list]
    nested_resource_class_methods :preview_subscription_schedule, operations: %i[list]

    class AutomaticTax < Stripe::StripeObject
      class Liability < Stripe::StripeObject
        attr_reader :account, :type
      end
      attr_reader :enabled, :liability, :status
    end

    class Computed < Stripe::StripeObject
      class LastReestimationDetails < Stripe::StripeObject
        class Failed < Stripe::StripeObject
          attr_reader :failure_code, :message, :reason
        end
        attr_reader :failed, :status
      end

      class Recurring < Stripe::StripeObject
        class TotalDetails < Stripe::StripeObject
          class Breakdown < Stripe::StripeObject
            class Discount < Stripe::StripeObject
              attr_reader :amount, :discount
            end

            class Tax < Stripe::StripeObject
              attr_reader :amount, :rate, :taxability_reason, :taxable_amount
            end
            attr_reader :discounts, :taxes
          end
          attr_reader :amount_discount, :amount_shipping, :amount_tax, :breakdown
        end
        attr_reader :amount_subtotal, :amount_total, :interval, :interval_count, :total_details
      end

      class Upfront < Stripe::StripeObject
        class TotalDetails < Stripe::StripeObject
          class Breakdown < Stripe::StripeObject
            class Discount < Stripe::StripeObject
              attr_reader :amount, :discount
            end

            class Tax < Stripe::StripeObject
              attr_reader :amount, :rate, :taxability_reason, :taxable_amount
            end
            attr_reader :discounts, :taxes
          end
          attr_reader :amount_discount, :amount_shipping, :amount_tax, :breakdown
        end
        attr_reader :amount_subtotal, :amount_total, :line_items, :total_details
      end
      attr_reader :last_reestimation_details, :recurring, :updated_at, :upfront
    end

    class FromQuote < Stripe::StripeObject
      attr_reader :is_revision, :quote
    end

    class InvoiceSettings < Stripe::StripeObject
      class Issuer < Stripe::StripeObject
        attr_reader :account, :type
      end
      attr_reader :days_until_due, :issuer
    end

    class StatusDetails < Stripe::StripeObject
      class Canceled < Stripe::StripeObject
        attr_reader :reason, :transitioned_at
      end

      class Stale < Stripe::StripeObject
        class LastReason < Stripe::StripeObject
          class LinesInvalid < Stripe::StripeObject
            attr_reader :invalid_at, :lines
          end

          class SubscriptionChanged < Stripe::StripeObject
            attr_reader :previous_subscription
          end

          class SubscriptionScheduleChanged < Stripe::StripeObject
            attr_reader :previous_subscription_schedule
          end
          attr_reader :line_invalid, :lines_invalid, :marked_stale, :subscription_canceled, :subscription_changed, :subscription_expired, :subscription_schedule_canceled, :subscription_schedule_changed, :subscription_schedule_released, :type
        end
        attr_reader :expires_at, :last_reason, :last_updated_at, :transitioned_at
      end
      attr_reader :canceled, :stale
    end

    class StatusTransitions < Stripe::StripeObject
      attr_reader :accepted_at, :canceled_at, :finalized_at
    end

    class SubscriptionData < Stripe::StripeObject
      class BillOnAcceptance < Stripe::StripeObject
        class BillFrom < Stripe::StripeObject
          class LineStartsAt < Stripe::StripeObject
            attr_reader :id
          end
          attr_reader :computed, :line_starts_at, :timestamp, :type
        end

        class BillUntil < Stripe::StripeObject
          class Duration < Stripe::StripeObject
            attr_reader :interval, :interval_count
          end

          class LineEndsAt < Stripe::StripeObject
            attr_reader :id
          end
          attr_reader :computed, :duration, :line_ends_at, :timestamp, :type
        end
        attr_reader :bill_from, :bill_until
      end

      class Prebilling < Stripe::StripeObject
        attr_reader :iterations
      end
      attr_reader :bill_on_acceptance, :billing_behavior, :billing_cycle_anchor, :description, :effective_date, :end_behavior, :from_subscription, :metadata, :prebilling, :proration_behavior, :trial_period_days
    end

    class SubscriptionDataOverride < Stripe::StripeObject
      class AppliesTo < Stripe::StripeObject
        attr_reader :new_reference, :subscription_schedule, :type
      end

      class BillOnAcceptance < Stripe::StripeObject
        class BillFrom < Stripe::StripeObject
          class LineStartsAt < Stripe::StripeObject
            attr_reader :id
          end
          attr_reader :computed, :line_starts_at, :timestamp, :type
        end

        class BillUntil < Stripe::StripeObject
          class Duration < Stripe::StripeObject
            attr_reader :interval, :interval_count
          end

          class LineEndsAt < Stripe::StripeObject
            attr_reader :id
          end
          attr_reader :computed, :duration, :line_ends_at, :timestamp, :type
        end
        attr_reader :bill_from, :bill_until
      end
      attr_reader :applies_to, :bill_on_acceptance, :billing_behavior, :customer, :description, :end_behavior, :proration_behavior
    end

    class SubscriptionSchedule < Stripe::StripeObject
      class AppliesTo < Stripe::StripeObject
        attr_reader :new_reference, :subscription_schedule, :type
      end
      attr_reader :applies_to, :subscription_schedule
    end

    class TotalDetails < Stripe::StripeObject
      class Breakdown < Stripe::StripeObject
        class Discount < Stripe::StripeObject
          attr_reader :amount, :discount
        end

        class Tax < Stripe::StripeObject
          attr_reader :amount, :rate, :taxability_reason, :taxable_amount
        end
        attr_reader :discounts, :taxes
      end
      attr_reader :amount_discount, :amount_shipping, :amount_tax, :breakdown
    end

    class TransferData < Stripe::StripeObject
      attr_reader :amount, :amount_percent, :destination
    end
    # Allow quote lines to have `starts_at` in the past if collection is paused between `starts_at` and now.
    attr_reader :allow_backdated_lines
    # Total before any discounts or taxes are applied.
    attr_reader :amount_subtotal
    # Total after discounts and taxes are applied.
    attr_reader :amount_total
    # ID of the Connect Application that created the quote.
    attr_reader :application
    # The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. Only applicable if there are no line items with recurring prices on the quote.
    attr_reader :application_fee_amount
    # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account. Only applicable if there are line items with recurring prices on the quote.
    attr_reader :application_fee_percent
    # Attribute for field automatic_tax
    attr_reader :automatic_tax
    # Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay invoices at the end of the subscription cycle or on finalization using the default payment method attached to the subscription or customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions and mark the subscription as `active`. Defaults to `charge_automatically`.
    attr_reader :collection_method
    # Attribute for field computed
    attr_reader :computed
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    attr_reader :currency
    # The customer which this quote belongs to. A customer is required before finalizing the quote. Once specified, it cannot be changed.
    attr_reader :customer
    # The tax rates applied to this quote.
    attr_reader :default_tax_rates
    # A description that will be displayed on the quote PDF.
    attr_reader :description
    # The discounts applied to this quote.
    attr_reader :discounts
    # The date on which the quote will be canceled if in `open` or `draft` status. Measured in seconds since the Unix epoch.
    attr_reader :expires_at
    # A footer that will be displayed on the quote PDF.
    attr_reader :footer
    # Details of the quote that was cloned. See the [cloning documentation](https://stripe.com/docs/quotes/clone) for more details.
    attr_reader :from_quote
    # A header that will be displayed on the quote PDF.
    attr_reader :header
    # Unique identifier for the object.
    attr_reader :id
    # The invoice that was created from this quote.
    attr_reader :invoice
    # Attribute for field invoice_settings
    attr_reader :invoice_settings
    # A list of items the customer is being quoted for.
    attr_reader :line_items
    # A list of [quote lines](https://docs.stripe.com/api/quote_lines) on the quote. These lines describe changes, in the order provided, that will be used to create new subscription schedules or update existing subscription schedules when the quote is accepted.
    attr_reader :lines
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    # A unique number that identifies this particular quote. This number is assigned once the quote is [finalized](https://stripe.com/docs/quotes/overview#finalize).
    attr_reader :number
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # The account on behalf of which to charge. See the [Connect documentation](https://support.stripe.com/questions/sending-invoices-on-behalf-of-connected-accounts) for details.
    attr_reader :on_behalf_of
    # The status of the quote.
    attr_reader :status
    # Details on when and why a quote has been marked as stale or canceled.
    attr_reader :status_details
    # Attribute for field status_transitions
    attr_reader :status_transitions
    # The subscription that was created or updated from this quote.
    attr_reader :subscription
    # Attribute for field subscription_data
    attr_reader :subscription_data
    # List representing overrides for `subscription_data` configurations for specific subscription schedules.
    attr_reader :subscription_data_overrides
    # The subscription schedule that was created or updated from this quote.
    attr_reader :subscription_schedule
    # The subscription schedules that were created or updated from this quote.
    attr_reader :subscription_schedules
    # ID of the test clock this quote belongs to.
    attr_reader :test_clock
    # Attribute for field total_details
    attr_reader :total_details
    # The account (if any) the payments will be attributed to for tax reporting, and where funds from each payment will be transferred to for each of the invoices.
    attr_reader :transfer_data

    # Accepts the specified quote.
    def accept(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/quotes/%<quote>s/accept", { quote: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Accepts the specified quote.
    def self.accept(quote, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/quotes/%<quote>s/accept", { quote: CGI.escape(quote) }),
        params: params,
        opts: opts
      )
    end

    # Cancels the quote.
    def cancel(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/quotes/%<quote>s/cancel", { quote: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Cancels the quote.
    def self.cancel(quote, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/quotes/%<quote>s/cancel", { quote: CGI.escape(quote) }),
        params: params,
        opts: opts
      )
    end

    # A quote models prices and services for a customer. Default options for header, description, footer, and expires_at can be set in the dashboard via the [quote template](https://dashboard.stripe.com/settings/billing/quote).
    def self.create(params = {}, opts = {})
      request_stripe_object(method: :post, path: "/v1/quotes", params: params, opts: opts)
    end

    # Finalizes the quote.
    def finalize_quote(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/quotes/%<quote>s/finalize", { quote: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Finalizes the quote.
    def self.finalize_quote(quote, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/quotes/%<quote>s/finalize", { quote: CGI.escape(quote) }),
        params: params,
        opts: opts
      )
    end

    # Returns a list of your quotes.
    def self.list(filters = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/quotes", params: filters, opts: opts)
    end

    # When retrieving a quote, there is an includable [computed.upfront.line_items](https://stripe.com/docs/api/quotes/object#quote_object-computed-upfront-line_items) property containing the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of upfront line items.
    def list_computed_upfront_line_items(params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: format("/v1/quotes/%<quote>s/computed_upfront_line_items", { quote: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # When retrieving a quote, there is an includable [computed.upfront.line_items](https://stripe.com/docs/api/quotes/object#quote_object-computed-upfront-line_items) property containing the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of upfront line items.
    def self.list_computed_upfront_line_items(quote, params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: format("/v1/quotes/%<quote>s/computed_upfront_line_items", { quote: CGI.escape(quote) }),
        params: params,
        opts: opts
      )
    end

    # When retrieving a quote, there is an includable line_items property containing the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of line items.
    def list_line_items(params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: format("/v1/quotes/%<quote>s/line_items", { quote: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # When retrieving a quote, there is an includable line_items property containing the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of line items.
    def self.list_line_items(quote, params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: format("/v1/quotes/%<quote>s/line_items", { quote: CGI.escape(quote) }),
        params: params,
        opts: opts
      )
    end

    # Retrieves a paginated list of lines for a quote. These lines describe changes that will be used to create new subscription schedules or update existing subscription schedules when the quote is accepted.
    def list_lines(params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: format("/v1/quotes/%<quote>s/lines", { quote: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Retrieves a paginated list of lines for a quote. These lines describe changes that will be used to create new subscription schedules or update existing subscription schedules when the quote is accepted.
    def self.list_lines(quote, params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: format("/v1/quotes/%<quote>s/lines", { quote: CGI.escape(quote) }),
        params: params,
        opts: opts
      )
    end

    # Preview the invoice line items that would be generated by accepting the quote.
    def list_preview_invoice_lines(preview_invoice, params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: format("/v1/quotes/%<quote>s/preview_invoices/%<preview_invoice>s/lines", { quote: CGI.escape(self["id"]), preview_invoice: CGI.escape(preview_invoice) }),
        params: params,
        opts: opts
      )
    end

    # Preview the invoice line items that would be generated by accepting the quote.
    def self.list_preview_invoice_lines(quote, preview_invoice, params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: format("/v1/quotes/%<quote>s/preview_invoices/%<preview_invoice>s/lines", { quote: CGI.escape(quote), preview_invoice: CGI.escape(preview_invoice) }),
        params: params,
        opts: opts
      )
    end

    # Converts a stale quote to draft.
    def mark_draft(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/quotes/%<quote>s/mark_draft", { quote: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Converts a stale quote to draft.
    def self.mark_draft(quote, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/quotes/%<quote>s/mark_draft", { quote: CGI.escape(quote) }),
        params: params,
        opts: opts
      )
    end

    # Converts a draft or open quote to stale.
    def mark_stale(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/quotes/%<quote>s/mark_stale", { quote: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Converts a draft or open quote to stale.
    def self.mark_stale(quote, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/quotes/%<quote>s/mark_stale", { quote: CGI.escape(quote) }),
        params: params,
        opts: opts
      )
    end

    # Download the PDF for a finalized quote. Explanation for special handling can be found [here](https://docs.stripe.com/quotes/overview#quote_pdf)
    def pdf(params = {}, opts = {}, &read_body_chunk_block)
      opts = { api_base: APIRequestor.active_requestor.config.uploads_base }.merge(opts)
      request_stream(
        method: :get,
        path: format("/v1/quotes/%<quote>s/pdf", { quote: CGI.escape(self["id"]) }),
        params: params,
        opts: opts,
        base_address: :files,
        &read_body_chunk_block
      )
    end

    # Download the PDF for a finalized quote. Explanation for special handling can be found [here](https://docs.stripe.com/quotes/overview#quote_pdf)
    def self.pdf(quote, params = {}, opts = {}, &read_body_chunk_block)
      opts = { api_base: APIRequestor.active_requestor.config.uploads_base }.merge(opts)
      execute_resource_request_stream(
        :get,
        format("/v1/quotes/%<quote>s/pdf", { quote: CGI.escape(quote) }),
        :files,
        params,
        opts,
        &read_body_chunk_block
      )
    end

    # Recompute the upcoming invoice estimate for the quote.
    def reestimate(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/quotes/%<quote>s/reestimate", { quote: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Recompute the upcoming invoice estimate for the quote.
    def self.reestimate(quote, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/quotes/%<quote>s/reestimate", { quote: CGI.escape(quote) }),
        params: params,
        opts: opts
      )
    end

    # A quote models prices and services for a customer.
    def self.update(id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/quotes/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end
  end
end
