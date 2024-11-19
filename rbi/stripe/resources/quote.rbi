# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # A Quote is a way to model prices that you'd like to provide to a customer.
  # Once accepted, it will automatically create an invoice, subscription or subscription schedule.
  class Quote < APIResource
    class AutomaticTax < Stripe::StripeObject
      class Liability < Stripe::StripeObject
        sig { returns(T.any(String, Stripe::Account)) }
        attr_reader :account
        sig { returns(String) }
        attr_reader :type
      end
      sig { returns(T::Boolean) }
      attr_reader :enabled
      sig { returns(T.nilable(Liability)) }
      attr_reader :liability
      sig { returns(T.nilable(String)) }
      attr_reader :status
    end
    class Computed < Stripe::StripeObject
      class LastReestimationDetails < Stripe::StripeObject
        class Failed < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :failure_code
          sig { returns(T.nilable(String)) }
          attr_reader :message
          sig { returns(String) }
          attr_reader :reason
        end
        sig { returns(T.nilable(Failed)) }
        attr_reader :failed
        sig { returns(String) }
        attr_reader :status
      end
      class Recurring < Stripe::StripeObject
        class TotalDetails < Stripe::StripeObject
          class Breakdown < Stripe::StripeObject
            class Discount < Stripe::StripeObject
              sig { returns(Integer) }
              attr_reader :amount
              sig { returns(Stripe::Discount) }
              attr_reader :discount
            end
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
            sig { returns(T::Array[Discount]) }
            attr_reader :discounts
            sig { returns(T::Array[Tax]) }
            attr_reader :taxes
          end
          sig { returns(Integer) }
          attr_reader :amount_discount
          sig { returns(T.nilable(Integer)) }
          attr_reader :amount_shipping
          sig { returns(Integer) }
          attr_reader :amount_tax
          sig { returns(Breakdown) }
          attr_reader :breakdown
        end
        sig { returns(Integer) }
        attr_reader :amount_subtotal
        sig { returns(Integer) }
        attr_reader :amount_total
        sig { returns(String) }
        attr_reader :interval
        sig { returns(Integer) }
        attr_reader :interval_count
        sig { returns(TotalDetails) }
        attr_reader :total_details
      end
      class Upfront < Stripe::StripeObject
        class TotalDetails < Stripe::StripeObject
          class Breakdown < Stripe::StripeObject
            class Discount < Stripe::StripeObject
              sig { returns(Integer) }
              attr_reader :amount
              sig { returns(Stripe::Discount) }
              attr_reader :discount
            end
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
            sig { returns(T::Array[Discount]) }
            attr_reader :discounts
            sig { returns(T::Array[Tax]) }
            attr_reader :taxes
          end
          sig { returns(Integer) }
          attr_reader :amount_discount
          sig { returns(T.nilable(Integer)) }
          attr_reader :amount_shipping
          sig { returns(Integer) }
          attr_reader :amount_tax
          sig { returns(Breakdown) }
          attr_reader :breakdown
        end
        sig { returns(Integer) }
        attr_reader :amount_subtotal
        sig { returns(Integer) }
        attr_reader :amount_total
        sig { returns(Stripe::ListObject) }
        attr_reader :line_items
        sig { returns(TotalDetails) }
        attr_reader :total_details
      end
      sig { returns(T.nilable(LastReestimationDetails)) }
      attr_reader :last_reestimation_details
      sig { returns(T.nilable(Recurring)) }
      attr_reader :recurring
      sig { returns(T.nilable(Integer)) }
      attr_reader :updated_at
      sig { returns(Upfront) }
      attr_reader :upfront
    end
    class FromQuote < Stripe::StripeObject
      sig { returns(T::Boolean) }
      attr_reader :is_revision
      sig { returns(T.any(String, Stripe::Quote)) }
      attr_reader :quote
    end
    class InvoiceSettings < Stripe::StripeObject
      class Issuer < Stripe::StripeObject
        sig { returns(T.any(String, Stripe::Account)) }
        attr_reader :account
        sig { returns(String) }
        attr_reader :type
      end
      sig { returns(T.nilable(Integer)) }
      attr_reader :days_until_due
      sig { returns(Issuer) }
      attr_reader :issuer
    end
    class StatusDetails < Stripe::StripeObject
      class Canceled < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :reason
        sig { returns(T.nilable(Integer)) }
        attr_reader :transitioned_at
      end
      class Stale < Stripe::StripeObject
        class LastReason < Stripe::StripeObject
          class LinesInvalid < Stripe::StripeObject
            sig { returns(Integer) }
            attr_reader :invalid_at
            sig { returns(T::Array[String]) }
            attr_reader :lines
          end
          class SubscriptionChanged < Stripe::StripeObject
            sig { returns(T.nilable(Stripe::Subscription)) }
            attr_reader :previous_subscription
          end
          class SubscriptionScheduleChanged < Stripe::StripeObject
            sig { returns(T.nilable(Stripe::SubscriptionSchedule)) }
            attr_reader :previous_subscription_schedule
          end
          sig { returns(String) }
          attr_reader :line_invalid
          sig { returns(T::Array[LinesInvalid]) }
          attr_reader :lines_invalid
          sig { returns(T.nilable(String)) }
          attr_reader :marked_stale
          sig { returns(String) }
          attr_reader :subscription_canceled
          sig { returns(SubscriptionChanged) }
          attr_reader :subscription_changed
          sig { returns(String) }
          attr_reader :subscription_expired
          sig { returns(String) }
          attr_reader :subscription_schedule_canceled
          sig { returns(SubscriptionScheduleChanged) }
          attr_reader :subscription_schedule_changed
          sig { returns(String) }
          attr_reader :subscription_schedule_released
          sig { returns(T.nilable(String)) }
          attr_reader :type
        end
        sig { returns(T.nilable(Integer)) }
        attr_reader :expires_at
        sig { returns(T.nilable(LastReason)) }
        attr_reader :last_reason
        sig { returns(T.nilable(Integer)) }
        attr_reader :last_updated_at
        sig { returns(T.nilable(Integer)) }
        attr_reader :transitioned_at
      end
      sig { returns(Canceled) }
      attr_reader :canceled
      sig { returns(Stale) }
      attr_reader :stale
    end
    class StatusTransitions < Stripe::StripeObject
      sig { returns(T.nilable(Integer)) }
      attr_reader :accepted_at
      sig { returns(T.nilable(Integer)) }
      attr_reader :canceled_at
      sig { returns(T.nilable(Integer)) }
      attr_reader :finalized_at
    end
    class SubscriptionData < Stripe::StripeObject
      class BillOnAcceptance < Stripe::StripeObject
        class BillFrom < Stripe::StripeObject
          class LineStartsAt < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :id
          end
          sig { returns(T.nilable(Integer)) }
          attr_reader :computed
          sig { returns(T.nilable(LineStartsAt)) }
          attr_reader :line_starts_at
          sig { returns(T.nilable(Integer)) }
          attr_reader :timestamp
          sig { returns(String) }
          attr_reader :type
        end
        class BillUntil < Stripe::StripeObject
          class Duration < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :interval
            sig { returns(Integer) }
            attr_reader :interval_count
          end
          class LineEndsAt < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :id
          end
          sig { returns(T.nilable(Integer)) }
          attr_reader :computed
          sig { returns(T.nilable(Duration)) }
          attr_reader :duration
          sig { returns(T.nilable(LineEndsAt)) }
          attr_reader :line_ends_at
          sig { returns(T.nilable(Integer)) }
          attr_reader :timestamp
          sig { returns(String) }
          attr_reader :type
        end
        sig { returns(T.nilable(BillFrom)) }
        attr_reader :bill_from
        sig { returns(T.nilable(BillUntil)) }
        attr_reader :bill_until
      end
      class Prebilling < Stripe::StripeObject
        sig { returns(Integer) }
        attr_reader :iterations
      end
      sig { returns(T.nilable(BillOnAcceptance)) }
      attr_reader :bill_on_acceptance
      sig { returns(String) }
      attr_reader :billing_behavior
      sig { returns(T.nilable(String)) }
      attr_reader :billing_cycle_anchor
      sig { returns(T.nilable(String)) }
      attr_reader :description
      sig { returns(T.nilable(Integer)) }
      attr_reader :effective_date
      sig { returns(T.nilable(String)) }
      attr_reader :end_behavior
      sig { returns(T.nilable(T.any(String, Stripe::Subscription))) }
      attr_reader :from_subscription
      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_reader :metadata
      sig { returns(T.nilable(Prebilling)) }
      attr_reader :prebilling
      sig { returns(String) }
      attr_reader :proration_behavior
      sig { returns(T.nilable(Integer)) }
      attr_reader :trial_period_days
    end
    class SubscriptionDataOverride < Stripe::StripeObject
      class AppliesTo < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :new_reference
        sig { returns(T.nilable(String)) }
        attr_reader :subscription_schedule
        sig { returns(String) }
        attr_reader :type
      end
      class BillOnAcceptance < Stripe::StripeObject
        class BillFrom < Stripe::StripeObject
          class LineStartsAt < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :id
          end
          sig { returns(T.nilable(Integer)) }
          attr_reader :computed
          sig { returns(T.nilable(LineStartsAt)) }
          attr_reader :line_starts_at
          sig { returns(T.nilable(Integer)) }
          attr_reader :timestamp
          sig { returns(String) }
          attr_reader :type
        end
        class BillUntil < Stripe::StripeObject
          class Duration < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :interval
            sig { returns(Integer) }
            attr_reader :interval_count
          end
          class LineEndsAt < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :id
          end
          sig { returns(T.nilable(Integer)) }
          attr_reader :computed
          sig { returns(T.nilable(Duration)) }
          attr_reader :duration
          sig { returns(T.nilable(LineEndsAt)) }
          attr_reader :line_ends_at
          sig { returns(T.nilable(Integer)) }
          attr_reader :timestamp
          sig { returns(String) }
          attr_reader :type
        end
        sig { returns(T.nilable(BillFrom)) }
        attr_reader :bill_from
        sig { returns(T.nilable(BillUntil)) }
        attr_reader :bill_until
      end
      sig { returns(AppliesTo) }
      attr_reader :applies_to
      sig { returns(T.nilable(BillOnAcceptance)) }
      attr_reader :bill_on_acceptance
      sig { returns(String) }
      attr_reader :billing_behavior
      sig { returns(T.nilable(String)) }
      attr_reader :customer
      sig { returns(T.nilable(String)) }
      attr_reader :description
      sig { returns(T.nilable(String)) }
      attr_reader :end_behavior
      sig { returns(T.nilable(String)) }
      attr_reader :proration_behavior
    end
    class SubscriptionSchedule < Stripe::StripeObject
      class AppliesTo < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :new_reference
        sig { returns(T.nilable(String)) }
        attr_reader :subscription_schedule
        sig { returns(String) }
        attr_reader :type
      end
      sig { returns(AppliesTo) }
      attr_reader :applies_to
      sig { returns(String) }
      attr_reader :subscription_schedule
    end
    class TotalDetails < Stripe::StripeObject
      class Breakdown < Stripe::StripeObject
        class Discount < Stripe::StripeObject
          sig { returns(Integer) }
          attr_reader :amount
          sig { returns(Stripe::Discount) }
          attr_reader :discount
        end
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
        sig { returns(T::Array[Discount]) }
        attr_reader :discounts
        sig { returns(T::Array[Tax]) }
        attr_reader :taxes
      end
      sig { returns(Integer) }
      attr_reader :amount_discount
      sig { returns(T.nilable(Integer)) }
      attr_reader :amount_shipping
      sig { returns(Integer) }
      attr_reader :amount_tax
      sig { returns(Breakdown) }
      attr_reader :breakdown
    end
    class TransferData < Stripe::StripeObject
      sig { returns(T.nilable(Integer)) }
      attr_reader :amount
      sig { returns(T.nilable(Float)) }
      attr_reader :amount_percent
      sig { returns(T.any(String, Stripe::Account)) }
      attr_reader :destination
    end
    sig { returns(T.nilable(T::Boolean)) }
    # Allow quote lines to have `starts_at` in the past if collection is paused between `starts_at` and now.
    attr_reader :allow_backdated_lines
    sig { returns(Integer) }
    # Total before any discounts or taxes are applied.
    attr_reader :amount_subtotal
    sig { returns(Integer) }
    # Total after discounts and taxes are applied.
    attr_reader :amount_total
    sig { returns(T.nilable(T.any(String, Stripe::Application))) }
    # ID of the Connect Application that created the quote.
    attr_reader :application
    sig { returns(T.nilable(Integer)) }
    # The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. Only applicable if there are no line items with recurring prices on the quote.
    attr_reader :application_fee_amount
    sig { returns(T.nilable(Float)) }
    # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account. Only applicable if there are line items with recurring prices on the quote.
    attr_reader :application_fee_percent
    sig { returns(AutomaticTax) }
    # Attribute for field automatic_tax
    attr_reader :automatic_tax
    sig { returns(String) }
    # Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay invoices at the end of the subscription cycle or on finalization using the default payment method attached to the subscription or customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions and mark the subscription as `active`. Defaults to `charge_automatically`.
    attr_reader :collection_method
    sig { returns(Computed) }
    # Attribute for field computed
    attr_reader :computed
    sig { returns(Integer) }
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    sig { returns(T.nilable(String)) }
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    attr_reader :currency
    sig { returns(T.nilable(T.any(String, Stripe::Customer))) }
    # The customer which this quote belongs to. A customer is required before finalizing the quote. Once specified, it cannot be changed.
    attr_reader :customer
    sig { returns(T::Array[T.any(String, Stripe::TaxRate)]) }
    # The tax rates applied to this quote.
    attr_reader :default_tax_rates
    sig { returns(T.nilable(String)) }
    # A description that will be displayed on the quote PDF.
    attr_reader :description
    sig { returns(T::Array[T.any(String, Stripe::Discount)]) }
    # The discounts applied to this quote.
    attr_reader :discounts
    sig { returns(Integer) }
    # The date on which the quote will be canceled if in `open` or `draft` status. Measured in seconds since the Unix epoch.
    attr_reader :expires_at
    sig { returns(T.nilable(String)) }
    # A footer that will be displayed on the quote PDF.
    attr_reader :footer
    sig { returns(T.nilable(FromQuote)) }
    # Details of the quote that was cloned. See the [cloning documentation](https://stripe.com/docs/quotes/clone) for more details.
    attr_reader :from_quote
    sig { returns(T.nilable(String)) }
    # A header that will be displayed on the quote PDF.
    attr_reader :header
    sig { returns(String) }
    # Unique identifier for the object.
    attr_reader :id
    sig { returns(T.nilable(T.any(String, Stripe::Invoice))) }
    # The invoice that was created from this quote.
    attr_reader :invoice
    sig { returns(InvoiceSettings) }
    # Attribute for field invoice_settings
    attr_reader :invoice_settings
    sig { returns(Stripe::ListObject) }
    # A list of items the customer is being quoted for.
    attr_reader :line_items
    sig { returns(T.nilable(T::Array[String])) }
    # A list of [quote lines](https://docs.stripe.com/api/quote_lines) on the quote. These lines describe changes, in the order provided, that will be used to create new subscription schedules or update existing subscription schedules when the quote is accepted.
    attr_reader :lines
    sig { returns(T::Boolean) }
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    sig { returns(T::Hash[String, String]) }
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    sig { returns(T.nilable(String)) }
    # A unique number that identifies this particular quote. This number is assigned once the quote is [finalized](https://stripe.com/docs/quotes/overview#finalize).
    attr_reader :number
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    sig { returns(T.nilable(T.any(String, Stripe::Account))) }
    # The account on behalf of which to charge. See the [Connect documentation](https://support.stripe.com/questions/sending-invoices-on-behalf-of-connected-accounts) for details.
    attr_reader :on_behalf_of
    sig { returns(String) }
    # The status of the quote.
    attr_reader :status
    sig { returns(T.nilable(StatusDetails)) }
    # Details on when and why a quote has been marked as stale or canceled.
    attr_reader :status_details
    sig { returns(StatusTransitions) }
    # Attribute for field status_transitions
    attr_reader :status_transitions
    sig { returns(T.nilable(T.any(String, Stripe::Subscription))) }
    # The subscription that was created or updated from this quote.
    attr_reader :subscription
    sig { returns(SubscriptionData) }
    # Attribute for field subscription_data
    attr_reader :subscription_data
    sig { returns(T.nilable(T::Array[SubscriptionDataOverride])) }
    # List representing overrides for `subscription_data` configurations for specific subscription schedules.
    attr_reader :subscription_data_overrides
    sig { returns(T.nilable(T.any(String, Stripe::SubscriptionSchedule))) }
    # The subscription schedule that was created or updated from this quote.
    attr_reader :subscription_schedule
    sig { returns(T.nilable(T::Array[SubscriptionSchedule])) }
    # The subscription schedules that were created or updated from this quote.
    attr_reader :subscription_schedules
    sig { returns(T.nilable(T.any(String, Stripe::TestHelpers::TestClock))) }
    # ID of the test clock this quote belongs to.
    attr_reader :test_clock
    sig { returns(TotalDetails) }
    # Attribute for field total_details
    attr_reader :total_details
    sig { returns(T.nilable(TransferData)) }
    # The account (if any) the payments will be attributed to for tax reporting, and where funds from each payment will be transferred to for each of the invoices.
    attr_reader :transfer_data
  end
end