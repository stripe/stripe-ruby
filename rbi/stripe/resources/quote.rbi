# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # A Quote is a way to model prices that you'd like to provide to a customer.
  # Once accepted, it will automatically create an invoice, subscription or subscription schedule.
  class Quote < APIResource
    class AutomaticTax < ::Stripe::StripeObject
      class Liability < ::Stripe::StripeObject
        # The connected account being referenced when `type` is `account`.
        sig { returns(T.nilable(T.any(String, ::Stripe::Account))) }
        def account; end
        # Type of the account referenced.
        sig { returns(String) }
        def type; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Automatically calculate taxes
      sig { returns(T::Boolean) }
      def enabled; end
      # The account that's liable for tax. If set, the business address and tax registrations required to perform the tax calculation are loaded from this account. The tax transaction is returned in the report of the connected account.
      sig { returns(T.nilable(Liability)) }
      def liability; end
      # The tax provider powering automatic tax.
      sig { returns(T.nilable(String)) }
      def provider; end
      # The status of the most recent automated tax calculation for this quote.
      sig { returns(T.nilable(String)) }
      def status; end
      def self.inner_class_types
        @inner_class_types = {liability: Liability}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    class Computed < ::Stripe::StripeObject
      class LastReestimationDetails < ::Stripe::StripeObject
        class Failed < ::Stripe::StripeObject
          # The failure `code` is more granular than the `reason` provided and may correspond to a Stripe error code. For automation errors, this field is one of: `reverse_api_failure`, `reverse_api_deadline_exceeeded`, or `reverse_api_response_validation_error`, which are Stripe error codes and map to the error `message` field.
          sig { returns(T.nilable(String)) }
          def failure_code; end
          # Information derived from the `failure_code` or a freeform message that explains the error as a human-readable English string. For example, "margin ID is not a valid ID".
          sig { returns(T.nilable(String)) }
          def message; end
          # The reason the reestimation failed.
          sig { returns(String) }
          def reason; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # When `status` is `failed`, provides details about the quote reestimation failure.
        sig { returns(T.nilable(Failed)) }
        def failed; end
        # Latest status of the reestimation.
        sig { returns(String) }
        def status; end
        def self.inner_class_types
          @inner_class_types = {failed: Failed}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class Recurring < ::Stripe::StripeObject
        class TotalDetails < ::Stripe::StripeObject
          class Breakdown < ::Stripe::StripeObject
            class Discount < ::Stripe::StripeObject
              # The amount discounted.
              sig { returns(Integer) }
              def amount; end
              # A discount represents the actual application of a [coupon](https://stripe.com/docs/api#coupons) or [promotion code](https://stripe.com/docs/api#promotion_codes).
              # It contains information about when the discount began, when it will end, and what it is applied to.
              #
              # Related guide: [Applying discounts to subscriptions](https://stripe.com/docs/billing/subscriptions/discounts)
              sig { returns(::Stripe::Discount) }
              def discount; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            class Tax < ::Stripe::StripeObject
              # Amount of tax applied for this rate.
              sig { returns(Integer) }
              def amount; end
              # Tax rates can be applied to [invoices](/invoicing/taxes/tax-rates), [subscriptions](/billing/taxes/tax-rates) and [Checkout Sessions](/payments/checkout/use-manual-tax-rates) to collect tax.
              #
              # Related guide: [Tax rates](/billing/taxes/tax-rates)
              sig { returns(::Stripe::TaxRate) }
              def rate; end
              # The reasoning behind this tax, for example, if the product is tax exempt. The possible values for this field may be extended as new tax rules are supported.
              sig { returns(T.nilable(String)) }
              def taxability_reason; end
              # The amount on which tax is calculated, in cents (or local equivalent).
              sig { returns(T.nilable(Integer)) }
              def taxable_amount; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The aggregated discounts.
            sig { returns(T::Array[Discount]) }
            def discounts; end
            # The aggregated tax amounts by rate.
            sig { returns(T::Array[Tax]) }
            def taxes; end
            def self.inner_class_types
              @inner_class_types = {discounts: Discount, taxes: Tax}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # This is the sum of all the discounts.
          sig { returns(Integer) }
          def amount_discount; end
          # This is the sum of all the shipping amounts.
          sig { returns(T.nilable(Integer)) }
          def amount_shipping; end
          # This is the sum of all the tax amounts.
          sig { returns(Integer) }
          def amount_tax; end
          # Attribute for field breakdown
          sig { returns(T.nilable(Breakdown)) }
          def breakdown; end
          def self.inner_class_types
            @inner_class_types = {breakdown: Breakdown}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Total before any discounts or taxes are applied.
        sig { returns(Integer) }
        def amount_subtotal; end
        # Total after discounts and taxes are applied.
        sig { returns(Integer) }
        def amount_total; end
        # The frequency at which a subscription is billed. One of `day`, `week`, `month` or `year`.
        sig { returns(String) }
        def interval; end
        # The number of intervals (specified in the `interval` attribute) between subscription billings. For example, `interval=month` and `interval_count=3` bills every 3 months.
        sig { returns(Integer) }
        def interval_count; end
        # Attribute for field total_details
        sig { returns(TotalDetails) }
        def total_details; end
        def self.inner_class_types
          @inner_class_types = {total_details: TotalDetails}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class Upfront < ::Stripe::StripeObject
        class TotalDetails < ::Stripe::StripeObject
          class Breakdown < ::Stripe::StripeObject
            class Discount < ::Stripe::StripeObject
              # The amount discounted.
              sig { returns(Integer) }
              def amount; end
              # A discount represents the actual application of a [coupon](https://stripe.com/docs/api#coupons) or [promotion code](https://stripe.com/docs/api#promotion_codes).
              # It contains information about when the discount began, when it will end, and what it is applied to.
              #
              # Related guide: [Applying discounts to subscriptions](https://stripe.com/docs/billing/subscriptions/discounts)
              sig { returns(::Stripe::Discount) }
              def discount; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            class Tax < ::Stripe::StripeObject
              # Amount of tax applied for this rate.
              sig { returns(Integer) }
              def amount; end
              # Tax rates can be applied to [invoices](/invoicing/taxes/tax-rates), [subscriptions](/billing/taxes/tax-rates) and [Checkout Sessions](/payments/checkout/use-manual-tax-rates) to collect tax.
              #
              # Related guide: [Tax rates](/billing/taxes/tax-rates)
              sig { returns(::Stripe::TaxRate) }
              def rate; end
              # The reasoning behind this tax, for example, if the product is tax exempt. The possible values for this field may be extended as new tax rules are supported.
              sig { returns(T.nilable(String)) }
              def taxability_reason; end
              # The amount on which tax is calculated, in cents (or local equivalent).
              sig { returns(T.nilable(Integer)) }
              def taxable_amount; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The aggregated discounts.
            sig { returns(T::Array[Discount]) }
            def discounts; end
            # The aggregated tax amounts by rate.
            sig { returns(T::Array[Tax]) }
            def taxes; end
            def self.inner_class_types
              @inner_class_types = {discounts: Discount, taxes: Tax}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # This is the sum of all the discounts.
          sig { returns(Integer) }
          def amount_discount; end
          # This is the sum of all the shipping amounts.
          sig { returns(T.nilable(Integer)) }
          def amount_shipping; end
          # This is the sum of all the tax amounts.
          sig { returns(Integer) }
          def amount_tax; end
          # Attribute for field breakdown
          sig { returns(T.nilable(Breakdown)) }
          def breakdown; end
          def self.inner_class_types
            @inner_class_types = {breakdown: Breakdown}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Total before any discounts or taxes are applied.
        sig { returns(Integer) }
        def amount_subtotal; end
        # Total after discounts and taxes are applied.
        sig { returns(Integer) }
        def amount_total; end
        # The line items that will appear on the next invoice after this quote is accepted. This does not include pending invoice items that exist on the customer but may still be included in the next invoice.
        sig { returns(T.nilable(::Stripe::ListObject)) }
        def line_items; end
        # Attribute for field total_details
        sig { returns(TotalDetails) }
        def total_details; end
        def self.inner_class_types
          @inner_class_types = {total_details: TotalDetails}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Details of the most recent reestimate of the quote's preview schedules and upcoming invoices, including the status of Stripe's calculation.
      sig { returns(T.nilable(LastReestimationDetails)) }
      def last_reestimation_details; end
      # The definitive totals and line items the customer will be charged on a recurring basis. Takes into account the line items with recurring prices and discounts with `duration=forever` coupons only. Defaults to `null` if no inputted line items with recurring prices.
      sig { returns(T.nilable(Recurring)) }
      def recurring; end
      # The time at which the quote's estimated schedules and upcoming invoices were generated.
      sig { returns(T.nilable(Integer)) }
      def updated_at; end
      # Attribute for field upfront
      sig { returns(Upfront) }
      def upfront; end
      def self.inner_class_types
        @inner_class_types = {
          last_reestimation_details: LastReestimationDetails,
          recurring: Recurring,
          upfront: Upfront,
        }
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    class FromQuote < ::Stripe::StripeObject
      # Whether this quote is a revision of a different quote.
      sig { returns(T::Boolean) }
      def is_revision; end
      # The quote that was cloned.
      sig { returns(T.any(String, ::Stripe::Quote)) }
      def quote; end
      def self.inner_class_types
        @inner_class_types = {}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    class InvoiceSettings < ::Stripe::StripeObject
      class Issuer < ::Stripe::StripeObject
        # The connected account being referenced when `type` is `account`.
        sig { returns(T.nilable(T.any(String, ::Stripe::Account))) }
        def account; end
        # Type of the account referenced.
        sig { returns(String) }
        def type; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Number of days within which a customer must pay invoices generated by this quote. This value will be `null` for quotes where `collection_method=charge_automatically`.
      sig { returns(T.nilable(Integer)) }
      def days_until_due; end
      # Attribute for field issuer
      sig { returns(Issuer) }
      def issuer; end
      def self.inner_class_types
        @inner_class_types = {issuer: Issuer}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    class StatusDetails < ::Stripe::StripeObject
      class Canceled < ::Stripe::StripeObject
        # The reason this quote was marked as canceled.
        sig { returns(T.nilable(String)) }
        def reason; end
        # Time at which the quote was marked as canceled. Measured in seconds since the Unix epoch.
        sig { returns(T.nilable(Integer)) }
        def transitioned_at; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class Stale < ::Stripe::StripeObject
        class LastReason < ::Stripe::StripeObject
          class LinesInvalid < ::Stripe::StripeObject
            # The timestamp at which the lines were marked as invalid.
            sig { returns(Integer) }
            def invalid_at; end
            # The list of lines that became invalid at the given timestamp.
            sig { returns(T::Array[String]) }
            def lines; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class SubscriptionChanged < ::Stripe::StripeObject
            # The subscription's state before the quote was marked as stale.
            sig { returns(T.nilable(::Stripe::Subscription)) }
            def previous_subscription; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class SubscriptionScheduleChanged < ::Stripe::StripeObject
            # The subscription schedule's state before the quote was marked as stale.
            sig { returns(T.nilable(::Stripe::SubscriptionSchedule)) }
            def previous_subscription_schedule; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The ID of the line that is invalid if the stale reason type is `line_invalid`.
          sig { returns(T.nilable(String)) }
          def line_invalid; end
          # The IDs of the lines that are invalid if the stale reason type is `lines_invalid`.
          sig { returns(T.nilable(T::Array[LinesInvalid])) }
          def lines_invalid; end
          # The user supplied mark stale reason.
          sig { returns(T.nilable(String)) }
          def marked_stale; end
          # The ID of the subscription that was canceled.
          sig { returns(T.nilable(String)) }
          def subscription_canceled; end
          # Attribute for field subscription_changed
          sig { returns(T.nilable(SubscriptionChanged)) }
          def subscription_changed; end
          # The ID of the subscription that was expired.
          sig { returns(T.nilable(String)) }
          def subscription_expired; end
          # The ID of the subscription schedule that was canceled.
          sig { returns(T.nilable(String)) }
          def subscription_schedule_canceled; end
          # Attribute for field subscription_schedule_changed
          sig { returns(T.nilable(SubscriptionScheduleChanged)) }
          def subscription_schedule_changed; end
          # The ID of the subscription schedule that was released.
          sig { returns(T.nilable(String)) }
          def subscription_schedule_released; end
          # The reason the quote was marked as stale.
          sig { returns(T.nilable(String)) }
          def type; end
          def self.inner_class_types
            @inner_class_types = {
              lines_invalid: LinesInvalid,
              subscription_changed: SubscriptionChanged,
              subscription_schedule_changed: SubscriptionScheduleChanged,
            }
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Time at which the quote expires. Measured in seconds since the Unix epoch.
        sig { returns(T.nilable(Integer)) }
        def expires_at; end
        # The most recent reason this quote was marked as stale.
        sig { returns(T.nilable(LastReason)) }
        def last_reason; end
        # Time at which the stale reason was updated. Measured in seconds since the Unix epoch.
        sig { returns(T.nilable(Integer)) }
        def last_updated_at; end
        # Time at which the quote was marked as stale. Measured in seconds since the Unix epoch.
        sig { returns(T.nilable(Integer)) }
        def transitioned_at; end
        def self.inner_class_types
          @inner_class_types = {last_reason: LastReason}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Attribute for field canceled
      sig { returns(T.nilable(Canceled)) }
      def canceled; end
      # Attribute for field stale
      sig { returns(T.nilable(Stale)) }
      def stale; end
      def self.inner_class_types
        @inner_class_types = {canceled: Canceled, stale: Stale}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    class StatusTransitions < ::Stripe::StripeObject
      # The time that the quote was accepted. Measured in seconds since Unix epoch.
      sig { returns(T.nilable(Integer)) }
      def accepted_at; end
      # The time that the quote was canceled. Measured in seconds since Unix epoch.
      sig { returns(T.nilable(Integer)) }
      def canceled_at; end
      # The time that the quote was finalized. Measured in seconds since Unix epoch.
      sig { returns(T.nilable(Integer)) }
      def finalized_at; end
      def self.inner_class_types
        @inner_class_types = {}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    class SubscriptionData < ::Stripe::StripeObject
      class BillOnAcceptance < ::Stripe::StripeObject
        class BillFrom < ::Stripe::StripeObject
          class LineStartsAt < ::Stripe::StripeObject
            # Unique identifier for the object.
            sig { returns(String) }
            def id; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The materialized time.
          sig { returns(T.nilable(Integer)) }
          def computed; end
          # The timestamp the given line starts at.
          sig { returns(T.nilable(LineStartsAt)) }
          def line_starts_at; end
          # A precise Unix timestamp.
          sig { returns(T.nilable(Integer)) }
          def timestamp; end
          # The type of method to specify the `bill_from` time.
          sig { returns(String) }
          def type; end
          def self.inner_class_types
            @inner_class_types = {line_starts_at: LineStartsAt}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class BillUntil < ::Stripe::StripeObject
          class Duration < ::Stripe::StripeObject
            # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
            sig { returns(String) }
            def interval; end
            # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
            sig { returns(Integer) }
            def interval_count; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class LineEndsAt < ::Stripe::StripeObject
            # Unique identifier for the object.
            sig { returns(String) }
            def id; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The materialized time.
          sig { returns(T.nilable(Integer)) }
          def computed; end
          # Time span for the quote line starting from the `starts_at` date.
          sig { returns(T.nilable(Duration)) }
          def duration; end
          # The timestamp the given line ends at.
          sig { returns(T.nilable(LineEndsAt)) }
          def line_ends_at; end
          # A precise Unix timestamp.
          sig { returns(T.nilable(Integer)) }
          def timestamp; end
          # The type of method to specify the `bill_until` time.
          sig { returns(String) }
          def type; end
          def self.inner_class_types
            @inner_class_types = {duration: Duration, line_ends_at: LineEndsAt}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The start of the period to bill from when the Quote is accepted.
        sig { returns(T.nilable(BillFrom)) }
        def bill_from; end
        # The end of the period to bill until when the Quote is accepted.
        sig { returns(T.nilable(BillUntil)) }
        def bill_until; end
        def self.inner_class_types
          @inner_class_types = {bill_from: BillFrom, bill_until: BillUntil}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class BillingMode < ::Stripe::StripeObject
        class Flexible < ::Stripe::StripeObject
          # Controls how invoices and invoice items display proration amounts and discount amounts.
          sig { returns(T.nilable(String)) }
          def proration_discounts; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Attribute for field flexible
        sig { returns(T.nilable(Flexible)) }
        def flexible; end
        # Controls how prorations and invoices for subscriptions are calculated and orchestrated.
        sig { returns(String) }
        def type; end
        def self.inner_class_types
          @inner_class_types = {flexible: Flexible}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class BillingSchedule < ::Stripe::StripeObject
        class AppliesTo < ::Stripe::StripeObject
          # The billing schedule will apply to the subscription item with the given price ID.
          sig { returns(T.nilable(T.any(String, ::Stripe::Price))) }
          def price; end
          # Controls which subscription items the billing schedule applies to.
          sig { returns(String) }
          def type; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class BillFrom < ::Stripe::StripeObject
          class AmendmentStart < ::Stripe::StripeObject
            # Use an index to specify the position of an amendment to start prebilling with.
            sig { returns(Integer) }
            def index; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class LineStartsAt < ::Stripe::StripeObject
            # Unique identifier for the object.
            sig { returns(String) }
            def id; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class Relative < ::Stripe::StripeObject
            # Specifies billing duration. Possible values are `day`, `week`, `month`, or `year`.
            sig { returns(String) }
            def interval; end
            # The multiplier applied to the interval.
            sig { returns(T.nilable(Integer)) }
            def interval_count; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Use an index to specify the position of an amendment to start prebilling with.
          sig { returns(T.nilable(AmendmentStart)) }
          def amendment_start; end
          # The time the billing schedule applies from.
          sig { returns(T.nilable(Integer)) }
          def computed_timestamp; end
          # Lets you bill the period starting from a particular Quote line.
          sig { returns(T.nilable(LineStartsAt)) }
          def line_starts_at; end
          # Timestamp is calculated from the request time.
          sig { returns(T.nilable(Relative)) }
          def relative; end
          # Use a precise Unix timestamp for prebilling to start. Must be earlier than `bill_until`.
          sig { returns(T.nilable(Integer)) }
          def timestamp; end
          # Describes how the billing schedule determines the start date. Possible values are `timestamp`, `relative`, `amendment_start`, `now`, `quote_acceptance_date`, `line_starts_at`, or `pause_collection_start`.
          sig { returns(String) }
          def type; end
          def self.inner_class_types
            @inner_class_types = {
              amendment_start: AmendmentStart,
              line_starts_at: LineStartsAt,
              relative: Relative,
            }
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class BillUntil < ::Stripe::StripeObject
          class AmendmentEnd < ::Stripe::StripeObject
            # Use an index to specify the position of an amendment to end prebilling with.
            sig { returns(Integer) }
            def index; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class Duration < ::Stripe::StripeObject
            # Specifies billing duration. Either `day`, `week`, `month` or `year`.
            sig { returns(String) }
            def interval; end
            # The multiplier applied to the interval.
            sig { returns(T.nilable(Integer)) }
            def interval_count; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class LineEndsAt < ::Stripe::StripeObject
            # Unique identifier for the object.
            sig { returns(String) }
            def id; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Use an index to specify the position of an amendment to end prebilling with.
          sig { returns(T.nilable(AmendmentEnd)) }
          def amendment_end; end
          # The timestamp the billing schedule will apply until.
          sig { returns(Integer) }
          def computed_timestamp; end
          # Specifies the billing period.
          sig { returns(T.nilable(Duration)) }
          def duration; end
          # Lets you bill the period ending at a particular Quote line.
          sig { returns(T.nilable(LineEndsAt)) }
          def line_ends_at; end
          # If specified, the billing schedule will apply until the specified timestamp.
          sig { returns(T.nilable(Integer)) }
          def timestamp; end
          # Describes how the billing schedule will determine the end date. Either `duration` or `timestamp`.
          sig { returns(String) }
          def type; end
          def self.inner_class_types
            @inner_class_types = {
              amendment_end: AmendmentEnd,
              duration: Duration,
              line_ends_at: LineEndsAt,
            }
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Specifies which subscription items the billing schedule applies to.
        sig { returns(T.nilable(T::Array[AppliesTo])) }
        def applies_to; end
        # Specifies the start of the billing period.
        sig { returns(T.nilable(BillFrom)) }
        def bill_from; end
        # Specifies the end of billing period.
        sig { returns(BillUntil) }
        def bill_until; end
        # Unique identifier for the billing schedule.
        sig { returns(String) }
        def key; end
        def self.inner_class_types
          @inner_class_types = {applies_to: AppliesTo, bill_from: BillFrom, bill_until: BillUntil}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class Prebilling < ::Stripe::StripeObject
        # Attribute for field iterations
        sig { returns(Integer) }
        def iterations; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Describes the period to bill for upon accepting the quote.
      sig { returns(T.nilable(BillOnAcceptance)) }
      def bill_on_acceptance; end
      # Configures when the subscription schedule generates prorations for phase transitions. Possible values are `prorate_on_next_phase` or `prorate_up_front` with the default being `prorate_on_next_phase`. `prorate_on_next_phase` will apply phase changes and generate prorations at transition time. `prorate_up_front` will bill for all phases within the current billing cycle up front.
      sig { returns(T.nilable(String)) }
      def billing_behavior; end
      # Whether the subscription will always start a new billing period when the quote is accepted.
      sig { returns(T.nilable(String)) }
      def billing_cycle_anchor; end
      # The billing mode of the quote.
      sig { returns(BillingMode) }
      def billing_mode; end
      # Billing schedules that will be applied to the subscription or subscription schedule created from this quote.
      sig { returns(T.nilable(T::Array[BillingSchedule])) }
      def billing_schedules; end
      # The subscription's description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
      sig { returns(T.nilable(String)) }
      def description; end
      # When creating a new subscription, the date of which the subscription schedule will start after the quote is accepted. This date is ignored if it is in the past when the quote is accepted. Measured in seconds since the Unix epoch.
      sig { returns(T.nilable(Integer)) }
      def effective_date; end
      # Behavior of the subscription schedule and underlying subscription when it ends.
      sig { returns(T.nilable(String)) }
      def end_behavior; end
      # The id of the subscription that will be updated when the quote is accepted.
      sig { returns(T.nilable(T.any(String, ::Stripe::Subscription))) }
      def from_subscription; end
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that will set metadata on the subscription or subscription schedule when the quote is accepted. If a recurring price is included in `line_items`, this field will be passed to the resulting subscription's `metadata` field. If `subscription_data.effective_date` is used, this field will be passed to the resulting subscription schedule's `phases.metadata` field. Unlike object-level metadata, this field is declarative. Updates will clear prior values.
      sig { returns(T.nilable(T::Hash[String, String])) }
      def metadata; end
      # Configures how the subscription schedule handles billing for phase transitions. Possible values are `phase_start` (default) or `billing_period_start`. `phase_start` bills based on the current state of the subscription, ignoring changes scheduled in future phases. `billing_period_start` bills predictively for upcoming phase transitions within the current billing cycle, including pricing changes and service period adjustments that will occur before the next invoice.
      sig { returns(T.nilable(String)) }
      def phase_effective_at; end
      # If specified, the invoicing for the given billing cycle iterations will be processed when the quote is accepted. Cannot be used with `effective_date`.
      sig { returns(T.nilable(Prebilling)) }
      def prebilling; end
      # Determines how to handle [prorations](https://stripe.com/docs/subscriptions/billing-cycle#prorations) when the quote is accepted.
      sig { returns(T.nilable(String)) }
      def proration_behavior; end
      # Integer representing the number of trial period days before the customer is charged for the first time.
      sig { returns(T.nilable(Integer)) }
      def trial_period_days; end
      def self.inner_class_types
        @inner_class_types = {
          bill_on_acceptance: BillOnAcceptance,
          billing_mode: BillingMode,
          billing_schedules: BillingSchedule,
          prebilling: Prebilling,
        }
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    class SubscriptionDataOverride < ::Stripe::StripeObject
      class AppliesTo < ::Stripe::StripeObject
        # A custom string that identifies a new subscription schedule being created upon quote acceptance. All quote lines with the same `new_reference` field will be applied to the creation of a new subscription schedule.
        sig { returns(T.nilable(String)) }
        def new_reference; end
        # The ID of the schedule the line applies to.
        sig { returns(T.nilable(String)) }
        def subscription_schedule; end
        # Describes whether the quote line is affecting a new schedule or an existing schedule.
        sig { returns(String) }
        def type; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class BillOnAcceptance < ::Stripe::StripeObject
        class BillFrom < ::Stripe::StripeObject
          class LineStartsAt < ::Stripe::StripeObject
            # Unique identifier for the object.
            sig { returns(String) }
            def id; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The materialized time.
          sig { returns(T.nilable(Integer)) }
          def computed; end
          # The timestamp the given line starts at.
          sig { returns(T.nilable(LineStartsAt)) }
          def line_starts_at; end
          # A precise Unix timestamp.
          sig { returns(T.nilable(Integer)) }
          def timestamp; end
          # The type of method to specify the `bill_from` time.
          sig { returns(String) }
          def type; end
          def self.inner_class_types
            @inner_class_types = {line_starts_at: LineStartsAt}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class BillUntil < ::Stripe::StripeObject
          class Duration < ::Stripe::StripeObject
            # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
            sig { returns(String) }
            def interval; end
            # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
            sig { returns(Integer) }
            def interval_count; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class LineEndsAt < ::Stripe::StripeObject
            # Unique identifier for the object.
            sig { returns(String) }
            def id; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The materialized time.
          sig { returns(T.nilable(Integer)) }
          def computed; end
          # Time span for the quote line starting from the `starts_at` date.
          sig { returns(T.nilable(Duration)) }
          def duration; end
          # The timestamp the given line ends at.
          sig { returns(T.nilable(LineEndsAt)) }
          def line_ends_at; end
          # A precise Unix timestamp.
          sig { returns(T.nilable(Integer)) }
          def timestamp; end
          # The type of method to specify the `bill_until` time.
          sig { returns(String) }
          def type; end
          def self.inner_class_types
            @inner_class_types = {duration: Duration, line_ends_at: LineEndsAt}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The start of the period to bill from when the Quote is accepted.
        sig { returns(T.nilable(BillFrom)) }
        def bill_from; end
        # The end of the period to bill until when the Quote is accepted.
        sig { returns(T.nilable(BillUntil)) }
        def bill_until; end
        def self.inner_class_types
          @inner_class_types = {bill_from: BillFrom, bill_until: BillUntil}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class BillingSchedule < ::Stripe::StripeObject
        class AppliesTo < ::Stripe::StripeObject
          # The billing schedule will apply to the subscription item with the given price ID.
          sig { returns(T.nilable(T.any(String, ::Stripe::Price))) }
          def price; end
          # Controls which subscription items the billing schedule applies to.
          sig { returns(String) }
          def type; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class BillFrom < ::Stripe::StripeObject
          class AmendmentStart < ::Stripe::StripeObject
            # Use an index to specify the position of an amendment to start prebilling with.
            sig { returns(Integer) }
            def index; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class LineStartsAt < ::Stripe::StripeObject
            # Unique identifier for the object.
            sig { returns(String) }
            def id; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class Relative < ::Stripe::StripeObject
            # Specifies billing duration. Possible values are `day`, `week`, `month`, or `year`.
            sig { returns(String) }
            def interval; end
            # The multiplier applied to the interval.
            sig { returns(T.nilable(Integer)) }
            def interval_count; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Use an index to specify the position of an amendment to start prebilling with.
          sig { returns(T.nilable(AmendmentStart)) }
          def amendment_start; end
          # The time the billing schedule applies from.
          sig { returns(T.nilable(Integer)) }
          def computed_timestamp; end
          # Lets you bill the period starting from a particular Quote line.
          sig { returns(T.nilable(LineStartsAt)) }
          def line_starts_at; end
          # Timestamp is calculated from the request time.
          sig { returns(T.nilable(Relative)) }
          def relative; end
          # Use a precise Unix timestamp for prebilling to start. Must be earlier than `bill_until`.
          sig { returns(T.nilable(Integer)) }
          def timestamp; end
          # Describes how the billing schedule determines the start date. Possible values are `timestamp`, `relative`, `amendment_start`, `now`, `quote_acceptance_date`, `line_starts_at`, or `pause_collection_start`.
          sig { returns(String) }
          def type; end
          def self.inner_class_types
            @inner_class_types = {
              amendment_start: AmendmentStart,
              line_starts_at: LineStartsAt,
              relative: Relative,
            }
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class BillUntil < ::Stripe::StripeObject
          class AmendmentEnd < ::Stripe::StripeObject
            # Use an index to specify the position of an amendment to end prebilling with.
            sig { returns(Integer) }
            def index; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class Duration < ::Stripe::StripeObject
            # Specifies billing duration. Either `day`, `week`, `month` or `year`.
            sig { returns(String) }
            def interval; end
            # The multiplier applied to the interval.
            sig { returns(T.nilable(Integer)) }
            def interval_count; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class LineEndsAt < ::Stripe::StripeObject
            # Unique identifier for the object.
            sig { returns(String) }
            def id; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Use an index to specify the position of an amendment to end prebilling with.
          sig { returns(T.nilable(AmendmentEnd)) }
          def amendment_end; end
          # The timestamp the billing schedule will apply until.
          sig { returns(Integer) }
          def computed_timestamp; end
          # Specifies the billing period.
          sig { returns(T.nilable(Duration)) }
          def duration; end
          # Lets you bill the period ending at a particular Quote line.
          sig { returns(T.nilable(LineEndsAt)) }
          def line_ends_at; end
          # If specified, the billing schedule will apply until the specified timestamp.
          sig { returns(T.nilable(Integer)) }
          def timestamp; end
          # Describes how the billing schedule will determine the end date. Either `duration` or `timestamp`.
          sig { returns(String) }
          def type; end
          def self.inner_class_types
            @inner_class_types = {
              amendment_end: AmendmentEnd,
              duration: Duration,
              line_ends_at: LineEndsAt,
            }
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Specifies which subscription items the billing schedule applies to.
        sig { returns(T.nilable(T::Array[AppliesTo])) }
        def applies_to; end
        # Specifies the start of the billing period.
        sig { returns(T.nilable(BillFrom)) }
        def bill_from; end
        # Specifies the end of billing period.
        sig { returns(BillUntil) }
        def bill_until; end
        # Unique identifier for the billing schedule.
        sig { returns(String) }
        def key; end
        def self.inner_class_types
          @inner_class_types = {applies_to: AppliesTo, bill_from: BillFrom, bill_until: BillUntil}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Attribute for field applies_to
      sig { returns(AppliesTo) }
      def applies_to; end
      # Describes the period to bill for upon accepting the quote.
      sig { returns(T.nilable(BillOnAcceptance)) }
      def bill_on_acceptance; end
      # Configures when the subscription schedule generates prorations for phase transitions. Possible values are `prorate_on_next_phase` or `prorate_up_front` with the default being `prorate_on_next_phase`. `prorate_on_next_phase` will apply phase changes and generate prorations at transition time. `prorate_up_front` will bill for all phases within the current billing cycle up front.
      sig { returns(T.nilable(String)) }
      def billing_behavior; end
      # Billing schedules that will be applied to the subscription or subscription schedule created from this quote.
      sig { returns(T.nilable(T::Array[BillingSchedule])) }
      def billing_schedules; end
      # The customer which this quote belongs to. A customer is required before finalizing the quote. Once specified, it cannot be changed.
      sig { returns(T.nilable(String)) }
      def customer; end
      # The subscription's description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
      sig { returns(T.nilable(String)) }
      def description; end
      # Behavior of the subscription schedule and underlying subscription when it ends.
      sig { returns(T.nilable(String)) }
      def end_behavior; end
      # Configures how the subscription schedule handles billing for phase transitions. Possible values are `phase_start` (default) or `billing_period_start`. `phase_start` bills based on the current state of the subscription, ignoring changes scheduled in future phases. `billing_period_start` bills predictively for upcoming phase transitions within the current billing cycle, including pricing changes and service period adjustments that will occur before the next invoice.
      sig { returns(T.nilable(String)) }
      def phase_effective_at; end
      # Determines how to handle [prorations](https://stripe.com/docs/subscriptions/billing-cycle#prorations) when the quote is accepted.
      sig { returns(T.nilable(String)) }
      def proration_behavior; end
      def self.inner_class_types
        @inner_class_types = {
          applies_to: AppliesTo,
          bill_on_acceptance: BillOnAcceptance,
          billing_schedules: BillingSchedule,
        }
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    class SubscriptionSchedule < ::Stripe::StripeObject
      class AppliesTo < ::Stripe::StripeObject
        # A custom string that identifies a new subscription schedule being created upon quote acceptance. All quote lines with the same `new_reference` field will be applied to the creation of a new subscription schedule.
        sig { returns(T.nilable(String)) }
        def new_reference; end
        # The ID of the schedule the line applies to.
        sig { returns(T.nilable(String)) }
        def subscription_schedule; end
        # Describes whether the quote line is affecting a new schedule or an existing schedule.
        sig { returns(String) }
        def type; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Attribute for field applies_to
      sig { returns(AppliesTo) }
      def applies_to; end
      # The subscription schedule that was created or updated from this quote.
      sig { returns(String) }
      def subscription_schedule; end
      def self.inner_class_types
        @inner_class_types = {applies_to: AppliesTo}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    class TotalDetails < ::Stripe::StripeObject
      class Breakdown < ::Stripe::StripeObject
        class Discount < ::Stripe::StripeObject
          # The amount discounted.
          sig { returns(Integer) }
          def amount; end
          # A discount represents the actual application of a [coupon](https://stripe.com/docs/api#coupons) or [promotion code](https://stripe.com/docs/api#promotion_codes).
          # It contains information about when the discount began, when it will end, and what it is applied to.
          #
          # Related guide: [Applying discounts to subscriptions](https://stripe.com/docs/billing/subscriptions/discounts)
          sig { returns(::Stripe::Discount) }
          def discount; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class Tax < ::Stripe::StripeObject
          # Amount of tax applied for this rate.
          sig { returns(Integer) }
          def amount; end
          # Tax rates can be applied to [invoices](/invoicing/taxes/tax-rates), [subscriptions](/billing/taxes/tax-rates) and [Checkout Sessions](/payments/checkout/use-manual-tax-rates) to collect tax.
          #
          # Related guide: [Tax rates](/billing/taxes/tax-rates)
          sig { returns(::Stripe::TaxRate) }
          def rate; end
          # The reasoning behind this tax, for example, if the product is tax exempt. The possible values for this field may be extended as new tax rules are supported.
          sig { returns(T.nilable(String)) }
          def taxability_reason; end
          # The amount on which tax is calculated, in cents (or local equivalent).
          sig { returns(T.nilable(Integer)) }
          def taxable_amount; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The aggregated discounts.
        sig { returns(T::Array[Discount]) }
        def discounts; end
        # The aggregated tax amounts by rate.
        sig { returns(T::Array[Tax]) }
        def taxes; end
        def self.inner_class_types
          @inner_class_types = {discounts: Discount, taxes: Tax}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # This is the sum of all the discounts.
      sig { returns(Integer) }
      def amount_discount; end
      # This is the sum of all the shipping amounts.
      sig { returns(T.nilable(Integer)) }
      def amount_shipping; end
      # This is the sum of all the tax amounts.
      sig { returns(Integer) }
      def amount_tax; end
      # Attribute for field breakdown
      sig { returns(T.nilable(Breakdown)) }
      def breakdown; end
      def self.inner_class_types
        @inner_class_types = {breakdown: Breakdown}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    class TransferData < ::Stripe::StripeObject
      # The amount in cents (or local equivalent) that will be transferred to the destination account when the invoice is paid. By default, the entire amount is transferred to the destination.
      sig { returns(T.nilable(Integer)) }
      def amount; end
      # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the destination account. By default, the entire amount will be transferred to the destination.
      sig { returns(T.nilable(Float)) }
      def amount_percent; end
      # The account where funds from the payment will be transferred to upon payment success.
      sig { returns(T.any(String, ::Stripe::Account)) }
      def destination; end
      def self.inner_class_types
        @inner_class_types = {}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    # Allow quote lines to have `starts_at` in the past if collection is paused between `starts_at` and now.
    sig { returns(T.nilable(T::Boolean)) }
    def allow_backdated_lines; end
    # Total before any discounts or taxes are applied.
    sig { returns(Integer) }
    def amount_subtotal; end
    # Total after discounts and taxes are applied.
    sig { returns(Integer) }
    def amount_total; end
    # ID of the Connect Application that created the quote.
    sig { returns(T.nilable(T.any(String, ::Stripe::Application))) }
    def application; end
    # The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. Only applicable if there are no line items with recurring prices on the quote.
    sig { returns(T.nilable(Integer)) }
    def application_fee_amount; end
    # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account. Only applicable if there are line items with recurring prices on the quote.
    sig { returns(T.nilable(Float)) }
    def application_fee_percent; end
    # Attribute for field automatic_tax
    sig { returns(AutomaticTax) }
    def automatic_tax; end
    # Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay invoices at the end of the subscription cycle or on finalization using the default payment method attached to the subscription or customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions and mark the subscription as `active`. Defaults to `charge_automatically`.
    sig { returns(String) }
    def collection_method; end
    # Attribute for field computed
    sig { returns(Computed) }
    def computed; end
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    def created; end
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    sig { returns(T.nilable(String)) }
    def currency; end
    # The customer which this quote belongs to. A customer is required before finalizing the quote. Once specified, it cannot be changed.
    sig { returns(T.nilable(T.any(String, ::Stripe::Customer))) }
    def customer; end
    # The account which this quote belongs to. A customer or account is required before finalizing the quote. Once specified, it cannot be changed.
    sig { returns(T.nilable(String)) }
    def customer_account; end
    # The tax rates applied to this quote.
    sig { returns(T.nilable(T::Array[T.any(String, ::Stripe::TaxRate)])) }
    def default_tax_rates; end
    # A description that will be displayed on the quote PDF.
    sig { returns(T.nilable(String)) }
    def description; end
    # The discounts applied to this quote.
    sig { returns(T::Array[T.any(String, ::Stripe::Discount)]) }
    def discounts; end
    # The date on which the quote will be canceled if in `open` or `draft` status. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    def expires_at; end
    # A footer that will be displayed on the quote PDF.
    sig { returns(T.nilable(String)) }
    def footer; end
    # Details of the quote that was cloned. See the [cloning documentation](https://stripe.com/docs/quotes/clone) for more details.
    sig { returns(T.nilable(FromQuote)) }
    def from_quote; end
    # A header that will be displayed on the quote PDF.
    sig { returns(T.nilable(String)) }
    def header; end
    # Unique identifier for the object.
    sig { returns(String) }
    def id; end
    # The invoice that was created from this quote.
    sig { returns(T.nilable(T.any(String, ::Stripe::Invoice))) }
    def invoice; end
    # Attribute for field invoice_settings
    sig { returns(InvoiceSettings) }
    def invoice_settings; end
    # A list of items the customer is being quoted for.
    sig { returns(T.nilable(::Stripe::ListObject)) }
    def line_items; end
    # A list of [quote lines](https://docs.stripe.com/api/quote_lines) on the quote. These lines describe changes, in the order provided, that will be used to create new subscription schedules or update existing subscription schedules when the quote is accepted.
    sig { returns(T.nilable(T::Array[String])) }
    def lines; end
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    def livemode; end
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    sig { returns(T::Hash[String, String]) }
    def metadata; end
    # A unique number that identifies this particular quote. This number is assigned once the quote is [finalized](https://stripe.com/docs/quotes/overview#finalize).
    sig { returns(T.nilable(String)) }
    def number; end
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    def object; end
    # The account on behalf of which to charge. See the [Connect documentation](https://support.stripe.com/questions/sending-invoices-on-behalf-of-connected-accounts) for details.
    sig { returns(T.nilable(T.any(String, ::Stripe::Account))) }
    def on_behalf_of; end
    # The status of the quote.
    sig { returns(String) }
    def status; end
    # Details on when and why a quote has been marked as stale or canceled.
    sig { returns(T.nilable(StatusDetails)) }
    def status_details; end
    # Attribute for field status_transitions
    sig { returns(StatusTransitions) }
    def status_transitions; end
    # The subscription that was created or updated from this quote.
    sig { returns(T.nilable(T.any(String, ::Stripe::Subscription))) }
    def subscription; end
    # Attribute for field subscription_data
    sig { returns(SubscriptionData) }
    def subscription_data; end
    # List representing overrides for `subscription_data` configurations for specific subscription schedules.
    sig { returns(T.nilable(T::Array[SubscriptionDataOverride])) }
    def subscription_data_overrides; end
    # The subscription schedule that was created or updated from this quote.
    sig { returns(T.nilable(T.any(String, ::Stripe::SubscriptionSchedule))) }
    def subscription_schedule; end
    # The subscription schedules that were created or updated from this quote.
    sig { returns(T.nilable(T::Array[SubscriptionSchedule])) }
    def subscription_schedules; end
    # ID of the test clock this quote belongs to.
    sig { returns(T.nilable(T.any(String, ::Stripe::TestHelpers::TestClock))) }
    def test_clock; end
    # Attribute for field total_details
    sig { returns(TotalDetails) }
    def total_details; end
    # The account (if any) the payments will be attributed to for tax reporting, and where funds from each payment will be transferred to for each of the invoices.
    sig { returns(T.nilable(TransferData)) }
    def transfer_data; end
    # Accepts the specified quote.
    sig {
      params(params: T.any(::Stripe::QuoteAcceptParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Quote)
     }
    def accept(params = {}, opts = {}); end

    # Accepts the specified quote.
    sig {
      params(quote: String, params: T.any(::Stripe::QuoteAcceptParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Quote)
     }
    def self.accept(quote, params = {}, opts = {}); end

    # Cancels the quote.
    sig {
      params(params: T.any(::Stripe::QuoteCancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Quote)
     }
    def cancel(params = {}, opts = {}); end

    # Cancels the quote.
    sig {
      params(quote: String, params: T.any(::Stripe::QuoteCancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Quote)
     }
    def self.cancel(quote, params = {}, opts = {}); end

    # A quote models prices and services for a customer. Default options for header, description, footer, and expires_at can be set in the dashboard via the [quote template](https://dashboard.stripe.com/settings/billing/quote).
    sig {
      params(params: T.any(::Stripe::QuoteCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Quote)
     }
    def self.create(params = {}, opts = {}); end

    # Finalizes the quote.
    sig {
      params(params: T.any(::Stripe::QuoteFinalizeQuoteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Quote)
     }
    def finalize_quote(params = {}, opts = {}); end

    # Finalizes the quote.
    sig {
      params(quote: String, params: T.any(::Stripe::QuoteFinalizeQuoteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Quote)
     }
    def self.finalize_quote(quote, params = {}, opts = {}); end

    # Returns a list of your quotes.
    sig {
      params(params: T.any(::Stripe::QuoteListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
     }
    def self.list(params = {}, opts = {}); end

    # When retrieving a quote, there is an includable [computed.upfront.line_items](https://stripe.com/docs/api/quotes/object#quote_object-computed-upfront-line_items) property containing the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of upfront line items.
    sig {
      params(params: T.any(::Stripe::QuoteListComputedUpfrontLineItemsParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
     }
    def list_computed_upfront_line_items(params = {}, opts = {}); end

    # When retrieving a quote, there is an includable [computed.upfront.line_items](https://stripe.com/docs/api/quotes/object#quote_object-computed-upfront-line_items) property containing the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of upfront line items.
    sig {
      params(quote: String, params: T.any(::Stripe::QuoteListComputedUpfrontLineItemsParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
     }
    def self.list_computed_upfront_line_items(quote, params = {}, opts = {}); end

    # When retrieving a quote, there is an includable line_items property containing the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of line items.
    sig {
      params(params: T.any(::Stripe::QuoteListLineItemsParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
     }
    def list_line_items(params = {}, opts = {}); end

    # When retrieving a quote, there is an includable line_items property containing the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of line items.
    sig {
      params(quote: String, params: T.any(::Stripe::QuoteListLineItemsParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
     }
    def self.list_line_items(quote, params = {}, opts = {}); end

    # Retrieves a paginated list of lines for a quote. These lines describe changes that will be used to create new subscription schedules or update existing subscription schedules when the quote is accepted.
    sig {
      params(params: T.any(::Stripe::QuoteListLinesParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
     }
    def list_lines(params = {}, opts = {}); end

    # Retrieves a paginated list of lines for a quote. These lines describe changes that will be used to create new subscription schedules or update existing subscription schedules when the quote is accepted.
    sig {
      params(quote: String, params: T.any(::Stripe::QuoteListLinesParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
     }
    def self.list_lines(quote, params = {}, opts = {}); end

    # Preview the invoice line items that would be generated by accepting the quote.
    sig {
      params(preview_invoice: String, params: T.any(::Stripe::QuoteListPreviewInvoiceLinesParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
     }
    def list_preview_invoice_lines(preview_invoice, params = {}, opts = {}); end

    # Preview the invoice line items that would be generated by accepting the quote.
    sig {
      params(quote: String, preview_invoice: String, params: T.any(::Stripe::QuoteListPreviewInvoiceLinesParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
     }
    def self.list_preview_invoice_lines(quote, preview_invoice, params = {}, opts = {}); end

    # Converts a stale quote to draft.
    sig {
      params(params: T.any(::Stripe::QuoteMarkDraftParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Quote)
     }
    def mark_draft(params = {}, opts = {}); end

    # Converts a stale quote to draft.
    sig {
      params(quote: String, params: T.any(::Stripe::QuoteMarkDraftParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Quote)
     }
    def self.mark_draft(quote, params = {}, opts = {}); end

    # Converts a draft or open quote to stale.
    sig {
      params(params: T.any(::Stripe::QuoteMarkStaleParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Quote)
     }
    def mark_stale(params = {}, opts = {}); end

    # Converts a draft or open quote to stale.
    sig {
      params(quote: String, params: T.any(::Stripe::QuoteMarkStaleParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Quote)
     }
    def self.mark_stale(quote, params = {}, opts = {}); end

    # Download the PDF for a finalized quote. Explanation for special handling can be found [here](https://docs.stripe.com/quotes/overview#quote_pdf)
    sig {
      params(params: T.any(::Stripe::QuotePdfParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped, read_body_chunk_block: T.untyped).returns(T.untyped)
     }
    def pdf(params = {}, opts = {}, &read_body_chunk_block); end

    # Download the PDF for a finalized quote. Explanation for special handling can be found [here](https://docs.stripe.com/quotes/overview#quote_pdf)
    sig {
      params(quote: String, params: T.any(::Stripe::QuotePdfParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped, read_body_chunk_block: T.untyped).returns(T.untyped)
     }
    def self.pdf(quote, params = {}, opts = {}, &read_body_chunk_block); end

    # Recompute the upcoming invoice estimate for the quote.
    sig {
      params(params: T.any(::Stripe::QuoteReestimateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Quote)
     }
    def reestimate(params = {}, opts = {}); end

    # Recompute the upcoming invoice estimate for the quote.
    sig {
      params(quote: String, params: T.any(::Stripe::QuoteReestimateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Quote)
     }
    def self.reestimate(quote, params = {}, opts = {}); end

    # A quote models prices and services for a customer.
    sig {
      params(quote: String, params: T.any(::Stripe::QuoteUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Quote)
     }
    def self.update(quote, params = {}, opts = {}); end
  end
end