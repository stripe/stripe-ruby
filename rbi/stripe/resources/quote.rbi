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
  end
end