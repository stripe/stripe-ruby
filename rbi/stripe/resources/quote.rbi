# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # A Quote is a way to model prices that you'd like to provide to a customer.
  # Once accepted, it will automatically create an invoice, subscription or subscription schedule.
  class Quote < APIResource
    class AutomaticTax < Stripe::StripeObject
      class Liability < Stripe::StripeObject
        # The connected account being referenced when `type` is `account`.
        sig { returns(T.any(String, Stripe::Account)) }
        attr_reader :account
        # Type of the account referenced.
        sig { returns(String) }
        attr_reader :type
      end
      # Automatically calculate taxes
      sig { returns(T::Boolean) }
      attr_reader :enabled
      # The account that's liable for tax. If set, the business address and tax registrations required to perform the tax calculation are loaded from this account. The tax transaction is returned in the report of the connected account.
      sig { returns(T.nilable(Liability)) }
      attr_reader :liability
      # The tax provider powering automatic tax.
      sig { returns(T.nilable(String)) }
      attr_reader :provider
      # The status of the most recent automated tax calculation for this quote.
      sig { returns(T.nilable(String)) }
      attr_reader :status
    end
    class Computed < Stripe::StripeObject
      class LastReestimationDetails < Stripe::StripeObject
        class Failed < Stripe::StripeObject
          # The failure `code` is more granular than the `reason` provided and may correspond to a Stripe error code. For automation errors, this field is one of: `reverse_api_failure`, `reverse_api_deadline_exceeeded`, or `reverse_api_response_validation_error`, which are Stripe error codes and map to the error `message` field.
          sig { returns(T.nilable(String)) }
          attr_reader :failure_code
          # Information derived from the `failure_code` or a freeform message that explains the error as a human-readable English string. For example, "margin ID is not a valid ID".
          sig { returns(T.nilable(String)) }
          attr_reader :message
          # The reason the reestimation failed.
          sig { returns(String) }
          attr_reader :reason
        end
        # When `status` is `failed`, provides details about the quote reestimation failure.
        sig { returns(T.nilable(Failed)) }
        attr_reader :failed
        # Latest status of the reestimation.
        sig { returns(String) }
        attr_reader :status
      end
      class Recurring < Stripe::StripeObject
        class TotalDetails < Stripe::StripeObject
          class Breakdown < Stripe::StripeObject
            class Discount < Stripe::StripeObject
              # The amount discounted.
              sig { returns(Integer) }
              attr_reader :amount
              # A discount represents the actual application of a [coupon](https://stripe.com/docs/api#coupons) or [promotion code](https://stripe.com/docs/api#promotion_codes).
              # It contains information about when the discount began, when it will end, and what it is applied to.
              #
              # Related guide: [Applying discounts to subscriptions](https://stripe.com/docs/billing/subscriptions/discounts)
              sig { returns(Stripe::Discount) }
              attr_reader :discount
            end
            class Tax < Stripe::StripeObject
              # Amount of tax applied for this rate.
              sig { returns(Integer) }
              attr_reader :amount
              # Tax rates can be applied to [invoices](/invoicing/taxes/tax-rates), [subscriptions](/billing/taxes/tax-rates) and [Checkout Sessions](/payments/checkout/use-manual-tax-rates) to collect tax.
              #
              # Related guide: [Tax rates](/billing/taxes/tax-rates)
              sig { returns(Stripe::TaxRate) }
              attr_reader :rate
              # The reasoning behind this tax, for example, if the product is tax exempt. The possible values for this field may be extended as new tax rules are supported.
              sig { returns(T.nilable(String)) }
              attr_reader :taxability_reason
              # The amount on which tax is calculated, in cents (or local equivalent).
              sig { returns(T.nilable(Integer)) }
              attr_reader :taxable_amount
            end
            # The aggregated discounts.
            sig { returns(T::Array[Discount]) }
            attr_reader :discounts
            # The aggregated tax amounts by rate.
            sig { returns(T::Array[Tax]) }
            attr_reader :taxes
          end
          # This is the sum of all the discounts.
          sig { returns(Integer) }
          attr_reader :amount_discount
          # This is the sum of all the shipping amounts.
          sig { returns(T.nilable(Integer)) }
          attr_reader :amount_shipping
          # This is the sum of all the tax amounts.
          sig { returns(Integer) }
          attr_reader :amount_tax
          # Attribute for field breakdown
          sig { returns(Breakdown) }
          attr_reader :breakdown
        end
        # Total before any discounts or taxes are applied.
        sig { returns(Integer) }
        attr_reader :amount_subtotal
        # Total after discounts and taxes are applied.
        sig { returns(Integer) }
        attr_reader :amount_total
        # The frequency at which a subscription is billed. One of `day`, `week`, `month` or `year`.
        sig { returns(String) }
        attr_reader :interval
        # The number of intervals (specified in the `interval` attribute) between subscription billings. For example, `interval=month` and `interval_count=3` bills every 3 months.
        sig { returns(Integer) }
        attr_reader :interval_count
        # Attribute for field total_details
        sig { returns(TotalDetails) }
        attr_reader :total_details
      end
      class Upfront < Stripe::StripeObject
        class TotalDetails < Stripe::StripeObject
          class Breakdown < Stripe::StripeObject
            class Discount < Stripe::StripeObject
              # The amount discounted.
              sig { returns(Integer) }
              attr_reader :amount
              # A discount represents the actual application of a [coupon](https://stripe.com/docs/api#coupons) or [promotion code](https://stripe.com/docs/api#promotion_codes).
              # It contains information about when the discount began, when it will end, and what it is applied to.
              #
              # Related guide: [Applying discounts to subscriptions](https://stripe.com/docs/billing/subscriptions/discounts)
              sig { returns(Stripe::Discount) }
              attr_reader :discount
            end
            class Tax < Stripe::StripeObject
              # Amount of tax applied for this rate.
              sig { returns(Integer) }
              attr_reader :amount
              # Tax rates can be applied to [invoices](/invoicing/taxes/tax-rates), [subscriptions](/billing/taxes/tax-rates) and [Checkout Sessions](/payments/checkout/use-manual-tax-rates) to collect tax.
              #
              # Related guide: [Tax rates](/billing/taxes/tax-rates)
              sig { returns(Stripe::TaxRate) }
              attr_reader :rate
              # The reasoning behind this tax, for example, if the product is tax exempt. The possible values for this field may be extended as new tax rules are supported.
              sig { returns(T.nilable(String)) }
              attr_reader :taxability_reason
              # The amount on which tax is calculated, in cents (or local equivalent).
              sig { returns(T.nilable(Integer)) }
              attr_reader :taxable_amount
            end
            # The aggregated discounts.
            sig { returns(T::Array[Discount]) }
            attr_reader :discounts
            # The aggregated tax amounts by rate.
            sig { returns(T::Array[Tax]) }
            attr_reader :taxes
          end
          # This is the sum of all the discounts.
          sig { returns(Integer) }
          attr_reader :amount_discount
          # This is the sum of all the shipping amounts.
          sig { returns(T.nilable(Integer)) }
          attr_reader :amount_shipping
          # This is the sum of all the tax amounts.
          sig { returns(Integer) }
          attr_reader :amount_tax
          # Attribute for field breakdown
          sig { returns(Breakdown) }
          attr_reader :breakdown
        end
        # Total before any discounts or taxes are applied.
        sig { returns(Integer) }
        attr_reader :amount_subtotal
        # Total after discounts and taxes are applied.
        sig { returns(Integer) }
        attr_reader :amount_total
        # The line items that will appear on the next invoice after this quote is accepted. This does not include pending invoice items that exist on the customer but may still be included in the next invoice.
        sig { returns(Stripe::ListObject) }
        attr_reader :line_items
        # Attribute for field total_details
        sig { returns(TotalDetails) }
        attr_reader :total_details
      end
      # Details of the most recent reestimate of the quote's preview schedules and upcoming invoices, including the status of Stripe's calculation.
      sig { returns(T.nilable(LastReestimationDetails)) }
      attr_reader :last_reestimation_details
      # The definitive totals and line items the customer will be charged on a recurring basis. Takes into account the line items with recurring prices and discounts with `duration=forever` coupons only. Defaults to `null` if no inputted line items with recurring prices.
      sig { returns(T.nilable(Recurring)) }
      attr_reader :recurring
      # The time at which the quote's estimated schedules and upcoming invoices were generated.
      sig { returns(T.nilable(Integer)) }
      attr_reader :updated_at
      # Attribute for field upfront
      sig { returns(Upfront) }
      attr_reader :upfront
    end
    class FromQuote < Stripe::StripeObject
      # Whether this quote is a revision of a different quote.
      sig { returns(T::Boolean) }
      attr_reader :is_revision
      # The quote that was cloned.
      sig { returns(T.any(String, Stripe::Quote)) }
      attr_reader :quote
    end
    class InvoiceSettings < Stripe::StripeObject
      class Issuer < Stripe::StripeObject
        # The connected account being referenced when `type` is `account`.
        sig { returns(T.any(String, Stripe::Account)) }
        attr_reader :account
        # Type of the account referenced.
        sig { returns(String) }
        attr_reader :type
      end
      # Number of days within which a customer must pay invoices generated by this quote. This value will be `null` for quotes where `collection_method=charge_automatically`.
      sig { returns(T.nilable(Integer)) }
      attr_reader :days_until_due
      # Attribute for field issuer
      sig { returns(Issuer) }
      attr_reader :issuer
    end
    class StatusDetails < Stripe::StripeObject
      class Canceled < Stripe::StripeObject
        # The reason this quote was marked as canceled.
        sig { returns(T.nilable(String)) }
        attr_reader :reason
        # Time at which the quote was marked as canceled. Measured in seconds since the Unix epoch.
        sig { returns(T.nilable(Integer)) }
        attr_reader :transitioned_at
      end
      class Stale < Stripe::StripeObject
        class LastReason < Stripe::StripeObject
          class LinesInvalid < Stripe::StripeObject
            # The timestamp at which the lines were marked as invalid.
            sig { returns(Integer) }
            attr_reader :invalid_at
            # The list of lines that became invalid at the given timestamp.
            sig { returns(T::Array[String]) }
            attr_reader :lines
          end
          class SubscriptionChanged < Stripe::StripeObject
            # The subscription's state before the quote was marked as stale.
            sig { returns(T.nilable(Stripe::Subscription)) }
            attr_reader :previous_subscription
          end
          class SubscriptionScheduleChanged < Stripe::StripeObject
            # The subscription schedule's state before the quote was marked as stale.
            sig { returns(T.nilable(Stripe::SubscriptionSchedule)) }
            attr_reader :previous_subscription_schedule
          end
          # The ID of the line that is invalid if the stale reason type is `line_invalid`.
          sig { returns(String) }
          attr_reader :line_invalid
          # The IDs of the lines that are invalid if the stale reason type is `lines_invalid`.
          sig { returns(T::Array[LinesInvalid]) }
          attr_reader :lines_invalid
          # The user supplied mark stale reason.
          sig { returns(T.nilable(String)) }
          attr_reader :marked_stale
          # The ID of the subscription that was canceled.
          sig { returns(String) }
          attr_reader :subscription_canceled
          # Attribute for field subscription_changed
          sig { returns(SubscriptionChanged) }
          attr_reader :subscription_changed
          # The ID of the subscription that was expired.
          sig { returns(String) }
          attr_reader :subscription_expired
          # The ID of the subscription schedule that was canceled.
          sig { returns(String) }
          attr_reader :subscription_schedule_canceled
          # Attribute for field subscription_schedule_changed
          sig { returns(SubscriptionScheduleChanged) }
          attr_reader :subscription_schedule_changed
          # The ID of the subscription schedule that was released.
          sig { returns(String) }
          attr_reader :subscription_schedule_released
          # The reason the quote was marked as stale.
          sig { returns(T.nilable(String)) }
          attr_reader :type
        end
        # Time at which the quote expires. Measured in seconds since the Unix epoch.
        sig { returns(T.nilable(Integer)) }
        attr_reader :expires_at
        # The most recent reason this quote was marked as stale.
        sig { returns(T.nilable(LastReason)) }
        attr_reader :last_reason
        # Time at which the stale reason was updated. Measured in seconds since the Unix epoch.
        sig { returns(T.nilable(Integer)) }
        attr_reader :last_updated_at
        # Time at which the quote was marked as stale. Measured in seconds since the Unix epoch.
        sig { returns(T.nilable(Integer)) }
        attr_reader :transitioned_at
      end
      # Attribute for field canceled
      sig { returns(Canceled) }
      attr_reader :canceled
      # Attribute for field stale
      sig { returns(Stale) }
      attr_reader :stale
    end
    class StatusTransitions < Stripe::StripeObject
      # The time that the quote was accepted. Measured in seconds since Unix epoch.
      sig { returns(T.nilable(Integer)) }
      attr_reader :accepted_at
      # The time that the quote was canceled. Measured in seconds since Unix epoch.
      sig { returns(T.nilable(Integer)) }
      attr_reader :canceled_at
      # The time that the quote was finalized. Measured in seconds since Unix epoch.
      sig { returns(T.nilable(Integer)) }
      attr_reader :finalized_at
    end
    class SubscriptionData < Stripe::StripeObject
      class BillOnAcceptance < Stripe::StripeObject
        class BillFrom < Stripe::StripeObject
          class LineStartsAt < Stripe::StripeObject
            # Unique identifier for the object.
            sig { returns(String) }
            attr_reader :id
          end
          # The materialized time.
          sig { returns(T.nilable(Integer)) }
          attr_reader :computed
          # The timestamp the given line starts at.
          sig { returns(T.nilable(LineStartsAt)) }
          attr_reader :line_starts_at
          # A precise Unix timestamp.
          sig { returns(T.nilable(Integer)) }
          attr_reader :timestamp
          # The type of method to specify the `bill_from` time.
          sig { returns(String) }
          attr_reader :type
        end
        class BillUntil < Stripe::StripeObject
          class Duration < Stripe::StripeObject
            # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
            sig { returns(String) }
            attr_reader :interval
            # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
            sig { returns(Integer) }
            attr_reader :interval_count
          end
          class LineEndsAt < Stripe::StripeObject
            # Unique identifier for the object.
            sig { returns(String) }
            attr_reader :id
          end
          # The materialized time.
          sig { returns(T.nilable(Integer)) }
          attr_reader :computed
          # Time span for the quote line starting from the `starts_at` date.
          sig { returns(T.nilable(Duration)) }
          attr_reader :duration
          # The timestamp the given line ends at.
          sig { returns(T.nilable(LineEndsAt)) }
          attr_reader :line_ends_at
          # A precise Unix timestamp.
          sig { returns(T.nilable(Integer)) }
          attr_reader :timestamp
          # The type of method to specify the `bill_until` time.
          sig { returns(String) }
          attr_reader :type
        end
        # The start of the period to bill from when the Quote is accepted.
        sig { returns(T.nilable(BillFrom)) }
        attr_reader :bill_from
        # The end of the period to bill until when the Quote is accepted.
        sig { returns(T.nilable(BillUntil)) }
        attr_reader :bill_until
      end
      class BillingMode < Stripe::StripeObject
        # Controls how prorations and invoices for subscriptions are calculated and orchestrated.
        sig { returns(String) }
        attr_reader :type
      end
      class Prebilling < Stripe::StripeObject
        # Attribute for field iterations
        sig { returns(Integer) }
        attr_reader :iterations
      end
      # Describes the period to bill for upon accepting the quote.
      sig { returns(T.nilable(BillOnAcceptance)) }
      attr_reader :bill_on_acceptance
      # Configures when the subscription schedule generates prorations for phase transitions. Possible values are `prorate_on_next_phase` or `prorate_up_front` with the default being `prorate_on_next_phase`. `prorate_on_next_phase` will apply phase changes and generate prorations at transition time. `prorate_up_front` will bill for all phases within the current billing cycle up front.
      sig { returns(String) }
      attr_reader :billing_behavior
      # Whether the subscription will always start a new billing period when the quote is accepted.
      sig { returns(T.nilable(String)) }
      attr_reader :billing_cycle_anchor
      # The billing mode of the quote.
      sig { returns(BillingMode) }
      attr_reader :billing_mode
      # The subscription's description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
      sig { returns(T.nilable(String)) }
      attr_reader :description
      # When creating a new subscription, the date of which the subscription schedule will start after the quote is accepted. This date is ignored if it is in the past when the quote is accepted. Measured in seconds since the Unix epoch.
      sig { returns(T.nilable(Integer)) }
      attr_reader :effective_date
      # Behavior of the subscription schedule and underlying subscription when it ends.
      sig { returns(T.nilable(String)) }
      attr_reader :end_behavior
      # The id of the subscription that will be updated when the quote is accepted.
      sig { returns(T.nilable(T.any(String, Stripe::Subscription))) }
      attr_reader :from_subscription
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that will set metadata on the subscription or subscription schedule when the quote is accepted. If a recurring price is included in `line_items`, this field will be passed to the resulting subscription's `metadata` field. If `subscription_data.effective_date` is used, this field will be passed to the resulting subscription schedule's `phases.metadata` field. Unlike object-level metadata, this field is declarative. Updates will clear prior values.
      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_reader :metadata
      # If specified, the invoicing for the given billing cycle iterations will be processed when the quote is accepted. Cannot be used with `effective_date`.
      sig { returns(T.nilable(Prebilling)) }
      attr_reader :prebilling
      # Determines how to handle [prorations](https://stripe.com/docs/subscriptions/billing-cycle#prorations) when the quote is accepted.
      sig { returns(String) }
      attr_reader :proration_behavior
      # Integer representing the number of trial period days before the customer is charged for the first time.
      sig { returns(T.nilable(Integer)) }
      attr_reader :trial_period_days
    end
    class SubscriptionDataOverride < Stripe::StripeObject
      class AppliesTo < Stripe::StripeObject
        # A custom string that identifies a new subscription schedule being created upon quote acceptance. All quote lines with the same `new_reference` field will be applied to the creation of a new subscription schedule.
        sig { returns(T.nilable(String)) }
        attr_reader :new_reference
        # The ID of the schedule the line applies to.
        sig { returns(T.nilable(String)) }
        attr_reader :subscription_schedule
        # Describes whether the quote line is affecting a new schedule or an existing schedule.
        sig { returns(String) }
        attr_reader :type
      end
      class BillOnAcceptance < Stripe::StripeObject
        class BillFrom < Stripe::StripeObject
          class LineStartsAt < Stripe::StripeObject
            # Unique identifier for the object.
            sig { returns(String) }
            attr_reader :id
          end
          # The materialized time.
          sig { returns(T.nilable(Integer)) }
          attr_reader :computed
          # The timestamp the given line starts at.
          sig { returns(T.nilable(LineStartsAt)) }
          attr_reader :line_starts_at
          # A precise Unix timestamp.
          sig { returns(T.nilable(Integer)) }
          attr_reader :timestamp
          # The type of method to specify the `bill_from` time.
          sig { returns(String) }
          attr_reader :type
        end
        class BillUntil < Stripe::StripeObject
          class Duration < Stripe::StripeObject
            # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
            sig { returns(String) }
            attr_reader :interval
            # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
            sig { returns(Integer) }
            attr_reader :interval_count
          end
          class LineEndsAt < Stripe::StripeObject
            # Unique identifier for the object.
            sig { returns(String) }
            attr_reader :id
          end
          # The materialized time.
          sig { returns(T.nilable(Integer)) }
          attr_reader :computed
          # Time span for the quote line starting from the `starts_at` date.
          sig { returns(T.nilable(Duration)) }
          attr_reader :duration
          # The timestamp the given line ends at.
          sig { returns(T.nilable(LineEndsAt)) }
          attr_reader :line_ends_at
          # A precise Unix timestamp.
          sig { returns(T.nilable(Integer)) }
          attr_reader :timestamp
          # The type of method to specify the `bill_until` time.
          sig { returns(String) }
          attr_reader :type
        end
        # The start of the period to bill from when the Quote is accepted.
        sig { returns(T.nilable(BillFrom)) }
        attr_reader :bill_from
        # The end of the period to bill until when the Quote is accepted.
        sig { returns(T.nilable(BillUntil)) }
        attr_reader :bill_until
      end
      # Attribute for field applies_to
      sig { returns(AppliesTo) }
      attr_reader :applies_to
      # Describes the period to bill for upon accepting the quote.
      sig { returns(T.nilable(BillOnAcceptance)) }
      attr_reader :bill_on_acceptance
      # Configures when the subscription schedule generates prorations for phase transitions. Possible values are `prorate_on_next_phase` or `prorate_up_front` with the default being `prorate_on_next_phase`. `prorate_on_next_phase` will apply phase changes and generate prorations at transition time. `prorate_up_front` will bill for all phases within the current billing cycle up front.
      sig { returns(String) }
      attr_reader :billing_behavior
      # The customer which this quote belongs to. A customer is required before finalizing the quote. Once specified, it cannot be changed.
      sig { returns(T.nilable(String)) }
      attr_reader :customer
      # The subscription's description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
      sig { returns(T.nilable(String)) }
      attr_reader :description
      # Behavior of the subscription schedule and underlying subscription when it ends.
      sig { returns(T.nilable(String)) }
      attr_reader :end_behavior
      # Determines how to handle [prorations](https://stripe.com/docs/subscriptions/billing-cycle#prorations) when the quote is accepted.
      sig { returns(T.nilable(String)) }
      attr_reader :proration_behavior
    end
    class SubscriptionSchedule < Stripe::StripeObject
      class AppliesTo < Stripe::StripeObject
        # A custom string that identifies a new subscription schedule being created upon quote acceptance. All quote lines with the same `new_reference` field will be applied to the creation of a new subscription schedule.
        sig { returns(T.nilable(String)) }
        attr_reader :new_reference
        # The ID of the schedule the line applies to.
        sig { returns(T.nilable(String)) }
        attr_reader :subscription_schedule
        # Describes whether the quote line is affecting a new schedule or an existing schedule.
        sig { returns(String) }
        attr_reader :type
      end
      # Attribute for field applies_to
      sig { returns(AppliesTo) }
      attr_reader :applies_to
      # The subscription schedule that was created or updated from this quote.
      sig { returns(String) }
      attr_reader :subscription_schedule
    end
    class TotalDetails < Stripe::StripeObject
      class Breakdown < Stripe::StripeObject
        class Discount < Stripe::StripeObject
          # The amount discounted.
          sig { returns(Integer) }
          attr_reader :amount
          # A discount represents the actual application of a [coupon](https://stripe.com/docs/api#coupons) or [promotion code](https://stripe.com/docs/api#promotion_codes).
          # It contains information about when the discount began, when it will end, and what it is applied to.
          #
          # Related guide: [Applying discounts to subscriptions](https://stripe.com/docs/billing/subscriptions/discounts)
          sig { returns(Stripe::Discount) }
          attr_reader :discount
        end
        class Tax < Stripe::StripeObject
          # Amount of tax applied for this rate.
          sig { returns(Integer) }
          attr_reader :amount
          # Tax rates can be applied to [invoices](/invoicing/taxes/tax-rates), [subscriptions](/billing/taxes/tax-rates) and [Checkout Sessions](/payments/checkout/use-manual-tax-rates) to collect tax.
          #
          # Related guide: [Tax rates](/billing/taxes/tax-rates)
          sig { returns(Stripe::TaxRate) }
          attr_reader :rate
          # The reasoning behind this tax, for example, if the product is tax exempt. The possible values for this field may be extended as new tax rules are supported.
          sig { returns(T.nilable(String)) }
          attr_reader :taxability_reason
          # The amount on which tax is calculated, in cents (or local equivalent).
          sig { returns(T.nilable(Integer)) }
          attr_reader :taxable_amount
        end
        # The aggregated discounts.
        sig { returns(T::Array[Discount]) }
        attr_reader :discounts
        # The aggregated tax amounts by rate.
        sig { returns(T::Array[Tax]) }
        attr_reader :taxes
      end
      # This is the sum of all the discounts.
      sig { returns(Integer) }
      attr_reader :amount_discount
      # This is the sum of all the shipping amounts.
      sig { returns(T.nilable(Integer)) }
      attr_reader :amount_shipping
      # This is the sum of all the tax amounts.
      sig { returns(Integer) }
      attr_reader :amount_tax
      # Attribute for field breakdown
      sig { returns(Breakdown) }
      attr_reader :breakdown
    end
    class TransferData < Stripe::StripeObject
      # The amount in cents (or local equivalent) that will be transferred to the destination account when the invoice is paid. By default, the entire amount is transferred to the destination.
      sig { returns(T.nilable(Integer)) }
      attr_reader :amount
      # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the destination account. By default, the entire amount will be transferred to the destination.
      sig { returns(T.nilable(Float)) }
      attr_reader :amount_percent
      # The account where funds from the payment will be transferred to upon payment success.
      sig { returns(T.any(String, Stripe::Account)) }
      attr_reader :destination
    end
    # Allow quote lines to have `starts_at` in the past if collection is paused between `starts_at` and now.
    sig { returns(T.nilable(T::Boolean)) }
    attr_reader :allow_backdated_lines
    # Total before any discounts or taxes are applied.
    sig { returns(Integer) }
    attr_reader :amount_subtotal
    # Total after discounts and taxes are applied.
    sig { returns(Integer) }
    attr_reader :amount_total
    # ID of the Connect Application that created the quote.
    sig { returns(T.nilable(T.any(String, Stripe::Application))) }
    attr_reader :application
    # The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. Only applicable if there are no line items with recurring prices on the quote.
    sig { returns(T.nilable(Integer)) }
    attr_reader :application_fee_amount
    # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account. Only applicable if there are line items with recurring prices on the quote.
    sig { returns(T.nilable(Float)) }
    attr_reader :application_fee_percent
    # Attribute for field automatic_tax
    sig { returns(AutomaticTax) }
    attr_reader :automatic_tax
    # Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay invoices at the end of the subscription cycle or on finalization using the default payment method attached to the subscription or customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions and mark the subscription as `active`. Defaults to `charge_automatically`.
    sig { returns(String) }
    attr_reader :collection_method
    # Attribute for field computed
    sig { returns(Computed) }
    attr_reader :computed
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    attr_reader :created
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    sig { returns(T.nilable(String)) }
    attr_reader :currency
    # The customer which this quote belongs to. A customer is required before finalizing the quote. Once specified, it cannot be changed.
    sig { returns(T.nilable(T.any(String, Stripe::Customer))) }
    attr_reader :customer
    # The account which this quote belongs to. A customer or account is required before finalizing the quote. Once specified, it cannot be changed.
    sig { returns(T.nilable(String)) }
    attr_reader :customer_account
    # The tax rates applied to this quote.
    sig { returns(T::Array[T.any(String, Stripe::TaxRate)]) }
    attr_reader :default_tax_rates
    # A description that will be displayed on the quote PDF.
    sig { returns(T.nilable(String)) }
    attr_reader :description
    # The discounts applied to this quote.
    sig { returns(T::Array[T.any(String, Stripe::Discount)]) }
    attr_reader :discounts
    # The date on which the quote will be canceled if in `open` or `draft` status. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    attr_reader :expires_at
    # A footer that will be displayed on the quote PDF.
    sig { returns(T.nilable(String)) }
    attr_reader :footer
    # Details of the quote that was cloned. See the [cloning documentation](https://stripe.com/docs/quotes/clone) for more details.
    sig { returns(T.nilable(FromQuote)) }
    attr_reader :from_quote
    # A header that will be displayed on the quote PDF.
    sig { returns(T.nilable(String)) }
    attr_reader :header
    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id
    # The invoice that was created from this quote.
    sig { returns(T.nilable(T.any(String, Stripe::Invoice))) }
    attr_reader :invoice
    # Attribute for field invoice_settings
    sig { returns(InvoiceSettings) }
    attr_reader :invoice_settings
    # A list of items the customer is being quoted for.
    sig { returns(Stripe::ListObject) }
    attr_reader :line_items
    # A list of [quote lines](https://docs.stripe.com/api/quote_lines) on the quote. These lines describe changes, in the order provided, that will be used to create new subscription schedules or update existing subscription schedules when the quote is accepted.
    sig { returns(T.nilable(T::Array[String])) }
    attr_reader :lines
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    attr_reader :livemode
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    sig { returns(T::Hash[String, String]) }
    attr_reader :metadata
    # A unique number that identifies this particular quote. This number is assigned once the quote is [finalized](https://stripe.com/docs/quotes/overview#finalize).
    sig { returns(T.nilable(String)) }
    attr_reader :number
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object
    # The account on behalf of which to charge. See the [Connect documentation](https://support.stripe.com/questions/sending-invoices-on-behalf-of-connected-accounts) for details.
    sig { returns(T.nilable(T.any(String, Stripe::Account))) }
    attr_reader :on_behalf_of
    # The status of the quote.
    sig { returns(String) }
    attr_reader :status
    # Details on when and why a quote has been marked as stale or canceled.
    sig { returns(T.nilable(StatusDetails)) }
    attr_reader :status_details
    # Attribute for field status_transitions
    sig { returns(StatusTransitions) }
    attr_reader :status_transitions
    # The subscription that was created or updated from this quote.
    sig { returns(T.nilable(T.any(String, Stripe::Subscription))) }
    attr_reader :subscription
    # Attribute for field subscription_data
    sig { returns(SubscriptionData) }
    attr_reader :subscription_data
    # List representing overrides for `subscription_data` configurations for specific subscription schedules.
    sig { returns(T.nilable(T::Array[SubscriptionDataOverride])) }
    attr_reader :subscription_data_overrides
    # The subscription schedule that was created or updated from this quote.
    sig { returns(T.nilable(T.any(String, Stripe::SubscriptionSchedule))) }
    attr_reader :subscription_schedule
    # The subscription schedules that were created or updated from this quote.
    sig { returns(T.nilable(T::Array[SubscriptionSchedule])) }
    attr_reader :subscription_schedules
    # ID of the test clock this quote belongs to.
    sig { returns(T.nilable(T.any(String, Stripe::TestHelpers::TestClock))) }
    attr_reader :test_clock
    # Attribute for field total_details
    sig { returns(TotalDetails) }
    attr_reader :total_details
    # The account (if any) the payments will be attributed to for tax reporting, and where funds from each payment will be transferred to for each of the invoices.
    sig { returns(T.nilable(TransferData)) }
    attr_reader :transfer_data
    class ListParams < Stripe::RequestParams
      # The ID of the customer whose quotes will be retrieved.
      sig { returns(T.nilable(String)) }
      attr_accessor :customer
      # The ID of the account whose quotes will be retrieved.
      sig { returns(T.nilable(String)) }
      attr_accessor :customer_account
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      sig { returns(T.nilable(String)) }
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # The subscription which the quote updates.
      sig { returns(T.nilable(String)) }
      attr_accessor :from_subscription
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :limit
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(T.nilable(String)) }
      attr_accessor :starting_after
      # The status of the quote.
      sig { returns(T.nilable(String)) }
      attr_accessor :status
      # Provides a list of quotes that are associated with the specified test clock. The response will not include quotes with test clocks if this and the customer parameter is not set.
      sig { returns(T.nilable(String)) }
      attr_accessor :test_clock
      sig {
        params(customer: T.nilable(String), customer_account: T.nilable(String), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), from_subscription: T.nilable(String), limit: T.nilable(Integer), starting_after: T.nilable(String), status: T.nilable(String), test_clock: T.nilable(String)).void
       }
      def initialize(
        customer: nil,
        customer_account: nil,
        ending_before: nil,
        expand: nil,
        from_subscription: nil,
        limit: nil,
        starting_after: nil,
        status: nil,
        test_clock: nil
      ); end
    end
    class CreateParams < Stripe::RequestParams
      class AutomaticTax < Stripe::RequestParams
        class Liability < Stripe::RequestParams
          # The connected account being referenced when `type` is `account`.
          sig { returns(T.nilable(String)) }
          attr_accessor :account
          # Type of the account referenced in the request.
          sig { returns(String) }
          attr_accessor :type
          sig { params(account: T.nilable(String), type: String).void }
          def initialize(account: nil, type: nil); end
        end
        # Controls whether Stripe will automatically compute tax on the resulting invoices or subscriptions as well as the quote itself.
        sig { returns(T::Boolean) }
        attr_accessor :enabled
        # The account that's liable for tax. If set, the business address and tax registrations required to perform the tax calculation are loaded from this account. The tax transaction is returned in the report of the connected account.
        sig { returns(T.nilable(::Stripe::Quote::CreateParams::AutomaticTax::Liability)) }
        attr_accessor :liability
        sig {
          params(enabled: T::Boolean, liability: T.nilable(::Stripe::Quote::CreateParams::AutomaticTax::Liability)).void
         }
        def initialize(enabled: nil, liability: nil); end
      end
      class Discount < Stripe::RequestParams
        class DiscountEnd < Stripe::RequestParams
          class Duration < Stripe::RequestParams
            # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
            sig { returns(String) }
            attr_accessor :interval
            # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
            sig { returns(Integer) }
            attr_accessor :interval_count
            sig { params(interval: String, interval_count: Integer).void }
            def initialize(interval: nil, interval_count: nil); end
          end
          # Time span for the redeemed discount.
          sig { returns(T.nilable(::Stripe::Quote::CreateParams::Discount::DiscountEnd::Duration)) }
          attr_accessor :duration
          # A precise Unix timestamp for the discount to end. Must be in the future.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :timestamp
          # The type of calculation made to determine when the discount ends.
          sig { returns(String) }
          attr_accessor :type
          sig {
            params(duration: T.nilable(::Stripe::Quote::CreateParams::Discount::DiscountEnd::Duration), timestamp: T.nilable(Integer), type: String).void
           }
          def initialize(duration: nil, timestamp: nil, type: nil); end
        end
        # ID of the coupon to create a new discount for.
        sig { returns(T.nilable(String)) }
        attr_accessor :coupon
        # ID of an existing discount on the object (or one of its ancestors) to reuse.
        sig { returns(T.nilable(String)) }
        attr_accessor :discount
        # Details to determine how long the discount should be applied for.
        sig { returns(T.nilable(::Stripe::Quote::CreateParams::Discount::DiscountEnd)) }
        attr_accessor :discount_end
        # ID of the promotion code to create a new discount for.
        sig { returns(T.nilable(String)) }
        attr_accessor :promotion_code
        sig {
          params(coupon: T.nilable(String), discount: T.nilable(String), discount_end: T.nilable(::Stripe::Quote::CreateParams::Discount::DiscountEnd), promotion_code: T.nilable(String)).void
         }
        def initialize(coupon: nil, discount: nil, discount_end: nil, promotion_code: nil); end
      end
      class FromQuote < Stripe::RequestParams
        # Whether this quote is a revision of the previous quote.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :is_revision
        # The `id` of the quote that will be cloned.
        sig { returns(String) }
        attr_accessor :quote
        sig { params(is_revision: T.nilable(T::Boolean), quote: String).void }
        def initialize(is_revision: nil, quote: nil); end
      end
      class InvoiceSettings < Stripe::RequestParams
        class Issuer < Stripe::RequestParams
          # The connected account being referenced when `type` is `account`.
          sig { returns(T.nilable(String)) }
          attr_accessor :account
          # Type of the account referenced in the request.
          sig { returns(String) }
          attr_accessor :type
          sig { params(account: T.nilable(String), type: String).void }
          def initialize(account: nil, type: nil); end
        end
        # Number of days within which a customer must pay the invoice generated by this quote. This value will be `null` for quotes where `collection_method=charge_automatically`.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :days_until_due
        # The connected account that issues the invoice. The invoice is presented with the branding and support information of the specified account.
        sig { returns(T.nilable(::Stripe::Quote::CreateParams::InvoiceSettings::Issuer)) }
        attr_accessor :issuer
        sig {
          params(days_until_due: T.nilable(Integer), issuer: T.nilable(::Stripe::Quote::CreateParams::InvoiceSettings::Issuer)).void
         }
        def initialize(days_until_due: nil, issuer: nil); end
      end
      class Line < Stripe::RequestParams
        class Action < Stripe::RequestParams
          class AddDiscount < Stripe::RequestParams
            class DiscountEnd < Stripe::RequestParams
              # The type of calculation made to determine when the discount ends.
              sig { returns(String) }
              attr_accessor :type
              sig { params(type: String).void }
              def initialize(type: nil); end
            end
            # The coupon code to redeem.
            sig { returns(T.nilable(String)) }
            attr_accessor :coupon
            # An ID of an existing discount for a coupon that was already redeemed.
            sig { returns(T.nilable(String)) }
            attr_accessor :discount
            # Details to determine how long the discount should be applied for.
            sig {
              returns(T.nilable(::Stripe::Quote::CreateParams::Line::Action::AddDiscount::DiscountEnd))
             }
            attr_accessor :discount_end
            # The index, starting at 0, at which to position the new discount. When not supplied, Stripe defaults to appending the discount to the end of the `discounts` array.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :index
            # The promotion code to redeem.
            sig { returns(T.nilable(String)) }
            attr_accessor :promotion_code
            sig {
              params(coupon: T.nilable(String), discount: T.nilable(String), discount_end: T.nilable(::Stripe::Quote::CreateParams::Line::Action::AddDiscount::DiscountEnd), index: T.nilable(Integer), promotion_code: T.nilable(String)).void
             }
            def initialize(
              coupon: nil,
              discount: nil,
              discount_end: nil,
              index: nil,
              promotion_code: nil
            ); end
          end
          class AddItem < Stripe::RequestParams
            class Discount < Stripe::RequestParams
              class DiscountEnd < Stripe::RequestParams
                class Duration < Stripe::RequestParams
                  # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
                  sig { returns(String) }
                  attr_accessor :interval
                  # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
                  sig { returns(Integer) }
                  attr_accessor :interval_count
                  sig { params(interval: String, interval_count: Integer).void }
                  def initialize(interval: nil, interval_count: nil); end
                end
                # Time span for the redeemed discount.
                sig {
                  returns(T.nilable(::Stripe::Quote::CreateParams::Line::Action::AddItem::Discount::DiscountEnd::Duration))
                 }
                attr_accessor :duration
                # A precise Unix timestamp for the discount to end. Must be in the future.
                sig { returns(T.nilable(Integer)) }
                attr_accessor :timestamp
                # The type of calculation made to determine when the discount ends.
                sig { returns(String) }
                attr_accessor :type
                sig {
                  params(duration: T.nilable(::Stripe::Quote::CreateParams::Line::Action::AddItem::Discount::DiscountEnd::Duration), timestamp: T.nilable(Integer), type: String).void
                 }
                def initialize(duration: nil, timestamp: nil, type: nil); end
              end
              # ID of the coupon to create a new discount for.
              sig { returns(T.nilable(String)) }
              attr_accessor :coupon
              # ID of an existing discount on the object (or one of its ancestors) to reuse.
              sig { returns(T.nilable(String)) }
              attr_accessor :discount
              # Details to determine how long the discount should be applied for.
              sig {
                returns(T.nilable(::Stripe::Quote::CreateParams::Line::Action::AddItem::Discount::DiscountEnd))
               }
              attr_accessor :discount_end
              # ID of the promotion code to create a new discount for.
              sig { returns(T.nilable(String)) }
              attr_accessor :promotion_code
              sig {
                params(coupon: T.nilable(String), discount: T.nilable(String), discount_end: T.nilable(::Stripe::Quote::CreateParams::Line::Action::AddItem::Discount::DiscountEnd), promotion_code: T.nilable(String)).void
               }
              def initialize(
                coupon: nil,
                discount: nil,
                discount_end: nil,
                promotion_code: nil
              ); end
            end
            class Trial < Stripe::RequestParams
              # List of price IDs which, if present on the subscription following a paid trial, constitute opting-in to the paid trial. Currently only supports at most 1 price ID.
              sig { returns(T.nilable(T::Array[String])) }
              attr_accessor :converts_to
              # Determines the type of trial for this item.
              sig { returns(String) }
              attr_accessor :type
              sig { params(converts_to: T.nilable(T::Array[String]), type: String).void }
              def initialize(converts_to: nil, type: nil); end
            end
            # The discounts applied to the item. Subscription item discounts are applied before subscription discounts.
            sig {
              returns(T.nilable(T::Array[::Stripe::Quote::CreateParams::Line::Action::AddItem::Discount]))
             }
            attr_accessor :discounts
            # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
            sig { returns(T.nilable(T::Hash[String, String])) }
            attr_accessor :metadata
            # The ID of the price object.
            sig { returns(String) }
            attr_accessor :price
            # Quantity for this item.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :quantity
            # The tax rates that apply to this subscription item. When set, the `default_tax_rates` on the subscription do not apply to this `subscription_item`.
            sig { returns(T.nilable(T::Array[String])) }
            attr_accessor :tax_rates
            # Options that configure the trial on the subscription item.
            sig { returns(T.nilable(::Stripe::Quote::CreateParams::Line::Action::AddItem::Trial)) }
            attr_accessor :trial
            sig {
              params(discounts: T.nilable(T::Array[::Stripe::Quote::CreateParams::Line::Action::AddItem::Discount]), metadata: T.nilable(T::Hash[String, String]), price: String, quantity: T.nilable(Integer), tax_rates: T.nilable(T::Array[String]), trial: T.nilable(::Stripe::Quote::CreateParams::Line::Action::AddItem::Trial)).void
             }
            def initialize(
              discounts: nil,
              metadata: nil,
              price: nil,
              quantity: nil,
              tax_rates: nil,
              trial: nil
            ); end
          end
          class RemoveDiscount < Stripe::RequestParams
            # The coupon code to remove from the `discounts` array.
            sig { returns(T.nilable(String)) }
            attr_accessor :coupon
            # The ID of a discount to remove from the `discounts` array.
            sig { returns(T.nilable(String)) }
            attr_accessor :discount
            # The ID of a promotion code to remove from the `discounts` array.
            sig { returns(T.nilable(String)) }
            attr_accessor :promotion_code
            sig {
              params(coupon: T.nilable(String), discount: T.nilable(String), promotion_code: T.nilable(String)).void
             }
            def initialize(coupon: nil, discount: nil, promotion_code: nil); end
          end
          class RemoveItem < Stripe::RequestParams
            # ID of a price to remove.
            sig { returns(String) }
            attr_accessor :price
            sig { params(price: String).void }
            def initialize(price: nil); end
          end
          class SetDiscount < Stripe::RequestParams
            # The coupon code to replace the `discounts` array with.
            sig { returns(T.nilable(String)) }
            attr_accessor :coupon
            # An ID of an existing discount to replace the `discounts` array with.
            sig { returns(T.nilable(String)) }
            attr_accessor :discount
            # An ID of an existing promotion code to replace the `discounts` array with.
            sig { returns(T.nilable(String)) }
            attr_accessor :promotion_code
            sig {
              params(coupon: T.nilable(String), discount: T.nilable(String), promotion_code: T.nilable(String)).void
             }
            def initialize(coupon: nil, discount: nil, promotion_code: nil); end
          end
          class SetItem < Stripe::RequestParams
            class Discount < Stripe::RequestParams
              class DiscountEnd < Stripe::RequestParams
                class Duration < Stripe::RequestParams
                  # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
                  sig { returns(String) }
                  attr_accessor :interval
                  # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
                  sig { returns(Integer) }
                  attr_accessor :interval_count
                  sig { params(interval: String, interval_count: Integer).void }
                  def initialize(interval: nil, interval_count: nil); end
                end
                # Time span for the redeemed discount.
                sig {
                  returns(T.nilable(::Stripe::Quote::CreateParams::Line::Action::SetItem::Discount::DiscountEnd::Duration))
                 }
                attr_accessor :duration
                # A precise Unix timestamp for the discount to end. Must be in the future.
                sig { returns(T.nilable(Integer)) }
                attr_accessor :timestamp
                # The type of calculation made to determine when the discount ends.
                sig { returns(String) }
                attr_accessor :type
                sig {
                  params(duration: T.nilable(::Stripe::Quote::CreateParams::Line::Action::SetItem::Discount::DiscountEnd::Duration), timestamp: T.nilable(Integer), type: String).void
                 }
                def initialize(duration: nil, timestamp: nil, type: nil); end
              end
              # ID of the coupon to create a new discount for.
              sig { returns(T.nilable(String)) }
              attr_accessor :coupon
              # ID of an existing discount on the object (or one of its ancestors) to reuse.
              sig { returns(T.nilable(String)) }
              attr_accessor :discount
              # Details to determine how long the discount should be applied for.
              sig {
                returns(T.nilable(::Stripe::Quote::CreateParams::Line::Action::SetItem::Discount::DiscountEnd))
               }
              attr_accessor :discount_end
              # ID of the promotion code to create a new discount for.
              sig { returns(T.nilable(String)) }
              attr_accessor :promotion_code
              sig {
                params(coupon: T.nilable(String), discount: T.nilable(String), discount_end: T.nilable(::Stripe::Quote::CreateParams::Line::Action::SetItem::Discount::DiscountEnd), promotion_code: T.nilable(String)).void
               }
              def initialize(
                coupon: nil,
                discount: nil,
                discount_end: nil,
                promotion_code: nil
              ); end
            end
            class Trial < Stripe::RequestParams
              # List of price IDs which, if present on the subscription following a paid trial, constitute opting-in to the paid trial. Currently only supports at most 1 price ID.
              sig { returns(T.nilable(T::Array[String])) }
              attr_accessor :converts_to
              # Determines the type of trial for this item.
              sig { returns(String) }
              attr_accessor :type
              sig { params(converts_to: T.nilable(T::Array[String]), type: String).void }
              def initialize(converts_to: nil, type: nil); end
            end
            # If an item with the `price` already exists, passing this will override the `discounts` array on the subscription item that matches that price. Otherwise, the `items` array is cleared and a single new item is added with the supplied `discounts`.
            sig {
              returns(T.nilable(T::Array[::Stripe::Quote::CreateParams::Line::Action::SetItem::Discount]))
             }
            attr_accessor :discounts
            # If an item with the `price` already exists, passing this will override the `metadata` on the subscription item that matches that price. Otherwise, the `items` array is cleared and a single new item is added with the supplied `metadata`.
            sig { returns(T.nilable(T::Hash[String, String])) }
            attr_accessor :metadata
            # The ID of the price object.
            sig { returns(String) }
            attr_accessor :price
            # If an item with the `price` already exists, passing this will override the quantity on the subscription item that matches that price. Otherwise, the `items` array is cleared and a single new item is added with the supplied `quantity`.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :quantity
            # If an item with the `price` already exists, passing this will override the `tax_rates` array on the subscription item that matches that price. Otherwise, the `items` array is cleared and a single new item is added with the supplied `tax_rates`.
            sig { returns(T.nilable(T::Array[String])) }
            attr_accessor :tax_rates
            # If an item with the `price` already exists, passing this will override the `trial` configuration on the subscription item that matches that price. Otherwise, the `items` array is cleared and a single new item is added with the supplied `trial`.
            sig { returns(T.nilable(::Stripe::Quote::CreateParams::Line::Action::SetItem::Trial)) }
            attr_accessor :trial
            sig {
              params(discounts: T.nilable(T::Array[::Stripe::Quote::CreateParams::Line::Action::SetItem::Discount]), metadata: T.nilable(T::Hash[String, String]), price: String, quantity: T.nilable(Integer), tax_rates: T.nilable(T::Array[String]), trial: T.nilable(::Stripe::Quote::CreateParams::Line::Action::SetItem::Trial)).void
             }
            def initialize(
              discounts: nil,
              metadata: nil,
              price: nil,
              quantity: nil,
              tax_rates: nil,
              trial: nil
            ); end
          end
          # Details for the `add_discount` type.
          sig { returns(T.nilable(::Stripe::Quote::CreateParams::Line::Action::AddDiscount)) }
          attr_accessor :add_discount
          # Details for the `add_item` type.
          sig { returns(T.nilable(::Stripe::Quote::CreateParams::Line::Action::AddItem)) }
          attr_accessor :add_item
          # Details for the `add_metadata` type: specify a hash of key-value pairs.
          sig { returns(T.nilable(T::Hash[String, String])) }
          attr_accessor :add_metadata
          # Details for the `remove_discount` type.
          sig { returns(T.nilable(::Stripe::Quote::CreateParams::Line::Action::RemoveDiscount)) }
          attr_accessor :remove_discount
          # Details for the `remove_item` type.
          sig { returns(T.nilable(::Stripe::Quote::CreateParams::Line::Action::RemoveItem)) }
          attr_accessor :remove_item
          # Details for the `remove_metadata` type: specify an array of metadata keys.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :remove_metadata
          # Details for the `set_discounts` type.
          sig {
            returns(T.nilable(T::Array[::Stripe::Quote::CreateParams::Line::Action::SetDiscount]))
           }
          attr_accessor :set_discounts
          # Details for the `set_items` type.
          sig { returns(T.nilable(T::Array[::Stripe::Quote::CreateParams::Line::Action::SetItem])) }
          attr_accessor :set_items
          # Details for the `set_metadata` type: specify an array of key-value pairs.
          sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
          attr_accessor :set_metadata
          # The type of action the quote line performs.
          sig { returns(String) }
          attr_accessor :type
          sig {
            params(add_discount: T.nilable(::Stripe::Quote::CreateParams::Line::Action::AddDiscount), add_item: T.nilable(::Stripe::Quote::CreateParams::Line::Action::AddItem), add_metadata: T.nilable(T::Hash[String, String]), remove_discount: T.nilable(::Stripe::Quote::CreateParams::Line::Action::RemoveDiscount), remove_item: T.nilable(::Stripe::Quote::CreateParams::Line::Action::RemoveItem), remove_metadata: T.nilable(T::Array[String]), set_discounts: T.nilable(T::Array[::Stripe::Quote::CreateParams::Line::Action::SetDiscount]), set_items: T.nilable(T::Array[::Stripe::Quote::CreateParams::Line::Action::SetItem]), set_metadata: T.nilable(T.any(String, T::Hash[String, String])), type: String).void
           }
          def initialize(
            add_discount: nil,
            add_item: nil,
            add_metadata: nil,
            remove_discount: nil,
            remove_item: nil,
            remove_metadata: nil,
            set_discounts: nil,
            set_items: nil,
            set_metadata: nil,
            type: nil
          ); end
        end
        class AppliesTo < Stripe::RequestParams
          # A custom string that identifies a new subscription schedule being created upon quote acceptance. All quote lines with the same `new_reference` field will be applied to the creation of a new subscription schedule.
          sig { returns(T.nilable(String)) }
          attr_accessor :new_reference
          # The ID of the schedule the line applies to.
          sig { returns(T.nilable(String)) }
          attr_accessor :subscription_schedule
          # Describes whether the quote line is affecting a new schedule or an existing schedule.
          sig { returns(String) }
          attr_accessor :type
          sig {
            params(new_reference: T.nilable(String), subscription_schedule: T.nilable(String), type: String).void
           }
          def initialize(new_reference: nil, subscription_schedule: nil, type: nil); end
        end
        class CancelSubscriptionSchedule < Stripe::RequestParams
          # Timestamp helper to cancel the underlying schedule on the accompanying line's start date. Must be set to `line_starts_at`.
          sig { returns(String) }
          attr_accessor :cancel_at
          # If the subscription schedule is `active`, indicates if a final invoice will be generated that contains any un-invoiced metered usage and new/pending proration invoice items. Boolean that defaults to `true`.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :invoice_now
          # If the subscription schedule is `active`, indicates if the cancellation should be prorated. Boolean that defaults to `true`.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :prorate
          sig {
            params(cancel_at: String, invoice_now: T.nilable(T::Boolean), prorate: T.nilable(T::Boolean)).void
           }
          def initialize(cancel_at: nil, invoice_now: nil, prorate: nil); end
        end
        class EndsAt < Stripe::RequestParams
          class DiscountEnd < Stripe::RequestParams
            # The ID of a specific discount.
            sig { returns(String) }
            attr_accessor :discount
            sig { params(discount: String).void }
            def initialize(discount: nil); end
          end
          class Duration < Stripe::RequestParams
            # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
            sig { returns(String) }
            attr_accessor :interval
            # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
            sig { returns(Integer) }
            attr_accessor :interval_count
            sig { params(interval: String, interval_count: Integer).void }
            def initialize(interval: nil, interval_count: nil); end
          end
          # Use the `end` time of a given discount.
          sig { returns(T.nilable(::Stripe::Quote::CreateParams::Line::EndsAt::DiscountEnd)) }
          attr_accessor :discount_end
          # Time span for the quote line starting from the `starts_at` date.
          sig { returns(T.nilable(::Stripe::Quote::CreateParams::Line::EndsAt::Duration)) }
          attr_accessor :duration
          # A precise Unix timestamp.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :timestamp
          # Select a way to pass in `ends_at`.
          sig { returns(String) }
          attr_accessor :type
          sig {
            params(discount_end: T.nilable(::Stripe::Quote::CreateParams::Line::EndsAt::DiscountEnd), duration: T.nilable(::Stripe::Quote::CreateParams::Line::EndsAt::Duration), timestamp: T.nilable(Integer), type: String).void
           }
          def initialize(discount_end: nil, duration: nil, timestamp: nil, type: nil); end
        end
        class SetPauseCollection < Stripe::RequestParams
          class Set < Stripe::RequestParams
            # The payment collection behavior for this subscription while paused. One of `keep_as_draft`, `mark_uncollectible`, or `void`.
            sig { returns(String) }
            attr_accessor :behavior
            sig { params(behavior: String).void }
            def initialize(behavior: nil); end
          end
          # Details of the pause_collection behavior to apply to the amendment.
          sig { returns(T.nilable(::Stripe::Quote::CreateParams::Line::SetPauseCollection::Set)) }
          attr_accessor :set
          # Determines the type of the pause_collection amendment.
          sig { returns(String) }
          attr_accessor :type
          sig {
            params(set: T.nilable(::Stripe::Quote::CreateParams::Line::SetPauseCollection::Set), type: String).void
           }
          def initialize(set: nil, type: nil); end
        end
        class StartsAt < Stripe::RequestParams
          class DiscountEnd < Stripe::RequestParams
            # The ID of a specific discount.
            sig { returns(String) }
            attr_accessor :discount
            sig { params(discount: String).void }
            def initialize(discount: nil); end
          end
          class LineEndsAt < Stripe::RequestParams
            # The position of the previous quote line in the `lines` array after which this line should begin. Indexes start from 0 and must be less than the index of the current line in the array.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :index
            sig { params(index: T.nilable(Integer)).void }
            def initialize(index: nil); end
          end
          # Use the `end` time of a given discount.
          sig { returns(T.nilable(::Stripe::Quote::CreateParams::Line::StartsAt::DiscountEnd)) }
          attr_accessor :discount_end
          # The timestamp the given line ends at.
          sig { returns(T.nilable(::Stripe::Quote::CreateParams::Line::StartsAt::LineEndsAt)) }
          attr_accessor :line_ends_at
          # A precise Unix timestamp.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :timestamp
          # Select a way to pass in `starts_at`.
          sig { returns(String) }
          attr_accessor :type
          sig {
            params(discount_end: T.nilable(::Stripe::Quote::CreateParams::Line::StartsAt::DiscountEnd), line_ends_at: T.nilable(::Stripe::Quote::CreateParams::Line::StartsAt::LineEndsAt), timestamp: T.nilable(Integer), type: String).void
           }
          def initialize(discount_end: nil, line_ends_at: nil, timestamp: nil, type: nil); end
        end
        class TrialSettings < Stripe::RequestParams
          class EndBehavior < Stripe::RequestParams
            # Configure how an opt-in following a paid trial is billed when using `billing_behavior: prorate_up_front`.
            sig { returns(T.nilable(String)) }
            attr_accessor :prorate_up_front
            sig { params(prorate_up_front: T.nilable(String)).void }
            def initialize(prorate_up_front: nil); end
          end
          # Defines how the subscription should behave when a trial ends.
          sig {
            returns(T.nilable(::Stripe::Quote::CreateParams::Line::TrialSettings::EndBehavior))
           }
          attr_accessor :end_behavior
          sig {
            params(end_behavior: T.nilable(::Stripe::Quote::CreateParams::Line::TrialSettings::EndBehavior)).void
           }
          def initialize(end_behavior: nil); end
        end
        # An array of operations the quote line performs.
        sig { returns(T.nilable(T::Array[::Stripe::Quote::CreateParams::Line::Action])) }
        attr_accessor :actions
        # Details to identify the subscription schedule the quote line applies to.
        sig { returns(T.nilable(::Stripe::Quote::CreateParams::Line::AppliesTo)) }
        attr_accessor :applies_to
        # For point-in-time quote lines (having no `ends_at` timestamp), this attribute lets you set or remove whether the subscription's billing cycle anchor is reset at the Quote Line `starts_at` timestamp.For time-span based quote lines (having both `starts_at` and `ends_at`), the only valid value is `automatic`, which removes any previously configured billing cycle anchor resets during the window of time spanning the quote line.
        sig { returns(T.nilable(String)) }
        attr_accessor :billing_cycle_anchor
        # A point-in-time operation that cancels an existing subscription schedule at the line's starts_at timestamp. Currently only compatible with `quote_acceptance_date` for `starts_at`. When using cancel_subscription_schedule, the subscription schedule on the quote remains unalterable, except for modifications to the metadata, collection_method or invoice_settings.
        sig { returns(T.nilable(::Stripe::Quote::CreateParams::Line::CancelSubscriptionSchedule)) }
        attr_accessor :cancel_subscription_schedule
        # Details to identify the end of the time range modified by the proposed change. If not supplied, the quote line is considered a point-in-time operation that only affects the exact timestamp at `starts_at`, and a restricted set of attributes is supported on the quote line.
        sig { returns(T.nilable(::Stripe::Quote::CreateParams::Line::EndsAt)) }
        attr_accessor :ends_at
        # Changes to how Stripe handles prorations during the quote line's time span. Affects if and how prorations are created when a future phase starts.
        sig { returns(T.nilable(String)) }
        attr_accessor :proration_behavior
        # Defines how to pause collection for the underlying subscription throughout the duration of the amendment.
        sig { returns(T.nilable(::Stripe::Quote::CreateParams::Line::SetPauseCollection)) }
        attr_accessor :set_pause_collection
        # Timestamp helper to end the underlying schedule early, based on the acompanying line's start or end date.
        sig { returns(T.nilable(String)) }
        attr_accessor :set_schedule_end
        # Details to identify the earliest timestamp where the proposed change should take effect.
        sig { returns(T.nilable(::Stripe::Quote::CreateParams::Line::StartsAt)) }
        attr_accessor :starts_at
        # Settings related to subscription trials.
        sig { returns(T.nilable(::Stripe::Quote::CreateParams::Line::TrialSettings)) }
        attr_accessor :trial_settings
        sig {
          params(actions: T.nilable(T::Array[::Stripe::Quote::CreateParams::Line::Action]), applies_to: T.nilable(::Stripe::Quote::CreateParams::Line::AppliesTo), billing_cycle_anchor: T.nilable(String), cancel_subscription_schedule: T.nilable(::Stripe::Quote::CreateParams::Line::CancelSubscriptionSchedule), ends_at: T.nilable(::Stripe::Quote::CreateParams::Line::EndsAt), proration_behavior: T.nilable(String), set_pause_collection: T.nilable(::Stripe::Quote::CreateParams::Line::SetPauseCollection), set_schedule_end: T.nilable(String), starts_at: T.nilable(::Stripe::Quote::CreateParams::Line::StartsAt), trial_settings: T.nilable(::Stripe::Quote::CreateParams::Line::TrialSettings)).void
         }
        def initialize(
          actions: nil,
          applies_to: nil,
          billing_cycle_anchor: nil,
          cancel_subscription_schedule: nil,
          ends_at: nil,
          proration_behavior: nil,
          set_pause_collection: nil,
          set_schedule_end: nil,
          starts_at: nil,
          trial_settings: nil
        ); end
      end
      class LineItem < Stripe::RequestParams
        class Discount < Stripe::RequestParams
          class DiscountEnd < Stripe::RequestParams
            class Duration < Stripe::RequestParams
              # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
              sig { returns(String) }
              attr_accessor :interval
              # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
              sig { returns(Integer) }
              attr_accessor :interval_count
              sig { params(interval: String, interval_count: Integer).void }
              def initialize(interval: nil, interval_count: nil); end
            end
            # Time span for the redeemed discount.
            sig {
              returns(T.nilable(::Stripe::Quote::CreateParams::LineItem::Discount::DiscountEnd::Duration))
             }
            attr_accessor :duration
            # A precise Unix timestamp for the discount to end. Must be in the future.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :timestamp
            # The type of calculation made to determine when the discount ends.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(duration: T.nilable(::Stripe::Quote::CreateParams::LineItem::Discount::DiscountEnd::Duration), timestamp: T.nilable(Integer), type: String).void
             }
            def initialize(duration: nil, timestamp: nil, type: nil); end
          end
          # ID of the coupon to create a new discount for.
          sig { returns(T.nilable(String)) }
          attr_accessor :coupon
          # ID of an existing discount on the object (or one of its ancestors) to reuse.
          sig { returns(T.nilable(String)) }
          attr_accessor :discount
          # Details to determine how long the discount should be applied for.
          sig { returns(T.nilable(::Stripe::Quote::CreateParams::LineItem::Discount::DiscountEnd)) }
          attr_accessor :discount_end
          # ID of the promotion code to create a new discount for.
          sig { returns(T.nilable(String)) }
          attr_accessor :promotion_code
          sig {
            params(coupon: T.nilable(String), discount: T.nilable(String), discount_end: T.nilable(::Stripe::Quote::CreateParams::LineItem::Discount::DiscountEnd), promotion_code: T.nilable(String)).void
           }
          def initialize(coupon: nil, discount: nil, discount_end: nil, promotion_code: nil); end
        end
        class PriceData < Stripe::RequestParams
          class Recurring < Stripe::RequestParams
            # Specifies billing frequency. Either `day`, `week`, `month` or `year`.
            sig { returns(String) }
            attr_accessor :interval
            # The number of intervals between subscription billings. For example, `interval=month` and `interval_count=3` bills every 3 months. Maximum of three years interval allowed (3 years, 36 months, or 156 weeks).
            sig { returns(T.nilable(Integer)) }
            attr_accessor :interval_count
            sig { params(interval: String, interval_count: T.nilable(Integer)).void }
            def initialize(interval: nil, interval_count: nil); end
          end
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(String) }
          attr_accessor :currency
          # The ID of the [Product](https://docs.stripe.com/api/products) that this [Price](https://docs.stripe.com/api/prices) will belong to.
          sig { returns(String) }
          attr_accessor :product
          # The recurring components of a price such as `interval` and `interval_count`.
          sig { returns(T.nilable(::Stripe::Quote::CreateParams::LineItem::PriceData::Recurring)) }
          attr_accessor :recurring
          # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
          sig { returns(T.nilable(String)) }
          attr_accessor :tax_behavior
          # A positive integer in cents (or local equivalent) (or 0 for a free price) representing how much to charge.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :unit_amount
          # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
          sig { returns(T.nilable(String)) }
          attr_accessor :unit_amount_decimal
          sig {
            params(currency: String, product: String, recurring: T.nilable(::Stripe::Quote::CreateParams::LineItem::PriceData::Recurring), tax_behavior: T.nilable(String), unit_amount: T.nilable(Integer), unit_amount_decimal: T.nilable(String)).void
           }
          def initialize(
            currency: nil,
            product: nil,
            recurring: nil,
            tax_behavior: nil,
            unit_amount: nil,
            unit_amount_decimal: nil
          ); end
        end
        # The discounts applied to this line item.
        sig {
          returns(T.nilable(T.any(String, T::Array[::Stripe::Quote::CreateParams::LineItem::Discount])))
         }
        attr_accessor :discounts
        # The ID of the price object. One of `price` or `price_data` is required.
        sig { returns(T.nilable(String)) }
        attr_accessor :price
        # Data used to generate a new [Price](https://stripe.com/docs/api/prices) object inline. One of `price` or `price_data` is required.
        sig { returns(T.nilable(::Stripe::Quote::CreateParams::LineItem::PriceData)) }
        attr_accessor :price_data
        # The quantity of the line item.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :quantity
        # The tax rates which apply to the line item. When set, the `default_tax_rates` on the quote do not apply to this line item.
        sig { returns(T.nilable(T.any(String, T::Array[String]))) }
        attr_accessor :tax_rates
        sig {
          params(discounts: T.nilable(T.any(String, T::Array[::Stripe::Quote::CreateParams::LineItem::Discount])), price: T.nilable(String), price_data: T.nilable(::Stripe::Quote::CreateParams::LineItem::PriceData), quantity: T.nilable(Integer), tax_rates: T.nilable(T.any(String, T::Array[String]))).void
         }
        def initialize(
          discounts: nil,
          price: nil,
          price_data: nil,
          quantity: nil,
          tax_rates: nil
        ); end
      end
      class SubscriptionData < Stripe::RequestParams
        class BillOnAcceptance < Stripe::RequestParams
          class BillFrom < Stripe::RequestParams
            class LineStartsAt < Stripe::RequestParams
              # The ID of a quote line.
              sig { returns(T.nilable(String)) }
              attr_accessor :id
              # The position of the previous quote line in the `lines` array after which this line should begin. Indexes start from 0 and must be less than the index of the current line in the array.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :index
              sig { params(id: T.nilable(String), index: T.nilable(Integer)).void }
              def initialize(id: nil, index: nil); end
            end
            # Details of a Quote line to start the bill period from.
            sig {
              returns(T.nilable(::Stripe::Quote::CreateParams::SubscriptionData::BillOnAcceptance::BillFrom::LineStartsAt))
             }
            attr_accessor :line_starts_at
            # A precise Unix timestamp.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :timestamp
            # The type of method to specify the `bill_from` time.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(line_starts_at: T.nilable(::Stripe::Quote::CreateParams::SubscriptionData::BillOnAcceptance::BillFrom::LineStartsAt), timestamp: T.nilable(Integer), type: String).void
             }
            def initialize(line_starts_at: nil, timestamp: nil, type: nil); end
          end
          class BillUntil < Stripe::RequestParams
            class Duration < Stripe::RequestParams
              # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
              sig { returns(String) }
              attr_accessor :interval
              # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
              sig { returns(Integer) }
              attr_accessor :interval_count
              sig { params(interval: String, interval_count: Integer).void }
              def initialize(interval: nil, interval_count: nil); end
            end
            class LineEndsAt < Stripe::RequestParams
              # The ID of a quote line.
              sig { returns(T.nilable(String)) }
              attr_accessor :id
              # The position of the previous quote line in the `lines` array after which this line should begin. Indexes start from 0 and must be less than the index of the current line in the array.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :index
              sig { params(id: T.nilable(String), index: T.nilable(Integer)).void }
              def initialize(id: nil, index: nil); end
            end
            # Details of the duration over which to bill.
            sig {
              returns(T.nilable(::Stripe::Quote::CreateParams::SubscriptionData::BillOnAcceptance::BillUntil::Duration))
             }
            attr_accessor :duration
            # Details of a Quote line item from which to bill until.
            sig {
              returns(T.nilable(::Stripe::Quote::CreateParams::SubscriptionData::BillOnAcceptance::BillUntil::LineEndsAt))
             }
            attr_accessor :line_ends_at
            # A precise Unix timestamp.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :timestamp
            # The type of method to specify the `bill_until` time.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(duration: T.nilable(::Stripe::Quote::CreateParams::SubscriptionData::BillOnAcceptance::BillUntil::Duration), line_ends_at: T.nilable(::Stripe::Quote::CreateParams::SubscriptionData::BillOnAcceptance::BillUntil::LineEndsAt), timestamp: T.nilable(Integer), type: String).void
             }
            def initialize(duration: nil, line_ends_at: nil, timestamp: nil, type: nil); end
          end
          # The start of the period to bill from when the Quote is accepted.
          sig {
            returns(T.nilable(::Stripe::Quote::CreateParams::SubscriptionData::BillOnAcceptance::BillFrom))
           }
          attr_accessor :bill_from
          # The end of the period to bill until when the Quote is accepted.
          sig {
            returns(T.nilable(::Stripe::Quote::CreateParams::SubscriptionData::BillOnAcceptance::BillUntil))
           }
          attr_accessor :bill_until
          sig {
            params(bill_from: T.nilable(::Stripe::Quote::CreateParams::SubscriptionData::BillOnAcceptance::BillFrom), bill_until: T.nilable(::Stripe::Quote::CreateParams::SubscriptionData::BillOnAcceptance::BillUntil)).void
           }
          def initialize(bill_from: nil, bill_until: nil); end
        end
        class BillingMode < Stripe::RequestParams
          # Controls the calculation and orchestration of prorations and invoices for subscriptions.
          sig { returns(String) }
          attr_accessor :type
          sig { params(type: String).void }
          def initialize(type: nil); end
        end
        class Prebilling < Stripe::RequestParams
          # This is used to determine the number of billing cycles to prebill.
          sig { returns(Integer) }
          attr_accessor :iterations
          sig { params(iterations: Integer).void }
          def initialize(iterations: nil); end
        end
        # Describes the period to bill for upon accepting the quote.
        sig {
          returns(T.nilable(::Stripe::Quote::CreateParams::SubscriptionData::BillOnAcceptance))
         }
        attr_accessor :bill_on_acceptance
        # Configures when the subscription schedule generates prorations for phase transitions. Possible values are `prorate_on_next_phase` or `prorate_up_front` with the default being `prorate_on_next_phase`. `prorate_on_next_phase` will apply phase changes and generate prorations at transition time. `prorate_up_front` will bill for all phases within the current billing cycle up front.
        sig { returns(T.nilable(String)) }
        attr_accessor :billing_behavior
        # When specified as `reset`, the subscription will always start a new billing period when the quote is accepted.
        sig { returns(T.nilable(String)) }
        attr_accessor :billing_cycle_anchor
        # Controls how prorations and invoices for subscriptions are calculated and orchestrated.
        sig { returns(T.nilable(::Stripe::Quote::CreateParams::SubscriptionData::BillingMode)) }
        attr_accessor :billing_mode
        # The subscription's description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
        sig { returns(T.nilable(String)) }
        attr_accessor :description
        # When creating a new subscription, the date of which the subscription schedule will start after the quote is accepted. When updating a subscription, the date of which the subscription will be updated using a subscription schedule. The special value `current_period_end` can be provided to update a subscription at the end of its current period. The `effective_date` is ignored if it is in the past when the quote is accepted.
        sig { returns(T.nilable(T.any(String, T.any(String, Integer)))) }
        attr_accessor :effective_date
        # Behavior of the subscription schedule and underlying subscription when it ends.
        sig { returns(T.nilable(String)) }
        attr_accessor :end_behavior
        # The id of a subscription that the quote will update. By default, the quote will contain the state of the subscription (such as line items, collection method and billing thresholds) unless overridden.
        sig { returns(T.nilable(String)) }
        attr_accessor :from_subscription
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that will set metadata on the subscription or subscription schedule when the quote is accepted. If a recurring price is included in `line_items`, this field will be passed to the resulting subscription's `metadata` field. If `subscription_data.effective_date` is used, this field will be passed to the resulting subscription schedule's `phases.metadata` field. Unlike object-level metadata, this field is declarative. Updates will clear prior values.
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_accessor :metadata
        # If specified, the invoicing for the given billing cycle iterations will be processed when the quote is accepted. Cannot be used with `effective_date`.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::Quote::CreateParams::SubscriptionData::Prebilling)))
         }
        attr_accessor :prebilling
        # Determines how to handle [prorations](https://stripe.com/docs/subscriptions/billing-cycle#prorations). When creating a subscription, valid values are `create_prorations` or `none`.
        #
        # When updating a subscription, valid values are `create_prorations`, `none`, or `always_invoice`.
        #
        # Passing `create_prorations` will cause proration invoice items to be created when applicable. These proration items will only be invoiced immediately under [certain conditions](https://stripe.com/docs/subscriptions/upgrading-downgrading#immediate-payment). In order to always invoice immediately for prorations, pass `always_invoice`.
        #
        # Prorations can be disabled by passing `none`.
        sig { returns(T.nilable(String)) }
        attr_accessor :proration_behavior
        # Integer representing the number of trial period days before the customer is charged for the first time.
        sig { returns(T.nilable(T.any(String, Integer))) }
        attr_accessor :trial_period_days
        sig {
          params(bill_on_acceptance: T.nilable(::Stripe::Quote::CreateParams::SubscriptionData::BillOnAcceptance), billing_behavior: T.nilable(String), billing_cycle_anchor: T.nilable(String), billing_mode: T.nilable(::Stripe::Quote::CreateParams::SubscriptionData::BillingMode), description: T.nilable(String), effective_date: T.nilable(T.any(String, T.any(String, Integer))), end_behavior: T.nilable(String), from_subscription: T.nilable(String), metadata: T.nilable(T::Hash[String, String]), prebilling: T.nilable(T.any(String, ::Stripe::Quote::CreateParams::SubscriptionData::Prebilling)), proration_behavior: T.nilable(String), trial_period_days: T.nilable(T.any(String, Integer))).void
         }
        def initialize(
          bill_on_acceptance: nil,
          billing_behavior: nil,
          billing_cycle_anchor: nil,
          billing_mode: nil,
          description: nil,
          effective_date: nil,
          end_behavior: nil,
          from_subscription: nil,
          metadata: nil,
          prebilling: nil,
          proration_behavior: nil,
          trial_period_days: nil
        ); end
      end
      class SubscriptionDataOverride < Stripe::RequestParams
        class AppliesTo < Stripe::RequestParams
          # A custom string that identifies a new subscription schedule being created upon quote acceptance. All quote lines with the same `new_reference` field will be applied to the creation of a new subscription schedule.
          sig { returns(T.nilable(String)) }
          attr_accessor :new_reference
          # The ID of the schedule the line applies to.
          sig { returns(T.nilable(String)) }
          attr_accessor :subscription_schedule
          # Describes whether the quote line is affecting a new schedule or an existing schedule.
          sig { returns(String) }
          attr_accessor :type
          sig {
            params(new_reference: T.nilable(String), subscription_schedule: T.nilable(String), type: String).void
           }
          def initialize(new_reference: nil, subscription_schedule: nil, type: nil); end
        end
        class BillOnAcceptance < Stripe::RequestParams
          class BillFrom < Stripe::RequestParams
            class LineStartsAt < Stripe::RequestParams
              # The ID of a quote line.
              sig { returns(T.nilable(String)) }
              attr_accessor :id
              # The position of the previous quote line in the `lines` array after which this line should begin. Indexes start from 0 and must be less than the index of the current line in the array.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :index
              sig { params(id: T.nilable(String), index: T.nilable(Integer)).void }
              def initialize(id: nil, index: nil); end
            end
            # Details of a Quote line to start the bill period from.
            sig {
              returns(T.nilable(::Stripe::Quote::CreateParams::SubscriptionDataOverride::BillOnAcceptance::BillFrom::LineStartsAt))
             }
            attr_accessor :line_starts_at
            # A precise Unix timestamp.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :timestamp
            # The type of method to specify the `bill_from` time.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(line_starts_at: T.nilable(::Stripe::Quote::CreateParams::SubscriptionDataOverride::BillOnAcceptance::BillFrom::LineStartsAt), timestamp: T.nilable(Integer), type: String).void
             }
            def initialize(line_starts_at: nil, timestamp: nil, type: nil); end
          end
          class BillUntil < Stripe::RequestParams
            class Duration < Stripe::RequestParams
              # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
              sig { returns(String) }
              attr_accessor :interval
              # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
              sig { returns(Integer) }
              attr_accessor :interval_count
              sig { params(interval: String, interval_count: Integer).void }
              def initialize(interval: nil, interval_count: nil); end
            end
            class LineEndsAt < Stripe::RequestParams
              # The ID of a quote line.
              sig { returns(T.nilable(String)) }
              attr_accessor :id
              # The position of the previous quote line in the `lines` array after which this line should begin. Indexes start from 0 and must be less than the index of the current line in the array.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :index
              sig { params(id: T.nilable(String), index: T.nilable(Integer)).void }
              def initialize(id: nil, index: nil); end
            end
            # Details of the duration over which to bill.
            sig {
              returns(T.nilable(::Stripe::Quote::CreateParams::SubscriptionDataOverride::BillOnAcceptance::BillUntil::Duration))
             }
            attr_accessor :duration
            # Details of a Quote line item from which to bill until.
            sig {
              returns(T.nilable(::Stripe::Quote::CreateParams::SubscriptionDataOverride::BillOnAcceptance::BillUntil::LineEndsAt))
             }
            attr_accessor :line_ends_at
            # A precise Unix timestamp.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :timestamp
            # The type of method to specify the `bill_until` time.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(duration: T.nilable(::Stripe::Quote::CreateParams::SubscriptionDataOverride::BillOnAcceptance::BillUntil::Duration), line_ends_at: T.nilable(::Stripe::Quote::CreateParams::SubscriptionDataOverride::BillOnAcceptance::BillUntil::LineEndsAt), timestamp: T.nilable(Integer), type: String).void
             }
            def initialize(duration: nil, line_ends_at: nil, timestamp: nil, type: nil); end
          end
          # The start of the period to bill from when the Quote is accepted.
          sig {
            returns(T.nilable(::Stripe::Quote::CreateParams::SubscriptionDataOverride::BillOnAcceptance::BillFrom))
           }
          attr_accessor :bill_from
          # The end of the period to bill until when the Quote is accepted.
          sig {
            returns(T.nilable(::Stripe::Quote::CreateParams::SubscriptionDataOverride::BillOnAcceptance::BillUntil))
           }
          attr_accessor :bill_until
          sig {
            params(bill_from: T.nilable(::Stripe::Quote::CreateParams::SubscriptionDataOverride::BillOnAcceptance::BillFrom), bill_until: T.nilable(::Stripe::Quote::CreateParams::SubscriptionDataOverride::BillOnAcceptance::BillUntil)).void
           }
          def initialize(bill_from: nil, bill_until: nil); end
        end
        # Whether the override applies to an existing Subscription Schedule or a new Subscription Schedule.
        sig { returns(::Stripe::Quote::CreateParams::SubscriptionDataOverride::AppliesTo) }
        attr_accessor :applies_to
        # Describes the period to bill for upon accepting the quote.
        sig {
          returns(T.nilable(::Stripe::Quote::CreateParams::SubscriptionDataOverride::BillOnAcceptance))
         }
        attr_accessor :bill_on_acceptance
        # Configures when the subscription schedule generates prorations for phase transitions. Possible values are `prorate_on_next_phase` or `prorate_up_front` with the default being `prorate_on_next_phase`. `prorate_on_next_phase` will apply phase changes and generate prorations at transition time. `prorate_up_front` will bill for all phases within the current billing cycle up front.
        sig { returns(T.nilable(String)) }
        attr_accessor :billing_behavior
        # The customer the Subscription Data override applies to. This is only relevant when `applies_to.type=new_reference`.
        sig { returns(T.nilable(String)) }
        attr_accessor :customer
        # The subscription's description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
        sig { returns(T.nilable(String)) }
        attr_accessor :description
        # Behavior of the subscription schedule and underlying subscription when it ends.
        sig { returns(T.nilable(String)) }
        attr_accessor :end_behavior
        # Determines how to handle [prorations](https://stripe.com/docs/subscriptions/billing-cycle#prorations). When creating a subscription, valid values are `create_prorations` or `none`.
        #
        # When updating a subscription, valid values are `create_prorations`, `none`, or `always_invoice`.
        #
        # Passing `create_prorations` will cause proration invoice items to be created when applicable. These proration items will only be invoiced immediately under [certain conditions](https://stripe.com/docs/subscriptions/upgrading-downgrading#immediate-payment). In order to always invoice immediately for prorations, pass `always_invoice`.
        #
        # Prorations can be disabled by passing `none`.
        sig { returns(T.nilable(String)) }
        attr_accessor :proration_behavior
        sig {
          params(applies_to: ::Stripe::Quote::CreateParams::SubscriptionDataOverride::AppliesTo, bill_on_acceptance: T.nilable(::Stripe::Quote::CreateParams::SubscriptionDataOverride::BillOnAcceptance), billing_behavior: T.nilable(String), customer: T.nilable(String), description: T.nilable(String), end_behavior: T.nilable(String), proration_behavior: T.nilable(String)).void
         }
        def initialize(
          applies_to: nil,
          bill_on_acceptance: nil,
          billing_behavior: nil,
          customer: nil,
          description: nil,
          end_behavior: nil,
          proration_behavior: nil
        ); end
      end
      class TransferData < Stripe::RequestParams
        # The amount that will be transferred automatically when the invoice is paid. If no amount is set, the full amount is transferred. There cannot be any line items with recurring prices when using this field.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :amount
        # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the destination account. By default, the entire amount is transferred to the destination. There must be at least 1 line item with a recurring price to use this field.
        sig { returns(T.nilable(Float)) }
        attr_accessor :amount_percent
        # ID of an existing, connected Stripe account.
        sig { returns(String) }
        attr_accessor :destination
        sig {
          params(amount: T.nilable(Integer), amount_percent: T.nilable(Float), destination: String).void
         }
        def initialize(amount: nil, amount_percent: nil, destination: nil); end
      end
      # Set to true to allow quote lines to have `starts_at` in the past if collection is paused between `starts_at` and now.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :allow_backdated_lines
      # The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. There cannot be any line items with recurring prices when using this field.
      sig { returns(T.nilable(T.any(String, Integer))) }
      attr_accessor :application_fee_amount
      # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account. There must be at least 1 line item with a recurring price to use this field.
      sig { returns(T.nilable(T.any(String, Float))) }
      attr_accessor :application_fee_percent
      # Settings for automatic tax lookup for this quote and resulting invoices and subscriptions.
      sig { returns(T.nilable(::Stripe::Quote::CreateParams::AutomaticTax)) }
      attr_accessor :automatic_tax
      # Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay invoices at the end of the subscription cycle or at invoice finalization using the default payment method attached to the subscription or customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions and mark the subscription as `active`. Defaults to `charge_automatically`.
      sig { returns(T.nilable(String)) }
      attr_accessor :collection_method
      # The customer for which this quote belongs to. A customer is required before finalizing the quote. Once specified, it cannot be changed.
      sig { returns(T.nilable(String)) }
      attr_accessor :customer
      # The account for which this quote belongs to. A customer or account is required before finalizing the quote. Once specified, it cannot be changed.
      sig { returns(T.nilable(String)) }
      attr_accessor :customer_account
      # The tax rates that will apply to any line item that does not have `tax_rates` set.
      sig { returns(T.nilable(T.any(String, T::Array[String]))) }
      attr_accessor :default_tax_rates
      # A description that will be displayed on the quote PDF. If no value is passed, the default description configured in your [quote template settings](https://dashboard.stripe.com/settings/billing/quote) will be used.
      sig { returns(T.nilable(String)) }
      attr_accessor :description
      # The discounts applied to the quote.
      sig { returns(T.nilable(T.any(String, T::Array[::Stripe::Quote::CreateParams::Discount]))) }
      attr_accessor :discounts
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # A future timestamp on which the quote will be canceled if in `open` or `draft` status. Measured in seconds since the Unix epoch. If no value is passed, the default expiration date configured in your [quote template settings](https://dashboard.stripe.com/settings/billing/quote) will be used.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :expires_at
      # A footer that will be displayed on the quote PDF. If no value is passed, the default footer configured in your [quote template settings](https://dashboard.stripe.com/settings/billing/quote) will be used.
      sig { returns(T.nilable(String)) }
      attr_accessor :footer
      # Clone an existing quote. The new quote will be created in `status=draft`. When using this parameter, you cannot specify any other parameters except for `expires_at`.
      sig { returns(T.nilable(::Stripe::Quote::CreateParams::FromQuote)) }
      attr_accessor :from_quote
      # A header that will be displayed on the quote PDF. If no value is passed, the default header configured in your [quote template settings](https://dashboard.stripe.com/settings/billing/quote) will be used.
      sig { returns(T.nilable(String)) }
      attr_accessor :header
      # All invoices will be billed using the specified settings.
      sig { returns(T.nilable(::Stripe::Quote::CreateParams::InvoiceSettings)) }
      attr_accessor :invoice_settings
      # A list of line items the customer is being quoted for. Each line item includes information about the product, the quantity, and the resulting cost.
      sig { returns(T.nilable(T::Array[::Stripe::Quote::CreateParams::LineItem])) }
      attr_accessor :line_items
      # A list of [quote lines](https://docs.stripe.com/api/quote_lines) on the quote. These lines describe changes, in the order provided, that will be used to create new subscription schedules or update existing subscription schedules when the quote is accepted.
      sig { returns(T.nilable(T::Array[::Stripe::Quote::CreateParams::Line])) }
      attr_accessor :lines
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_accessor :metadata
      # The account on behalf of which to charge.
      sig { returns(T.nilable(String)) }
      attr_accessor :on_behalf_of
      # When creating a subscription or subscription schedule, the specified configuration data will be used. There must be at least one line item with a recurring price for a subscription or subscription schedule to be created. A subscription schedule is created if `subscription_data[effective_date]` is present and in the future, otherwise a subscription is created.
      sig { returns(T.nilable(::Stripe::Quote::CreateParams::SubscriptionData)) }
      attr_accessor :subscription_data
      # List representing overrides for `subscription_data` configurations for specific subscription schedules.
      sig { returns(T.nilable(T::Array[::Stripe::Quote::CreateParams::SubscriptionDataOverride])) }
      attr_accessor :subscription_data_overrides
      # ID of the test clock to attach to the quote.
      sig { returns(T.nilable(String)) }
      attr_accessor :test_clock
      # The data with which to automatically create a Transfer for each of the invoices.
      sig { returns(T.nilable(T.any(String, ::Stripe::Quote::CreateParams::TransferData))) }
      attr_accessor :transfer_data
      sig {
        params(allow_backdated_lines: T.nilable(T::Boolean), application_fee_amount: T.nilable(T.any(String, Integer)), application_fee_percent: T.nilable(T.any(String, Float)), automatic_tax: T.nilable(::Stripe::Quote::CreateParams::AutomaticTax), collection_method: T.nilable(String), customer: T.nilable(String), customer_account: T.nilable(String), default_tax_rates: T.nilable(T.any(String, T::Array[String])), description: T.nilable(String), discounts: T.nilable(T.any(String, T::Array[::Stripe::Quote::CreateParams::Discount])), expand: T.nilable(T::Array[String]), expires_at: T.nilable(Integer), footer: T.nilable(String), from_quote: T.nilable(::Stripe::Quote::CreateParams::FromQuote), header: T.nilable(String), invoice_settings: T.nilable(::Stripe::Quote::CreateParams::InvoiceSettings), line_items: T.nilable(T::Array[::Stripe::Quote::CreateParams::LineItem]), lines: T.nilable(T::Array[::Stripe::Quote::CreateParams::Line]), metadata: T.nilable(T::Hash[String, String]), on_behalf_of: T.nilable(String), subscription_data: T.nilable(::Stripe::Quote::CreateParams::SubscriptionData), subscription_data_overrides: T.nilable(T::Array[::Stripe::Quote::CreateParams::SubscriptionDataOverride]), test_clock: T.nilable(String), transfer_data: T.nilable(T.any(String, ::Stripe::Quote::CreateParams::TransferData))).void
       }
      def initialize(
        allow_backdated_lines: nil,
        application_fee_amount: nil,
        application_fee_percent: nil,
        automatic_tax: nil,
        collection_method: nil,
        customer: nil,
        customer_account: nil,
        default_tax_rates: nil,
        description: nil,
        discounts: nil,
        expand: nil,
        expires_at: nil,
        footer: nil,
        from_quote: nil,
        header: nil,
        invoice_settings: nil,
        line_items: nil,
        lines: nil,
        metadata: nil,
        on_behalf_of: nil,
        subscription_data: nil,
        subscription_data_overrides: nil,
        test_clock: nil,
        transfer_data: nil
      ); end
    end
    class UpdateParams < Stripe::RequestParams
      class AutomaticTax < Stripe::RequestParams
        class Liability < Stripe::RequestParams
          # The connected account being referenced when `type` is `account`.
          sig { returns(T.nilable(String)) }
          attr_accessor :account
          # Type of the account referenced in the request.
          sig { returns(String) }
          attr_accessor :type
          sig { params(account: T.nilable(String), type: String).void }
          def initialize(account: nil, type: nil); end
        end
        # Controls whether Stripe will automatically compute tax on the resulting invoices or subscriptions as well as the quote itself.
        sig { returns(T::Boolean) }
        attr_accessor :enabled
        # The account that's liable for tax. If set, the business address and tax registrations required to perform the tax calculation are loaded from this account. The tax transaction is returned in the report of the connected account.
        sig { returns(T.nilable(::Stripe::Quote::UpdateParams::AutomaticTax::Liability)) }
        attr_accessor :liability
        sig {
          params(enabled: T::Boolean, liability: T.nilable(::Stripe::Quote::UpdateParams::AutomaticTax::Liability)).void
         }
        def initialize(enabled: nil, liability: nil); end
      end
      class Discount < Stripe::RequestParams
        class DiscountEnd < Stripe::RequestParams
          class Duration < Stripe::RequestParams
            # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
            sig { returns(String) }
            attr_accessor :interval
            # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
            sig { returns(Integer) }
            attr_accessor :interval_count
            sig { params(interval: String, interval_count: Integer).void }
            def initialize(interval: nil, interval_count: nil); end
          end
          # Time span for the redeemed discount.
          sig { returns(T.nilable(::Stripe::Quote::UpdateParams::Discount::DiscountEnd::Duration)) }
          attr_accessor :duration
          # A precise Unix timestamp for the discount to end. Must be in the future.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :timestamp
          # The type of calculation made to determine when the discount ends.
          sig { returns(String) }
          attr_accessor :type
          sig {
            params(duration: T.nilable(::Stripe::Quote::UpdateParams::Discount::DiscountEnd::Duration), timestamp: T.nilable(Integer), type: String).void
           }
          def initialize(duration: nil, timestamp: nil, type: nil); end
        end
        # ID of the coupon to create a new discount for.
        sig { returns(T.nilable(String)) }
        attr_accessor :coupon
        # ID of an existing discount on the object (or one of its ancestors) to reuse.
        sig { returns(T.nilable(String)) }
        attr_accessor :discount
        # Details to determine how long the discount should be applied for.
        sig { returns(T.nilable(::Stripe::Quote::UpdateParams::Discount::DiscountEnd)) }
        attr_accessor :discount_end
        # ID of the promotion code to create a new discount for.
        sig { returns(T.nilable(String)) }
        attr_accessor :promotion_code
        sig {
          params(coupon: T.nilable(String), discount: T.nilable(String), discount_end: T.nilable(::Stripe::Quote::UpdateParams::Discount::DiscountEnd), promotion_code: T.nilable(String)).void
         }
        def initialize(coupon: nil, discount: nil, discount_end: nil, promotion_code: nil); end
      end
      class InvoiceSettings < Stripe::RequestParams
        class Issuer < Stripe::RequestParams
          # The connected account being referenced when `type` is `account`.
          sig { returns(T.nilable(String)) }
          attr_accessor :account
          # Type of the account referenced in the request.
          sig { returns(String) }
          attr_accessor :type
          sig { params(account: T.nilable(String), type: String).void }
          def initialize(account: nil, type: nil); end
        end
        # Number of days within which a customer must pay the invoice generated by this quote. This value will be `null` for quotes where `collection_method=charge_automatically`.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :days_until_due
        # The connected account that issues the invoice. The invoice is presented with the branding and support information of the specified account.
        sig { returns(T.nilable(::Stripe::Quote::UpdateParams::InvoiceSettings::Issuer)) }
        attr_accessor :issuer
        sig {
          params(days_until_due: T.nilable(Integer), issuer: T.nilable(::Stripe::Quote::UpdateParams::InvoiceSettings::Issuer)).void
         }
        def initialize(days_until_due: nil, issuer: nil); end
      end
      class Line < Stripe::RequestParams
        class Action < Stripe::RequestParams
          class AddDiscount < Stripe::RequestParams
            class DiscountEnd < Stripe::RequestParams
              # The type of calculation made to determine when the discount ends.
              sig { returns(String) }
              attr_accessor :type
              sig { params(type: String).void }
              def initialize(type: nil); end
            end
            # The coupon code to redeem.
            sig { returns(T.nilable(String)) }
            attr_accessor :coupon
            # An ID of an existing discount for a coupon that was already redeemed.
            sig { returns(T.nilable(String)) }
            attr_accessor :discount
            # Details to determine how long the discount should be applied for.
            sig {
              returns(T.nilable(::Stripe::Quote::UpdateParams::Line::Action::AddDiscount::DiscountEnd))
             }
            attr_accessor :discount_end
            # The index, starting at 0, at which to position the new discount. When not supplied, Stripe defaults to appending the discount to the end of the `discounts` array.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :index
            # The promotion code to redeem.
            sig { returns(T.nilable(String)) }
            attr_accessor :promotion_code
            sig {
              params(coupon: T.nilable(String), discount: T.nilable(String), discount_end: T.nilable(::Stripe::Quote::UpdateParams::Line::Action::AddDiscount::DiscountEnd), index: T.nilable(Integer), promotion_code: T.nilable(String)).void
             }
            def initialize(
              coupon: nil,
              discount: nil,
              discount_end: nil,
              index: nil,
              promotion_code: nil
            ); end
          end
          class AddItem < Stripe::RequestParams
            class Discount < Stripe::RequestParams
              class DiscountEnd < Stripe::RequestParams
                class Duration < Stripe::RequestParams
                  # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
                  sig { returns(String) }
                  attr_accessor :interval
                  # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
                  sig { returns(Integer) }
                  attr_accessor :interval_count
                  sig { params(interval: String, interval_count: Integer).void }
                  def initialize(interval: nil, interval_count: nil); end
                end
                # Time span for the redeemed discount.
                sig {
                  returns(T.nilable(::Stripe::Quote::UpdateParams::Line::Action::AddItem::Discount::DiscountEnd::Duration))
                 }
                attr_accessor :duration
                # A precise Unix timestamp for the discount to end. Must be in the future.
                sig { returns(T.nilable(Integer)) }
                attr_accessor :timestamp
                # The type of calculation made to determine when the discount ends.
                sig { returns(String) }
                attr_accessor :type
                sig {
                  params(duration: T.nilable(::Stripe::Quote::UpdateParams::Line::Action::AddItem::Discount::DiscountEnd::Duration), timestamp: T.nilable(Integer), type: String).void
                 }
                def initialize(duration: nil, timestamp: nil, type: nil); end
              end
              # ID of the coupon to create a new discount for.
              sig { returns(T.nilable(String)) }
              attr_accessor :coupon
              # ID of an existing discount on the object (or one of its ancestors) to reuse.
              sig { returns(T.nilable(String)) }
              attr_accessor :discount
              # Details to determine how long the discount should be applied for.
              sig {
                returns(T.nilable(::Stripe::Quote::UpdateParams::Line::Action::AddItem::Discount::DiscountEnd))
               }
              attr_accessor :discount_end
              # ID of the promotion code to create a new discount for.
              sig { returns(T.nilable(String)) }
              attr_accessor :promotion_code
              sig {
                params(coupon: T.nilable(String), discount: T.nilable(String), discount_end: T.nilable(::Stripe::Quote::UpdateParams::Line::Action::AddItem::Discount::DiscountEnd), promotion_code: T.nilable(String)).void
               }
              def initialize(
                coupon: nil,
                discount: nil,
                discount_end: nil,
                promotion_code: nil
              ); end
            end
            class Trial < Stripe::RequestParams
              # List of price IDs which, if present on the subscription following a paid trial, constitute opting-in to the paid trial. Currently only supports at most 1 price ID.
              sig { returns(T.nilable(T::Array[String])) }
              attr_accessor :converts_to
              # Determines the type of trial for this item.
              sig { returns(String) }
              attr_accessor :type
              sig { params(converts_to: T.nilable(T::Array[String]), type: String).void }
              def initialize(converts_to: nil, type: nil); end
            end
            # The discounts applied to the item. Subscription item discounts are applied before subscription discounts.
            sig {
              returns(T.nilable(T::Array[::Stripe::Quote::UpdateParams::Line::Action::AddItem::Discount]))
             }
            attr_accessor :discounts
            # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
            sig { returns(T.nilable(T::Hash[String, String])) }
            attr_accessor :metadata
            # The ID of the price object.
            sig { returns(String) }
            attr_accessor :price
            # Quantity for this item.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :quantity
            # The tax rates that apply to this subscription item. When set, the `default_tax_rates` on the subscription do not apply to this `subscription_item`.
            sig { returns(T.nilable(T::Array[String])) }
            attr_accessor :tax_rates
            # Options that configure the trial on the subscription item.
            sig { returns(T.nilable(::Stripe::Quote::UpdateParams::Line::Action::AddItem::Trial)) }
            attr_accessor :trial
            sig {
              params(discounts: T.nilable(T::Array[::Stripe::Quote::UpdateParams::Line::Action::AddItem::Discount]), metadata: T.nilable(T::Hash[String, String]), price: String, quantity: T.nilable(Integer), tax_rates: T.nilable(T::Array[String]), trial: T.nilable(::Stripe::Quote::UpdateParams::Line::Action::AddItem::Trial)).void
             }
            def initialize(
              discounts: nil,
              metadata: nil,
              price: nil,
              quantity: nil,
              tax_rates: nil,
              trial: nil
            ); end
          end
          class RemoveDiscount < Stripe::RequestParams
            # The coupon code to remove from the `discounts` array.
            sig { returns(T.nilable(String)) }
            attr_accessor :coupon
            # The ID of a discount to remove from the `discounts` array.
            sig { returns(T.nilable(String)) }
            attr_accessor :discount
            # The ID of a promotion code to remove from the `discounts` array.
            sig { returns(T.nilable(String)) }
            attr_accessor :promotion_code
            sig {
              params(coupon: T.nilable(String), discount: T.nilable(String), promotion_code: T.nilable(String)).void
             }
            def initialize(coupon: nil, discount: nil, promotion_code: nil); end
          end
          class RemoveItem < Stripe::RequestParams
            # ID of a price to remove.
            sig { returns(String) }
            attr_accessor :price
            sig { params(price: String).void }
            def initialize(price: nil); end
          end
          class SetDiscount < Stripe::RequestParams
            # The coupon code to replace the `discounts` array with.
            sig { returns(T.nilable(String)) }
            attr_accessor :coupon
            # An ID of an existing discount to replace the `discounts` array with.
            sig { returns(T.nilable(String)) }
            attr_accessor :discount
            # An ID of an existing promotion code to replace the `discounts` array with.
            sig { returns(T.nilable(String)) }
            attr_accessor :promotion_code
            sig {
              params(coupon: T.nilable(String), discount: T.nilable(String), promotion_code: T.nilable(String)).void
             }
            def initialize(coupon: nil, discount: nil, promotion_code: nil); end
          end
          class SetItem < Stripe::RequestParams
            class Discount < Stripe::RequestParams
              class DiscountEnd < Stripe::RequestParams
                class Duration < Stripe::RequestParams
                  # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
                  sig { returns(String) }
                  attr_accessor :interval
                  # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
                  sig { returns(Integer) }
                  attr_accessor :interval_count
                  sig { params(interval: String, interval_count: Integer).void }
                  def initialize(interval: nil, interval_count: nil); end
                end
                # Time span for the redeemed discount.
                sig {
                  returns(T.nilable(::Stripe::Quote::UpdateParams::Line::Action::SetItem::Discount::DiscountEnd::Duration))
                 }
                attr_accessor :duration
                # A precise Unix timestamp for the discount to end. Must be in the future.
                sig { returns(T.nilable(Integer)) }
                attr_accessor :timestamp
                # The type of calculation made to determine when the discount ends.
                sig { returns(String) }
                attr_accessor :type
                sig {
                  params(duration: T.nilable(::Stripe::Quote::UpdateParams::Line::Action::SetItem::Discount::DiscountEnd::Duration), timestamp: T.nilable(Integer), type: String).void
                 }
                def initialize(duration: nil, timestamp: nil, type: nil); end
              end
              # ID of the coupon to create a new discount for.
              sig { returns(T.nilable(String)) }
              attr_accessor :coupon
              # ID of an existing discount on the object (or one of its ancestors) to reuse.
              sig { returns(T.nilable(String)) }
              attr_accessor :discount
              # Details to determine how long the discount should be applied for.
              sig {
                returns(T.nilable(::Stripe::Quote::UpdateParams::Line::Action::SetItem::Discount::DiscountEnd))
               }
              attr_accessor :discount_end
              # ID of the promotion code to create a new discount for.
              sig { returns(T.nilable(String)) }
              attr_accessor :promotion_code
              sig {
                params(coupon: T.nilable(String), discount: T.nilable(String), discount_end: T.nilable(::Stripe::Quote::UpdateParams::Line::Action::SetItem::Discount::DiscountEnd), promotion_code: T.nilable(String)).void
               }
              def initialize(
                coupon: nil,
                discount: nil,
                discount_end: nil,
                promotion_code: nil
              ); end
            end
            class Trial < Stripe::RequestParams
              # List of price IDs which, if present on the subscription following a paid trial, constitute opting-in to the paid trial. Currently only supports at most 1 price ID.
              sig { returns(T.nilable(T::Array[String])) }
              attr_accessor :converts_to
              # Determines the type of trial for this item.
              sig { returns(String) }
              attr_accessor :type
              sig { params(converts_to: T.nilable(T::Array[String]), type: String).void }
              def initialize(converts_to: nil, type: nil); end
            end
            # If an item with the `price` already exists, passing this will override the `discounts` array on the subscription item that matches that price. Otherwise, the `items` array is cleared and a single new item is added with the supplied `discounts`.
            sig {
              returns(T.nilable(T::Array[::Stripe::Quote::UpdateParams::Line::Action::SetItem::Discount]))
             }
            attr_accessor :discounts
            # If an item with the `price` already exists, passing this will override the `metadata` on the subscription item that matches that price. Otherwise, the `items` array is cleared and a single new item is added with the supplied `metadata`.
            sig { returns(T.nilable(T::Hash[String, String])) }
            attr_accessor :metadata
            # The ID of the price object.
            sig { returns(String) }
            attr_accessor :price
            # If an item with the `price` already exists, passing this will override the quantity on the subscription item that matches that price. Otherwise, the `items` array is cleared and a single new item is added with the supplied `quantity`.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :quantity
            # If an item with the `price` already exists, passing this will override the `tax_rates` array on the subscription item that matches that price. Otherwise, the `items` array is cleared and a single new item is added with the supplied `tax_rates`.
            sig { returns(T.nilable(T::Array[String])) }
            attr_accessor :tax_rates
            # If an item with the `price` already exists, passing this will override the `trial` configuration on the subscription item that matches that price. Otherwise, the `items` array is cleared and a single new item is added with the supplied `trial`.
            sig { returns(T.nilable(::Stripe::Quote::UpdateParams::Line::Action::SetItem::Trial)) }
            attr_accessor :trial
            sig {
              params(discounts: T.nilable(T::Array[::Stripe::Quote::UpdateParams::Line::Action::SetItem::Discount]), metadata: T.nilable(T::Hash[String, String]), price: String, quantity: T.nilable(Integer), tax_rates: T.nilable(T::Array[String]), trial: T.nilable(::Stripe::Quote::UpdateParams::Line::Action::SetItem::Trial)).void
             }
            def initialize(
              discounts: nil,
              metadata: nil,
              price: nil,
              quantity: nil,
              tax_rates: nil,
              trial: nil
            ); end
          end
          # Details for the `add_discount` type.
          sig { returns(T.nilable(::Stripe::Quote::UpdateParams::Line::Action::AddDiscount)) }
          attr_accessor :add_discount
          # Details for the `add_item` type.
          sig { returns(T.nilable(::Stripe::Quote::UpdateParams::Line::Action::AddItem)) }
          attr_accessor :add_item
          # Details for the `add_metadata` type: specify a hash of key-value pairs.
          sig { returns(T.nilable(T::Hash[String, String])) }
          attr_accessor :add_metadata
          # Details for the `remove_discount` type.
          sig { returns(T.nilable(::Stripe::Quote::UpdateParams::Line::Action::RemoveDiscount)) }
          attr_accessor :remove_discount
          # Details for the `remove_item` type.
          sig { returns(T.nilable(::Stripe::Quote::UpdateParams::Line::Action::RemoveItem)) }
          attr_accessor :remove_item
          # Details for the `remove_metadata` type: specify an array of metadata keys.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :remove_metadata
          # Details for the `set_discounts` type.
          sig {
            returns(T.nilable(T::Array[::Stripe::Quote::UpdateParams::Line::Action::SetDiscount]))
           }
          attr_accessor :set_discounts
          # Details for the `set_items` type.
          sig { returns(T.nilable(T::Array[::Stripe::Quote::UpdateParams::Line::Action::SetItem])) }
          attr_accessor :set_items
          # Details for the `set_metadata` type: specify an array of key-value pairs.
          sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
          attr_accessor :set_metadata
          # The type of action the quote line performs.
          sig { returns(String) }
          attr_accessor :type
          sig {
            params(add_discount: T.nilable(::Stripe::Quote::UpdateParams::Line::Action::AddDiscount), add_item: T.nilable(::Stripe::Quote::UpdateParams::Line::Action::AddItem), add_metadata: T.nilable(T::Hash[String, String]), remove_discount: T.nilable(::Stripe::Quote::UpdateParams::Line::Action::RemoveDiscount), remove_item: T.nilable(::Stripe::Quote::UpdateParams::Line::Action::RemoveItem), remove_metadata: T.nilable(T::Array[String]), set_discounts: T.nilable(T::Array[::Stripe::Quote::UpdateParams::Line::Action::SetDiscount]), set_items: T.nilable(T::Array[::Stripe::Quote::UpdateParams::Line::Action::SetItem]), set_metadata: T.nilable(T.any(String, T::Hash[String, String])), type: String).void
           }
          def initialize(
            add_discount: nil,
            add_item: nil,
            add_metadata: nil,
            remove_discount: nil,
            remove_item: nil,
            remove_metadata: nil,
            set_discounts: nil,
            set_items: nil,
            set_metadata: nil,
            type: nil
          ); end
        end
        class AppliesTo < Stripe::RequestParams
          # A custom string that identifies a new subscription schedule being created upon quote acceptance. All quote lines with the same `new_reference` field will be applied to the creation of a new subscription schedule.
          sig { returns(T.nilable(String)) }
          attr_accessor :new_reference
          # The ID of the schedule the line applies to.
          sig { returns(T.nilable(String)) }
          attr_accessor :subscription_schedule
          # Describes whether the quote line is affecting a new schedule or an existing schedule.
          sig { returns(String) }
          attr_accessor :type
          sig {
            params(new_reference: T.nilable(String), subscription_schedule: T.nilable(String), type: String).void
           }
          def initialize(new_reference: nil, subscription_schedule: nil, type: nil); end
        end
        class CancelSubscriptionSchedule < Stripe::RequestParams
          # Timestamp helper to cancel the underlying schedule on the accompanying line's start date. Must be set to `line_starts_at`.
          sig { returns(String) }
          attr_accessor :cancel_at
          # If the subscription schedule is `active`, indicates if a final invoice will be generated that contains any un-invoiced metered usage and new/pending proration invoice items. Boolean that defaults to `true`.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :invoice_now
          # If the subscription schedule is `active`, indicates if the cancellation should be prorated. Boolean that defaults to `true`.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :prorate
          sig {
            params(cancel_at: String, invoice_now: T.nilable(T::Boolean), prorate: T.nilable(T::Boolean)).void
           }
          def initialize(cancel_at: nil, invoice_now: nil, prorate: nil); end
        end
        class EndsAt < Stripe::RequestParams
          class DiscountEnd < Stripe::RequestParams
            # The ID of a specific discount.
            sig { returns(String) }
            attr_accessor :discount
            sig { params(discount: String).void }
            def initialize(discount: nil); end
          end
          class Duration < Stripe::RequestParams
            # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
            sig { returns(String) }
            attr_accessor :interval
            # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
            sig { returns(Integer) }
            attr_accessor :interval_count
            sig { params(interval: String, interval_count: Integer).void }
            def initialize(interval: nil, interval_count: nil); end
          end
          # Use the `end` time of a given discount.
          sig { returns(T.nilable(::Stripe::Quote::UpdateParams::Line::EndsAt::DiscountEnd)) }
          attr_accessor :discount_end
          # Time span for the quote line starting from the `starts_at` date.
          sig { returns(T.nilable(::Stripe::Quote::UpdateParams::Line::EndsAt::Duration)) }
          attr_accessor :duration
          # A precise Unix timestamp.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :timestamp
          # Select a way to pass in `ends_at`.
          sig { returns(String) }
          attr_accessor :type
          sig {
            params(discount_end: T.nilable(::Stripe::Quote::UpdateParams::Line::EndsAt::DiscountEnd), duration: T.nilable(::Stripe::Quote::UpdateParams::Line::EndsAt::Duration), timestamp: T.nilable(Integer), type: String).void
           }
          def initialize(discount_end: nil, duration: nil, timestamp: nil, type: nil); end
        end
        class SetPauseCollection < Stripe::RequestParams
          class Set < Stripe::RequestParams
            # The payment collection behavior for this subscription while paused. One of `keep_as_draft`, `mark_uncollectible`, or `void`.
            sig { returns(String) }
            attr_accessor :behavior
            sig { params(behavior: String).void }
            def initialize(behavior: nil); end
          end
          # Details of the pause_collection behavior to apply to the amendment.
          sig { returns(T.nilable(::Stripe::Quote::UpdateParams::Line::SetPauseCollection::Set)) }
          attr_accessor :set
          # Determines the type of the pause_collection amendment.
          sig { returns(String) }
          attr_accessor :type
          sig {
            params(set: T.nilable(::Stripe::Quote::UpdateParams::Line::SetPauseCollection::Set), type: String).void
           }
          def initialize(set: nil, type: nil); end
        end
        class StartsAt < Stripe::RequestParams
          class DiscountEnd < Stripe::RequestParams
            # The ID of a specific discount.
            sig { returns(String) }
            attr_accessor :discount
            sig { params(discount: String).void }
            def initialize(discount: nil); end
          end
          class LineEndsAt < Stripe::RequestParams
            # The ID of a quote line.
            sig { returns(T.nilable(String)) }
            attr_accessor :id
            # The position of the previous quote line in the `lines` array after which this line should begin. Indexes start from 0 and must be less than the index of the current line in the array.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :index
            sig { params(id: T.nilable(String), index: T.nilable(Integer)).void }
            def initialize(id: nil, index: nil); end
          end
          # Use the `end` time of a given discount.
          sig { returns(T.nilable(::Stripe::Quote::UpdateParams::Line::StartsAt::DiscountEnd)) }
          attr_accessor :discount_end
          # The timestamp the given line ends at.
          sig { returns(T.nilable(::Stripe::Quote::UpdateParams::Line::StartsAt::LineEndsAt)) }
          attr_accessor :line_ends_at
          # A precise Unix timestamp.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :timestamp
          # Select a way to pass in `starts_at`.
          sig { returns(String) }
          attr_accessor :type
          sig {
            params(discount_end: T.nilable(::Stripe::Quote::UpdateParams::Line::StartsAt::DiscountEnd), line_ends_at: T.nilable(::Stripe::Quote::UpdateParams::Line::StartsAt::LineEndsAt), timestamp: T.nilable(Integer), type: String).void
           }
          def initialize(discount_end: nil, line_ends_at: nil, timestamp: nil, type: nil); end
        end
        class TrialSettings < Stripe::RequestParams
          class EndBehavior < Stripe::RequestParams
            # Configure how an opt-in following a paid trial is billed when using `billing_behavior: prorate_up_front`.
            sig { returns(T.nilable(String)) }
            attr_accessor :prorate_up_front
            sig { params(prorate_up_front: T.nilable(String)).void }
            def initialize(prorate_up_front: nil); end
          end
          # Defines how the subscription should behave when a trial ends.
          sig {
            returns(T.nilable(::Stripe::Quote::UpdateParams::Line::TrialSettings::EndBehavior))
           }
          attr_accessor :end_behavior
          sig {
            params(end_behavior: T.nilable(::Stripe::Quote::UpdateParams::Line::TrialSettings::EndBehavior)).void
           }
          def initialize(end_behavior: nil); end
        end
        # An array of operations the quote line performs.
        sig { returns(T.nilable(T::Array[::Stripe::Quote::UpdateParams::Line::Action])) }
        attr_accessor :actions
        # Details to identify the subscription schedule the quote line applies to.
        sig { returns(T.nilable(::Stripe::Quote::UpdateParams::Line::AppliesTo)) }
        attr_accessor :applies_to
        # For point-in-time quote lines (having no `ends_at` timestamp), this attribute lets you set or remove whether the subscription's billing cycle anchor is reset at the Quote Line `starts_at` timestamp.For time-span based quote lines (having both `starts_at` and `ends_at`), the only valid value is `automatic`, which removes any previously configured billing cycle anchor resets during the window of time spanning the quote line.
        sig { returns(T.nilable(String)) }
        attr_accessor :billing_cycle_anchor
        # A point-in-time operation that cancels an existing subscription schedule at the line's starts_at timestamp. Currently only compatible with `quote_acceptance_date` for `starts_at`. When using cancel_subscription_schedule, the subscription schedule on the quote remains unalterable, except for modifications to the metadata, collection_method or invoice_settings.
        sig { returns(T.nilable(::Stripe::Quote::UpdateParams::Line::CancelSubscriptionSchedule)) }
        attr_accessor :cancel_subscription_schedule
        # Details to identify the end of the time range modified by the proposed change. If not supplied, the quote line is considered a point-in-time operation that only affects the exact timestamp at `starts_at`, and a restricted set of attributes is supported on the quote line.
        sig { returns(T.nilable(::Stripe::Quote::UpdateParams::Line::EndsAt)) }
        attr_accessor :ends_at
        # The ID of an existing line on the quote.
        sig { returns(T.nilable(String)) }
        attr_accessor :id
        # Changes to how Stripe handles prorations during the quote line's time span. Affects if and how prorations are created when a future phase starts.
        sig { returns(T.nilable(String)) }
        attr_accessor :proration_behavior
        # Defines how to pause collection for the underlying subscription throughout the duration of the amendment.
        sig { returns(T.nilable(::Stripe::Quote::UpdateParams::Line::SetPauseCollection)) }
        attr_accessor :set_pause_collection
        # Timestamp helper to end the underlying schedule early, based on the acompanying line's start or end date.
        sig { returns(T.nilable(String)) }
        attr_accessor :set_schedule_end
        # Details to identify the earliest timestamp where the proposed change should take effect.
        sig { returns(T.nilable(::Stripe::Quote::UpdateParams::Line::StartsAt)) }
        attr_accessor :starts_at
        # Settings related to subscription trials.
        sig { returns(T.nilable(::Stripe::Quote::UpdateParams::Line::TrialSettings)) }
        attr_accessor :trial_settings
        sig {
          params(actions: T.nilable(T::Array[::Stripe::Quote::UpdateParams::Line::Action]), applies_to: T.nilable(::Stripe::Quote::UpdateParams::Line::AppliesTo), billing_cycle_anchor: T.nilable(String), cancel_subscription_schedule: T.nilable(::Stripe::Quote::UpdateParams::Line::CancelSubscriptionSchedule), ends_at: T.nilable(::Stripe::Quote::UpdateParams::Line::EndsAt), id: T.nilable(String), proration_behavior: T.nilable(String), set_pause_collection: T.nilable(::Stripe::Quote::UpdateParams::Line::SetPauseCollection), set_schedule_end: T.nilable(String), starts_at: T.nilable(::Stripe::Quote::UpdateParams::Line::StartsAt), trial_settings: T.nilable(::Stripe::Quote::UpdateParams::Line::TrialSettings)).void
         }
        def initialize(
          actions: nil,
          applies_to: nil,
          billing_cycle_anchor: nil,
          cancel_subscription_schedule: nil,
          ends_at: nil,
          id: nil,
          proration_behavior: nil,
          set_pause_collection: nil,
          set_schedule_end: nil,
          starts_at: nil,
          trial_settings: nil
        ); end
      end
      class LineItem < Stripe::RequestParams
        class Discount < Stripe::RequestParams
          class DiscountEnd < Stripe::RequestParams
            class Duration < Stripe::RequestParams
              # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
              sig { returns(String) }
              attr_accessor :interval
              # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
              sig { returns(Integer) }
              attr_accessor :interval_count
              sig { params(interval: String, interval_count: Integer).void }
              def initialize(interval: nil, interval_count: nil); end
            end
            # Time span for the redeemed discount.
            sig {
              returns(T.nilable(::Stripe::Quote::UpdateParams::LineItem::Discount::DiscountEnd::Duration))
             }
            attr_accessor :duration
            # A precise Unix timestamp for the discount to end. Must be in the future.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :timestamp
            # The type of calculation made to determine when the discount ends.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(duration: T.nilable(::Stripe::Quote::UpdateParams::LineItem::Discount::DiscountEnd::Duration), timestamp: T.nilable(Integer), type: String).void
             }
            def initialize(duration: nil, timestamp: nil, type: nil); end
          end
          # ID of the coupon to create a new discount for.
          sig { returns(T.nilable(String)) }
          attr_accessor :coupon
          # ID of an existing discount on the object (or one of its ancestors) to reuse.
          sig { returns(T.nilable(String)) }
          attr_accessor :discount
          # Details to determine how long the discount should be applied for.
          sig { returns(T.nilable(::Stripe::Quote::UpdateParams::LineItem::Discount::DiscountEnd)) }
          attr_accessor :discount_end
          # ID of the promotion code to create a new discount for.
          sig { returns(T.nilable(String)) }
          attr_accessor :promotion_code
          sig {
            params(coupon: T.nilable(String), discount: T.nilable(String), discount_end: T.nilable(::Stripe::Quote::UpdateParams::LineItem::Discount::DiscountEnd), promotion_code: T.nilable(String)).void
           }
          def initialize(coupon: nil, discount: nil, discount_end: nil, promotion_code: nil); end
        end
        class PriceData < Stripe::RequestParams
          class Recurring < Stripe::RequestParams
            # Specifies billing frequency. Either `day`, `week`, `month` or `year`.
            sig { returns(String) }
            attr_accessor :interval
            # The number of intervals between subscription billings. For example, `interval=month` and `interval_count=3` bills every 3 months. Maximum of three years interval allowed (3 years, 36 months, or 156 weeks).
            sig { returns(T.nilable(Integer)) }
            attr_accessor :interval_count
            sig { params(interval: String, interval_count: T.nilable(Integer)).void }
            def initialize(interval: nil, interval_count: nil); end
          end
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(String) }
          attr_accessor :currency
          # The ID of the [Product](https://docs.stripe.com/api/products) that this [Price](https://docs.stripe.com/api/prices) will belong to.
          sig { returns(String) }
          attr_accessor :product
          # The recurring components of a price such as `interval` and `interval_count`.
          sig { returns(T.nilable(::Stripe::Quote::UpdateParams::LineItem::PriceData::Recurring)) }
          attr_accessor :recurring
          # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
          sig { returns(T.nilable(String)) }
          attr_accessor :tax_behavior
          # A positive integer in cents (or local equivalent) (or 0 for a free price) representing how much to charge.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :unit_amount
          # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
          sig { returns(T.nilable(String)) }
          attr_accessor :unit_amount_decimal
          sig {
            params(currency: String, product: String, recurring: T.nilable(::Stripe::Quote::UpdateParams::LineItem::PriceData::Recurring), tax_behavior: T.nilable(String), unit_amount: T.nilable(Integer), unit_amount_decimal: T.nilable(String)).void
           }
          def initialize(
            currency: nil,
            product: nil,
            recurring: nil,
            tax_behavior: nil,
            unit_amount: nil,
            unit_amount_decimal: nil
          ); end
        end
        # The discounts applied to this line item.
        sig {
          returns(T.nilable(T.any(String, T::Array[::Stripe::Quote::UpdateParams::LineItem::Discount])))
         }
        attr_accessor :discounts
        # The ID of an existing line item on the quote.
        sig { returns(T.nilable(String)) }
        attr_accessor :id
        # The ID of the price object. One of `price` or `price_data` is required.
        sig { returns(T.nilable(String)) }
        attr_accessor :price
        # Data used to generate a new [Price](https://stripe.com/docs/api/prices) object inline. One of `price` or `price_data` is required.
        sig { returns(T.nilable(::Stripe::Quote::UpdateParams::LineItem::PriceData)) }
        attr_accessor :price_data
        # The quantity of the line item.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :quantity
        # The tax rates which apply to the line item. When set, the `default_tax_rates` on the quote do not apply to this line item.
        sig { returns(T.nilable(T.any(String, T::Array[String]))) }
        attr_accessor :tax_rates
        sig {
          params(discounts: T.nilable(T.any(String, T::Array[::Stripe::Quote::UpdateParams::LineItem::Discount])), id: T.nilable(String), price: T.nilable(String), price_data: T.nilable(::Stripe::Quote::UpdateParams::LineItem::PriceData), quantity: T.nilable(Integer), tax_rates: T.nilable(T.any(String, T::Array[String]))).void
         }
        def initialize(
          discounts: nil,
          id: nil,
          price: nil,
          price_data: nil,
          quantity: nil,
          tax_rates: nil
        ); end
      end
      class SubscriptionData < Stripe::RequestParams
        class BillOnAcceptance < Stripe::RequestParams
          class BillFrom < Stripe::RequestParams
            class LineStartsAt < Stripe::RequestParams
              # The ID of a quote line.
              sig { returns(T.nilable(String)) }
              attr_accessor :id
              # The position of the previous quote line in the `lines` array after which this line should begin. Indexes start from 0 and must be less than the index of the current line in the array.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :index
              sig { params(id: T.nilable(String), index: T.nilable(Integer)).void }
              def initialize(id: nil, index: nil); end
            end
            # Details of a Quote line to start the bill period from.
            sig {
              returns(T.nilable(::Stripe::Quote::UpdateParams::SubscriptionData::BillOnAcceptance::BillFrom::LineStartsAt))
             }
            attr_accessor :line_starts_at
            # A precise Unix timestamp.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :timestamp
            # The type of method to specify the `bill_from` time.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(line_starts_at: T.nilable(::Stripe::Quote::UpdateParams::SubscriptionData::BillOnAcceptance::BillFrom::LineStartsAt), timestamp: T.nilable(Integer), type: String).void
             }
            def initialize(line_starts_at: nil, timestamp: nil, type: nil); end
          end
          class BillUntil < Stripe::RequestParams
            class Duration < Stripe::RequestParams
              # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
              sig { returns(String) }
              attr_accessor :interval
              # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
              sig { returns(Integer) }
              attr_accessor :interval_count
              sig { params(interval: String, interval_count: Integer).void }
              def initialize(interval: nil, interval_count: nil); end
            end
            class LineEndsAt < Stripe::RequestParams
              # The ID of a quote line.
              sig { returns(T.nilable(String)) }
              attr_accessor :id
              # The position of the previous quote line in the `lines` array after which this line should begin. Indexes start from 0 and must be less than the index of the current line in the array.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :index
              sig { params(id: T.nilable(String), index: T.nilable(Integer)).void }
              def initialize(id: nil, index: nil); end
            end
            # Details of the duration over which to bill.
            sig {
              returns(T.nilable(::Stripe::Quote::UpdateParams::SubscriptionData::BillOnAcceptance::BillUntil::Duration))
             }
            attr_accessor :duration
            # Details of a Quote line item from which to bill until.
            sig {
              returns(T.nilable(::Stripe::Quote::UpdateParams::SubscriptionData::BillOnAcceptance::BillUntil::LineEndsAt))
             }
            attr_accessor :line_ends_at
            # A precise Unix timestamp.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :timestamp
            # The type of method to specify the `bill_until` time.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(duration: T.nilable(::Stripe::Quote::UpdateParams::SubscriptionData::BillOnAcceptance::BillUntil::Duration), line_ends_at: T.nilable(::Stripe::Quote::UpdateParams::SubscriptionData::BillOnAcceptance::BillUntil::LineEndsAt), timestamp: T.nilable(Integer), type: String).void
             }
            def initialize(duration: nil, line_ends_at: nil, timestamp: nil, type: nil); end
          end
          # The start of the period to bill from when the Quote is accepted.
          sig {
            returns(T.nilable(::Stripe::Quote::UpdateParams::SubscriptionData::BillOnAcceptance::BillFrom))
           }
          attr_accessor :bill_from
          # The end of the period to bill until when the Quote is accepted.
          sig {
            returns(T.nilable(::Stripe::Quote::UpdateParams::SubscriptionData::BillOnAcceptance::BillUntil))
           }
          attr_accessor :bill_until
          sig {
            params(bill_from: T.nilable(::Stripe::Quote::UpdateParams::SubscriptionData::BillOnAcceptance::BillFrom), bill_until: T.nilable(::Stripe::Quote::UpdateParams::SubscriptionData::BillOnAcceptance::BillUntil)).void
           }
          def initialize(bill_from: nil, bill_until: nil); end
        end
        class Prebilling < Stripe::RequestParams
          # This is used to determine the number of billing cycles to prebill.
          sig { returns(Integer) }
          attr_accessor :iterations
          sig { params(iterations: Integer).void }
          def initialize(iterations: nil); end
        end
        # Describes the period to bill for upon accepting the quote.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::Quote::UpdateParams::SubscriptionData::BillOnAcceptance)))
         }
        attr_accessor :bill_on_acceptance
        # Configures when the subscription schedule generates prorations for phase transitions. Possible values are `prorate_on_next_phase` or `prorate_up_front` with the default being `prorate_on_next_phase`. `prorate_on_next_phase` will apply phase changes and generate prorations at transition time. `prorate_up_front` will bill for all phases within the current billing cycle up front.
        sig { returns(T.nilable(String)) }
        attr_accessor :billing_behavior
        # When specified as `reset`, the subscription will always start a new billing period when the quote is accepted.
        sig { returns(T.nilable(String)) }
        attr_accessor :billing_cycle_anchor
        # The subscription's description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
        sig { returns(T.nilable(String)) }
        attr_accessor :description
        # When creating a new subscription, the date of which the subscription schedule will start after the quote is accepted. When updating a subscription, the date of which the subscription will be updated using a subscription schedule. The special value `current_period_end` can be provided to update a subscription at the end of its current period. The `effective_date` is ignored if it is in the past when the quote is accepted.
        sig { returns(T.nilable(T.any(String, T.any(String, Integer)))) }
        attr_accessor :effective_date
        # Behavior of the subscription schedule and underlying subscription when it ends.
        sig { returns(T.nilable(String)) }
        attr_accessor :end_behavior
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that will set metadata on the subscription or subscription schedule when the quote is accepted. If a recurring price is included in `line_items`, this field will be passed to the resulting subscription's `metadata` field. If `subscription_data.effective_date` is used, this field will be passed to the resulting subscription schedule's `phases.metadata` field. Unlike object-level metadata, this field is declarative. Updates will clear prior values.
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_accessor :metadata
        # If specified, the invoicing for the given billing cycle iterations will be processed when the quote is accepted. Cannot be used with `effective_date`.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::Quote::UpdateParams::SubscriptionData::Prebilling)))
         }
        attr_accessor :prebilling
        # Determines how to handle [prorations](https://stripe.com/docs/subscriptions/billing-cycle#prorations). When creating a subscription, valid values are `create_prorations` or `none`.
        #
        # When updating a subscription, valid values are `create_prorations`, `none`, or `always_invoice`.
        #
        # Passing `create_prorations` will cause proration invoice items to be created when applicable. These proration items will only be invoiced immediately under [certain conditions](https://stripe.com/docs/subscriptions/upgrading-downgrading#immediate-payment). In order to always invoice immediately for prorations, pass `always_invoice`.
        #
        # Prorations can be disabled by passing `none`.
        sig { returns(T.nilable(String)) }
        attr_accessor :proration_behavior
        # Integer representing the number of trial period days before the customer is charged for the first time.
        sig { returns(T.nilable(T.any(String, Integer))) }
        attr_accessor :trial_period_days
        sig {
          params(bill_on_acceptance: T.nilable(T.any(String, ::Stripe::Quote::UpdateParams::SubscriptionData::BillOnAcceptance)), billing_behavior: T.nilable(String), billing_cycle_anchor: T.nilable(String), description: T.nilable(String), effective_date: T.nilable(T.any(String, T.any(String, Integer))), end_behavior: T.nilable(String), metadata: T.nilable(T::Hash[String, String]), prebilling: T.nilable(T.any(String, ::Stripe::Quote::UpdateParams::SubscriptionData::Prebilling)), proration_behavior: T.nilable(String), trial_period_days: T.nilable(T.any(String, Integer))).void
         }
        def initialize(
          bill_on_acceptance: nil,
          billing_behavior: nil,
          billing_cycle_anchor: nil,
          description: nil,
          effective_date: nil,
          end_behavior: nil,
          metadata: nil,
          prebilling: nil,
          proration_behavior: nil,
          trial_period_days: nil
        ); end
      end
      class SubscriptionDataOverride < Stripe::RequestParams
        class AppliesTo < Stripe::RequestParams
          # A custom string that identifies a new subscription schedule being created upon quote acceptance. All quote lines with the same `new_reference` field will be applied to the creation of a new subscription schedule.
          sig { returns(T.nilable(String)) }
          attr_accessor :new_reference
          # The ID of the schedule the line applies to.
          sig { returns(T.nilable(String)) }
          attr_accessor :subscription_schedule
          # Describes whether the quote line is affecting a new schedule or an existing schedule.
          sig { returns(String) }
          attr_accessor :type
          sig {
            params(new_reference: T.nilable(String), subscription_schedule: T.nilable(String), type: String).void
           }
          def initialize(new_reference: nil, subscription_schedule: nil, type: nil); end
        end
        class BillOnAcceptance < Stripe::RequestParams
          class BillFrom < Stripe::RequestParams
            class LineStartsAt < Stripe::RequestParams
              # The ID of a quote line.
              sig { returns(T.nilable(String)) }
              attr_accessor :id
              # The position of the previous quote line in the `lines` array after which this line should begin. Indexes start from 0 and must be less than the index of the current line in the array.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :index
              sig { params(id: T.nilable(String), index: T.nilable(Integer)).void }
              def initialize(id: nil, index: nil); end
            end
            # Details of a Quote line to start the bill period from.
            sig {
              returns(T.nilable(::Stripe::Quote::UpdateParams::SubscriptionDataOverride::BillOnAcceptance::BillFrom::LineStartsAt))
             }
            attr_accessor :line_starts_at
            # A precise Unix timestamp.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :timestamp
            # The type of method to specify the `bill_from` time.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(line_starts_at: T.nilable(::Stripe::Quote::UpdateParams::SubscriptionDataOverride::BillOnAcceptance::BillFrom::LineStartsAt), timestamp: T.nilable(Integer), type: String).void
             }
            def initialize(line_starts_at: nil, timestamp: nil, type: nil); end
          end
          class BillUntil < Stripe::RequestParams
            class Duration < Stripe::RequestParams
              # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
              sig { returns(String) }
              attr_accessor :interval
              # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
              sig { returns(Integer) }
              attr_accessor :interval_count
              sig { params(interval: String, interval_count: Integer).void }
              def initialize(interval: nil, interval_count: nil); end
            end
            class LineEndsAt < Stripe::RequestParams
              # The ID of a quote line.
              sig { returns(T.nilable(String)) }
              attr_accessor :id
              # The position of the previous quote line in the `lines` array after which this line should begin. Indexes start from 0 and must be less than the index of the current line in the array.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :index
              sig { params(id: T.nilable(String), index: T.nilable(Integer)).void }
              def initialize(id: nil, index: nil); end
            end
            # Details of the duration over which to bill.
            sig {
              returns(T.nilable(::Stripe::Quote::UpdateParams::SubscriptionDataOverride::BillOnAcceptance::BillUntil::Duration))
             }
            attr_accessor :duration
            # Details of a Quote line item from which to bill until.
            sig {
              returns(T.nilable(::Stripe::Quote::UpdateParams::SubscriptionDataOverride::BillOnAcceptance::BillUntil::LineEndsAt))
             }
            attr_accessor :line_ends_at
            # A precise Unix timestamp.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :timestamp
            # The type of method to specify the `bill_until` time.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(duration: T.nilable(::Stripe::Quote::UpdateParams::SubscriptionDataOverride::BillOnAcceptance::BillUntil::Duration), line_ends_at: T.nilable(::Stripe::Quote::UpdateParams::SubscriptionDataOverride::BillOnAcceptance::BillUntil::LineEndsAt), timestamp: T.nilable(Integer), type: String).void
             }
            def initialize(duration: nil, line_ends_at: nil, timestamp: nil, type: nil); end
          end
          # The start of the period to bill from when the Quote is accepted.
          sig {
            returns(T.nilable(::Stripe::Quote::UpdateParams::SubscriptionDataOverride::BillOnAcceptance::BillFrom))
           }
          attr_accessor :bill_from
          # The end of the period to bill until when the Quote is accepted.
          sig {
            returns(T.nilable(::Stripe::Quote::UpdateParams::SubscriptionDataOverride::BillOnAcceptance::BillUntil))
           }
          attr_accessor :bill_until
          sig {
            params(bill_from: T.nilable(::Stripe::Quote::UpdateParams::SubscriptionDataOverride::BillOnAcceptance::BillFrom), bill_until: T.nilable(::Stripe::Quote::UpdateParams::SubscriptionDataOverride::BillOnAcceptance::BillUntil)).void
           }
          def initialize(bill_from: nil, bill_until: nil); end
        end
        # Whether the override applies to an existing Subscription Schedule or a new Subscription Schedule.
        sig { returns(::Stripe::Quote::UpdateParams::SubscriptionDataOverride::AppliesTo) }
        attr_accessor :applies_to
        # Describes the period to bill for upon accepting the quote.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::Quote::UpdateParams::SubscriptionDataOverride::BillOnAcceptance)))
         }
        attr_accessor :bill_on_acceptance
        # Configures when the subscription schedule generates prorations for phase transitions. Possible values are `prorate_on_next_phase` or `prorate_up_front` with the default being `prorate_on_next_phase`. `prorate_on_next_phase` will apply phase changes and generate prorations at transition time. `prorate_up_front` will bill for all phases within the current billing cycle up front.
        sig { returns(T.nilable(String)) }
        attr_accessor :billing_behavior
        # The customer the Subscription Data override applies to.
        sig { returns(T.nilable(String)) }
        attr_accessor :customer
        # The subscription's description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
        sig { returns(T.nilable(String)) }
        attr_accessor :description
        # Behavior of the subscription schedule and underlying subscription when it ends.
        sig { returns(T.nilable(String)) }
        attr_accessor :end_behavior
        # Determines how to handle [prorations](https://stripe.com/docs/subscriptions/billing-cycle#prorations). When creating a subscription, valid values are `create_prorations` or `none`.
        #
        # When updating a subscription, valid values are `create_prorations`, `none`, or `always_invoice`.
        #
        # Passing `create_prorations` will cause proration invoice items to be created when applicable. These proration items will only be invoiced immediately under [certain conditions](https://stripe.com/docs/subscriptions/upgrading-downgrading#immediate-payment). In order to always invoice immediately for prorations, pass `always_invoice`.
        #
        # Prorations can be disabled by passing `none`.
        sig { returns(T.nilable(String)) }
        attr_accessor :proration_behavior
        sig {
          params(applies_to: ::Stripe::Quote::UpdateParams::SubscriptionDataOverride::AppliesTo, bill_on_acceptance: T.nilable(T.any(String, ::Stripe::Quote::UpdateParams::SubscriptionDataOverride::BillOnAcceptance)), billing_behavior: T.nilable(String), customer: T.nilable(String), description: T.nilable(String), end_behavior: T.nilable(String), proration_behavior: T.nilable(String)).void
         }
        def initialize(
          applies_to: nil,
          bill_on_acceptance: nil,
          billing_behavior: nil,
          customer: nil,
          description: nil,
          end_behavior: nil,
          proration_behavior: nil
        ); end
      end
      class TransferData < Stripe::RequestParams
        # The amount that will be transferred automatically when the invoice is paid. If no amount is set, the full amount is transferred. There cannot be any line items with recurring prices when using this field.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :amount
        # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the destination account. By default, the entire amount is transferred to the destination. There must be at least 1 line item with a recurring price to use this field.
        sig { returns(T.nilable(Float)) }
        attr_accessor :amount_percent
        # ID of an existing, connected Stripe account.
        sig { returns(String) }
        attr_accessor :destination
        sig {
          params(amount: T.nilable(Integer), amount_percent: T.nilable(Float), destination: String).void
         }
        def initialize(amount: nil, amount_percent: nil, destination: nil); end
      end
      # Set to true to allow quote lines to have `starts_at` in the past if collection is paused between `starts_at` and now.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :allow_backdated_lines
      # The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. There cannot be any line items with recurring prices when using this field.
      sig { returns(T.nilable(T.any(String, Integer))) }
      attr_accessor :application_fee_amount
      # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account. There must be at least 1 line item with a recurring price to use this field.
      sig { returns(T.nilable(T.any(String, Float))) }
      attr_accessor :application_fee_percent
      # Settings for automatic tax lookup for this quote and resulting invoices and subscriptions.
      sig { returns(T.nilable(::Stripe::Quote::UpdateParams::AutomaticTax)) }
      attr_accessor :automatic_tax
      # Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay invoices at the end of the subscription cycle or at invoice finalization using the default payment method attached to the subscription or customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions and mark the subscription as `active`. Defaults to `charge_automatically`.
      sig { returns(T.nilable(String)) }
      attr_accessor :collection_method
      # The customer for which this quote belongs to. A customer is required before finalizing the quote. Once specified, it cannot be changed.
      sig { returns(T.nilable(String)) }
      attr_accessor :customer
      # The account for which this quote belongs to. A customer or account is required before finalizing the quote. Once specified, it cannot be changed.
      sig { returns(T.nilable(String)) }
      attr_accessor :customer_account
      # The tax rates that will apply to any line item that does not have `tax_rates` set.
      sig { returns(T.nilable(T.any(String, T::Array[String]))) }
      attr_accessor :default_tax_rates
      # A description that will be displayed on the quote PDF.
      sig { returns(T.nilable(String)) }
      attr_accessor :description
      # The discounts applied to the quote.
      sig { returns(T.nilable(T.any(String, T::Array[::Stripe::Quote::UpdateParams::Discount]))) }
      attr_accessor :discounts
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # A future timestamp on which the quote will be canceled if in `open` or `draft` status. Measured in seconds since the Unix epoch.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :expires_at
      # A footer that will be displayed on the quote PDF.
      sig { returns(T.nilable(String)) }
      attr_accessor :footer
      # A header that will be displayed on the quote PDF.
      sig { returns(T.nilable(String)) }
      attr_accessor :header
      # All invoices will be billed using the specified settings.
      sig { returns(T.nilable(::Stripe::Quote::UpdateParams::InvoiceSettings)) }
      attr_accessor :invoice_settings
      # A list of line items the customer is being quoted for. Each line item includes information about the product, the quantity, and the resulting cost.
      sig { returns(T.nilable(T::Array[::Stripe::Quote::UpdateParams::LineItem])) }
      attr_accessor :line_items
      # A list of [quote lines](https://docs.stripe.com/api/quote_lines) on the quote. These lines describe changes, in the order provided, that will be used to create new subscription schedules or update existing subscription schedules when the quote is accepted.
      sig { returns(T.nilable(T::Array[::Stripe::Quote::UpdateParams::Line])) }
      attr_accessor :lines
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_accessor :metadata
      # The account on behalf of which to charge.
      sig { returns(T.nilable(String)) }
      attr_accessor :on_behalf_of
      # When creating a subscription or subscription schedule, the specified configuration data will be used. There must be at least one line item with a recurring price for a subscription or subscription schedule to be created. A subscription schedule is created if `subscription_data[effective_date]` is present and in the future, otherwise a subscription is created.
      sig { returns(T.nilable(::Stripe::Quote::UpdateParams::SubscriptionData)) }
      attr_accessor :subscription_data
      # List representing overrides for `subscription_data` configurations for specific subscription schedules.
      sig {
        returns(T.nilable(T.any(String, T::Array[::Stripe::Quote::UpdateParams::SubscriptionDataOverride])))
       }
      attr_accessor :subscription_data_overrides
      # The data with which to automatically create a Transfer for each of the invoices.
      sig { returns(T.nilable(T.any(String, ::Stripe::Quote::UpdateParams::TransferData))) }
      attr_accessor :transfer_data
      sig {
        params(allow_backdated_lines: T.nilable(T::Boolean), application_fee_amount: T.nilable(T.any(String, Integer)), application_fee_percent: T.nilable(T.any(String, Float)), automatic_tax: T.nilable(::Stripe::Quote::UpdateParams::AutomaticTax), collection_method: T.nilable(String), customer: T.nilable(String), customer_account: T.nilable(String), default_tax_rates: T.nilable(T.any(String, T::Array[String])), description: T.nilable(String), discounts: T.nilable(T.any(String, T::Array[::Stripe::Quote::UpdateParams::Discount])), expand: T.nilable(T::Array[String]), expires_at: T.nilable(Integer), footer: T.nilable(String), header: T.nilable(String), invoice_settings: T.nilable(::Stripe::Quote::UpdateParams::InvoiceSettings), line_items: T.nilable(T::Array[::Stripe::Quote::UpdateParams::LineItem]), lines: T.nilable(T::Array[::Stripe::Quote::UpdateParams::Line]), metadata: T.nilable(T::Hash[String, String]), on_behalf_of: T.nilable(String), subscription_data: T.nilable(::Stripe::Quote::UpdateParams::SubscriptionData), subscription_data_overrides: T.nilable(T.any(String, T::Array[::Stripe::Quote::UpdateParams::SubscriptionDataOverride])), transfer_data: T.nilable(T.any(String, ::Stripe::Quote::UpdateParams::TransferData))).void
       }
      def initialize(
        allow_backdated_lines: nil,
        application_fee_amount: nil,
        application_fee_percent: nil,
        automatic_tax: nil,
        collection_method: nil,
        customer: nil,
        customer_account: nil,
        default_tax_rates: nil,
        description: nil,
        discounts: nil,
        expand: nil,
        expires_at: nil,
        footer: nil,
        header: nil,
        invoice_settings: nil,
        line_items: nil,
        lines: nil,
        metadata: nil,
        on_behalf_of: nil,
        subscription_data: nil,
        subscription_data_overrides: nil,
        transfer_data: nil
      ); end
    end
    class ListComputedUpfrontLineItemsParams < Stripe::RequestParams
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      sig { returns(T.nilable(String)) }
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :limit
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(T.nilable(String)) }
      attr_accessor :starting_after
      sig {
        params(ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String)).void
       }
      def initialize(ending_before: nil, expand: nil, limit: nil, starting_after: nil); end
    end
    class ListLineItemsParams < Stripe::RequestParams
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      sig { returns(T.nilable(String)) }
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :limit
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(T.nilable(String)) }
      attr_accessor :starting_after
      sig {
        params(ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String)).void
       }
      def initialize(ending_before: nil, expand: nil, limit: nil, starting_after: nil); end
    end
    class ListLinesParams < Stripe::RequestParams
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      sig { returns(T.nilable(String)) }
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :limit
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(T.nilable(String)) }
      attr_accessor :starting_after
      sig {
        params(ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String)).void
       }
      def initialize(ending_before: nil, expand: nil, limit: nil, starting_after: nil); end
    end
    class AcceptParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      sig { params(expand: T.nilable(T::Array[String])).void }
      def initialize(expand: nil); end
    end
    class CancelParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      sig { params(expand: T.nilable(T::Array[String])).void }
      def initialize(expand: nil); end
    end
    class FinalizeQuoteParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # A future timestamp on which the quote will be canceled if in `open` or `draft` status. Measured in seconds since the Unix epoch.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :expires_at
      sig { params(expand: T.nilable(T::Array[String]), expires_at: T.nilable(Integer)).void }
      def initialize(expand: nil, expires_at: nil); end
    end
    class MarkDraftParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      sig { params(expand: T.nilable(T::Array[String])).void }
      def initialize(expand: nil); end
    end
    class MarkStaleParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # Reason the Quote is being marked stale.
      sig { returns(T.nilable(String)) }
      attr_accessor :reason
      sig { params(expand: T.nilable(T::Array[String]), reason: T.nilable(String)).void }
      def initialize(expand: nil, reason: nil); end
    end
    class ReestimateParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      sig { params(expand: T.nilable(T::Array[String])).void }
      def initialize(expand: nil); end
    end
    class PdfParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      sig { params(expand: T.nilable(T::Array[String])).void }
      def initialize(expand: nil); end
    end
    class ListPreviewInvoiceLinesParams < Stripe::RequestParams
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      sig { returns(T.nilable(String)) }
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :limit
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(T.nilable(String)) }
      attr_accessor :starting_after
      sig {
        params(ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String)).void
       }
      def initialize(ending_before: nil, expand: nil, limit: nil, starting_after: nil); end
    end
    # Accepts the specified quote.
    sig {
      params(params: T.any(::Stripe::Quote::AcceptParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Quote)
     }
    def accept(params = {}, opts = {}); end

    # Accepts the specified quote.
    sig {
      params(quote: String, params: T.any(::Stripe::Quote::AcceptParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Quote)
     }
    def self.accept(quote, params = {}, opts = {}); end

    # Cancels the quote.
    sig {
      params(params: T.any(::Stripe::Quote::CancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Quote)
     }
    def cancel(params = {}, opts = {}); end

    # Cancels the quote.
    sig {
      params(quote: String, params: T.any(::Stripe::Quote::CancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Quote)
     }
    def self.cancel(quote, params = {}, opts = {}); end

    # A quote models prices and services for a customer. Default options for header, description, footer, and expires_at can be set in the dashboard via the [quote template](https://dashboard.stripe.com/settings/billing/quote).
    sig {
      params(params: T.any(::Stripe::Quote::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Quote)
     }
    def self.create(params = {}, opts = {}); end

    # Finalizes the quote.
    sig {
      params(params: T.any(::Stripe::Quote::FinalizeQuoteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Quote)
     }
    def finalize_quote(params = {}, opts = {}); end

    # Finalizes the quote.
    sig {
      params(quote: String, params: T.any(::Stripe::Quote::FinalizeQuoteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Quote)
     }
    def self.finalize_quote(quote, params = {}, opts = {}); end

    # Returns a list of your quotes.
    sig {
      params(params: T.any(::Stripe::Quote::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def self.list(params = {}, opts = {}); end

    # When retrieving a quote, there is an includable [computed.upfront.line_items](https://stripe.com/docs/api/quotes/object#quote_object-computed-upfront-line_items) property containing the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of upfront line items.
    sig {
      params(params: T.any(::Stripe::Quote::ListComputedUpfrontLineItemsParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def list_computed_upfront_line_items(params = {}, opts = {}); end

    # When retrieving a quote, there is an includable [computed.upfront.line_items](https://stripe.com/docs/api/quotes/object#quote_object-computed-upfront-line_items) property containing the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of upfront line items.
    sig {
      params(quote: String, params: T.any(::Stripe::Quote::ListComputedUpfrontLineItemsParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def self.list_computed_upfront_line_items(quote, params = {}, opts = {}); end

    # When retrieving a quote, there is an includable line_items property containing the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of line items.
    sig {
      params(params: T.any(::Stripe::Quote::ListLineItemsParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def list_line_items(params = {}, opts = {}); end

    # When retrieving a quote, there is an includable line_items property containing the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of line items.
    sig {
      params(quote: String, params: T.any(::Stripe::Quote::ListLineItemsParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def self.list_line_items(quote, params = {}, opts = {}); end

    # Retrieves a paginated list of lines for a quote. These lines describe changes that will be used to create new subscription schedules or update existing subscription schedules when the quote is accepted.
    sig {
      params(params: T.any(::Stripe::Quote::ListLinesParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def list_lines(params = {}, opts = {}); end

    # Retrieves a paginated list of lines for a quote. These lines describe changes that will be used to create new subscription schedules or update existing subscription schedules when the quote is accepted.
    sig {
      params(quote: String, params: T.any(::Stripe::Quote::ListLinesParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def self.list_lines(quote, params = {}, opts = {}); end

    # Preview the invoice line items that would be generated by accepting the quote.
    sig {
      params(preview_invoice: String, params: T.any(::Stripe::Quote::ListPreviewInvoiceLinesParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def list_preview_invoice_lines(preview_invoice, params = {}, opts = {}); end

    # Preview the invoice line items that would be generated by accepting the quote.
    sig {
      params(quote: String, preview_invoice: String, params: T.any(::Stripe::Quote::ListPreviewInvoiceLinesParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def self.list_preview_invoice_lines(quote, preview_invoice, params = {}, opts = {}); end

    # Converts a stale quote to draft.
    sig {
      params(params: T.any(::Stripe::Quote::MarkDraftParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Quote)
     }
    def mark_draft(params = {}, opts = {}); end

    # Converts a stale quote to draft.
    sig {
      params(quote: String, params: T.any(::Stripe::Quote::MarkDraftParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Quote)
     }
    def self.mark_draft(quote, params = {}, opts = {}); end

    # Converts a draft or open quote to stale.
    sig {
      params(params: T.any(::Stripe::Quote::MarkStaleParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Quote)
     }
    def mark_stale(params = {}, opts = {}); end

    # Converts a draft or open quote to stale.
    sig {
      params(quote: String, params: T.any(::Stripe::Quote::MarkStaleParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Quote)
     }
    def self.mark_stale(quote, params = {}, opts = {}); end

    # Download the PDF for a finalized quote. Explanation for special handling can be found [here](https://docs.stripe.com/quotes/overview#quote_pdf)
    sig {
      params(params: T.any(::Stripe::Quote::PdfParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped, read_body_chunk_block: T.untyped).returns(T.untyped)
     }
    def pdf(params = {}, opts = {}, &read_body_chunk_block); end

    # Download the PDF for a finalized quote. Explanation for special handling can be found [here](https://docs.stripe.com/quotes/overview#quote_pdf)
    sig {
      params(quote: String, params: T.any(::Stripe::Quote::PdfParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped, read_body_chunk_block: T.untyped).returns(T.untyped)
     }
    def self.pdf(quote, params = {}, opts = {}, &read_body_chunk_block); end

    # Recompute the upcoming invoice estimate for the quote.
    sig {
      params(params: T.any(::Stripe::Quote::ReestimateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Quote)
     }
    def reestimate(params = {}, opts = {}); end

    # Recompute the upcoming invoice estimate for the quote.
    sig {
      params(quote: String, params: T.any(::Stripe::Quote::ReestimateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Quote)
     }
    def self.reestimate(quote, params = {}, opts = {}); end

    # A quote models prices and services for a customer.
    sig {
      params(quote: String, params: T.any(::Stripe::Quote::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Quote)
     }
    def self.update(quote, params = {}, opts = {}); end
  end
end