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

    class AutomaticTax < ::Stripe::StripeObject
      class Liability < ::Stripe::StripeObject
        # The connected account being referenced when `type` is `account`.
        attr_reader :account
        # Type of the account referenced.
        attr_reader :type

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Automatically calculate taxes
      attr_reader :enabled
      # The account that's liable for tax. If set, the business address and tax registrations required to perform the tax calculation are loaded from this account. The tax transaction is returned in the report of the connected account.
      attr_reader :liability
      # The tax provider powering automatic tax.
      attr_reader :provider
      # The status of the most recent automated tax calculation for this quote.
      attr_reader :status

      def self.inner_class_types
        @inner_class_types = { liability: Liability }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end

    class Computed < ::Stripe::StripeObject
      class LastReestimationDetails < ::Stripe::StripeObject
        class Failed < ::Stripe::StripeObject
          # The failure `code` is more granular than the `reason` provided and may correspond to a Stripe error code. For automation errors, this field is one of: `reverse_api_failure`, `reverse_api_deadline_exceeeded`, or `reverse_api_response_validation_error`, which are Stripe error codes and map to the error `message` field.
          attr_reader :failure_code
          # Information derived from the `failure_code` or a freeform message that explains the error as a human-readable English string. For example, "margin ID is not a valid ID".
          attr_reader :message
          # The reason the reestimation failed.
          attr_reader :reason

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # When `status` is `failed`, provides details about the quote reestimation failure.
        attr_reader :failed
        # Latest status of the reestimation.
        attr_reader :status

        def self.inner_class_types
          @inner_class_types = { failed: Failed }
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
              attr_reader :amount
              # A discount represents the actual application of a [coupon](https://api.stripe.com#coupons) or [promotion code](https://api.stripe.com#promotion_codes).
              # It contains information about when the discount began, when it will end, and what it is applied to.
              #
              # Related guide: [Applying discounts to subscriptions](https://docs.stripe.com/billing/subscriptions/discounts)
              attr_reader :discount

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end

            class Tax < ::Stripe::StripeObject
              # Amount of tax applied for this rate.
              attr_reader :amount
              # Tax rates can be applied to [invoices](/invoicing/taxes/tax-rates), [subscriptions](/billing/taxes/tax-rates) and [Checkout Sessions](/payments/checkout/use-manual-tax-rates) to collect tax.
              #
              # Related guide: [Tax rates](/billing/taxes/tax-rates)
              attr_reader :rate
              # The reasoning behind this tax, for example, if the product is tax exempt. The possible values for this field may be extended as new tax rules are supported.
              attr_reader :taxability_reason
              # The amount on which tax is calculated, in cents (or local equivalent).
              attr_reader :taxable_amount

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The aggregated discounts.
            attr_reader :discounts
            # The aggregated tax amounts by rate.
            attr_reader :taxes

            def self.inner_class_types
              @inner_class_types = { discounts: Discount, taxes: Tax }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # This is the sum of all the discounts.
          attr_reader :amount_discount
          # This is the sum of all the shipping amounts.
          attr_reader :amount_shipping
          # This is the sum of all the tax amounts.
          attr_reader :amount_tax
          # Attribute for field breakdown
          attr_reader :breakdown

          def self.inner_class_types
            @inner_class_types = { breakdown: Breakdown }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Total before any discounts or taxes are applied.
        attr_reader :amount_subtotal
        # Total after discounts and taxes are applied.
        attr_reader :amount_total
        # The frequency at which a subscription is billed. One of `day`, `week`, `month` or `year`.
        attr_reader :interval
        # The number of intervals (specified in the `interval` attribute) between subscription billings. For example, `interval=month` and `interval_count=3` bills every 3 months.
        attr_reader :interval_count
        # Attribute for field total_details
        attr_reader :total_details

        def self.inner_class_types
          @inner_class_types = { total_details: TotalDetails }
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
              attr_reader :amount
              # A discount represents the actual application of a [coupon](https://api.stripe.com#coupons) or [promotion code](https://api.stripe.com#promotion_codes).
              # It contains information about when the discount began, when it will end, and what it is applied to.
              #
              # Related guide: [Applying discounts to subscriptions](https://docs.stripe.com/billing/subscriptions/discounts)
              attr_reader :discount

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end

            class Tax < ::Stripe::StripeObject
              # Amount of tax applied for this rate.
              attr_reader :amount
              # Tax rates can be applied to [invoices](/invoicing/taxes/tax-rates), [subscriptions](/billing/taxes/tax-rates) and [Checkout Sessions](/payments/checkout/use-manual-tax-rates) to collect tax.
              #
              # Related guide: [Tax rates](/billing/taxes/tax-rates)
              attr_reader :rate
              # The reasoning behind this tax, for example, if the product is tax exempt. The possible values for this field may be extended as new tax rules are supported.
              attr_reader :taxability_reason
              # The amount on which tax is calculated, in cents (or local equivalent).
              attr_reader :taxable_amount

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The aggregated discounts.
            attr_reader :discounts
            # The aggregated tax amounts by rate.
            attr_reader :taxes

            def self.inner_class_types
              @inner_class_types = { discounts: Discount, taxes: Tax }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # This is the sum of all the discounts.
          attr_reader :amount_discount
          # This is the sum of all the shipping amounts.
          attr_reader :amount_shipping
          # This is the sum of all the tax amounts.
          attr_reader :amount_tax
          # Attribute for field breakdown
          attr_reader :breakdown

          def self.inner_class_types
            @inner_class_types = { breakdown: Breakdown }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Total before any discounts or taxes are applied.
        attr_reader :amount_subtotal
        # Total after discounts and taxes are applied.
        attr_reader :amount_total
        # The line items that will appear on the next invoice after this quote is accepted. This does not include pending invoice items that exist on the customer but may still be included in the next invoice.
        attr_reader :line_items
        # Attribute for field total_details
        attr_reader :total_details

        def self.inner_class_types
          @inner_class_types = { total_details: TotalDetails }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Details of the most recent reestimate of the quote's preview schedules and upcoming invoices, including the status of Stripe's calculation.
      attr_reader :last_reestimation_details
      # The definitive totals and line items the customer will be charged on a recurring basis. Takes into account the line items with recurring prices and discounts with `duration=forever` coupons only. Defaults to `null` if no inputted line items with recurring prices.
      attr_reader :recurring
      # The time at which the quote's estimated schedules and upcoming invoices were generated.
      attr_reader :updated_at
      # Attribute for field upfront
      attr_reader :upfront

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
      attr_reader :is_revision
      # The quote that was cloned.
      attr_reader :quote

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
        attr_reader :account
        # Type of the account referenced.
        attr_reader :type

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Number of days within which a customer must pay invoices generated by this quote. This value will be `null` for quotes where `collection_method=charge_automatically`.
      attr_reader :days_until_due
      # Attribute for field issuer
      attr_reader :issuer

      def self.inner_class_types
        @inner_class_types = { issuer: Issuer }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end

    class StatusDetails < ::Stripe::StripeObject
      class Canceled < ::Stripe::StripeObject
        # The reason this quote was marked as canceled.
        attr_reader :reason
        # Time at which the quote was marked as canceled. Measured in seconds since the Unix epoch.
        attr_reader :transitioned_at

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
            attr_reader :invalid_at
            # The list of lines that became invalid at the given timestamp.
            attr_reader :lines

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class SubscriptionChanged < ::Stripe::StripeObject
            # The subscription's state before the quote was marked as stale.
            attr_reader :previous_subscription

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class SubscriptionScheduleChanged < ::Stripe::StripeObject
            # The subscription schedule's state before the quote was marked as stale.
            attr_reader :previous_subscription_schedule

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The ID of the line that is invalid if the stale reason type is `line_invalid`.
          attr_reader :line_invalid
          # The IDs of the lines that are invalid if the stale reason type is `lines_invalid`.
          attr_reader :lines_invalid
          # The user supplied mark stale reason.
          attr_reader :marked_stale
          # The ID of the subscription that was canceled.
          attr_reader :subscription_canceled
          # Attribute for field subscription_changed
          attr_reader :subscription_changed
          # The ID of the subscription that was expired.
          attr_reader :subscription_expired
          # The ID of the subscription schedule that was canceled.
          attr_reader :subscription_schedule_canceled
          # Attribute for field subscription_schedule_changed
          attr_reader :subscription_schedule_changed
          # The ID of the subscription schedule that was released.
          attr_reader :subscription_schedule_released
          # The reason the quote was marked as stale.
          attr_reader :type

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
        attr_reader :expires_at
        # The most recent reason this quote was marked as stale.
        attr_reader :last_reason
        # Time at which the stale reason was updated. Measured in seconds since the Unix epoch.
        attr_reader :last_updated_at
        # Time at which the quote was marked as stale. Measured in seconds since the Unix epoch.
        attr_reader :transitioned_at

        def self.inner_class_types
          @inner_class_types = { last_reason: LastReason }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Attribute for field canceled
      attr_reader :canceled
      # Attribute for field stale
      attr_reader :stale

      def self.inner_class_types
        @inner_class_types = { canceled: Canceled, stale: Stale }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end

    class StatusTransitions < ::Stripe::StripeObject
      # The time that the quote was accepted. Measured in seconds since Unix epoch.
      attr_reader :accepted_at
      # The time that the quote was canceled. Measured in seconds since Unix epoch.
      attr_reader :canceled_at
      # The time that the quote was finalized. Measured in seconds since Unix epoch.
      attr_reader :finalized_at

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
            attr_reader :id

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The materialized time.
          attr_reader :computed
          # The timestamp the given line starts at.
          attr_reader :line_starts_at
          # A precise Unix timestamp.
          attr_reader :timestamp
          # The type of method to specify the `bill_from` time.
          attr_reader :type

          def self.inner_class_types
            @inner_class_types = { line_starts_at: LineStartsAt }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class BillUntil < ::Stripe::StripeObject
          class Duration < ::Stripe::StripeObject
            # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
            attr_reader :interval
            # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
            attr_reader :interval_count

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class LineEndsAt < ::Stripe::StripeObject
            # Unique identifier for the object.
            attr_reader :id

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The materialized time.
          attr_reader :computed
          # Time span for the quote line starting from the `starts_at` date.
          attr_reader :duration
          # The timestamp the given line ends at.
          attr_reader :line_ends_at
          # A precise Unix timestamp.
          attr_reader :timestamp
          # The type of method to specify the `bill_until` time.
          attr_reader :type

          def self.inner_class_types
            @inner_class_types = { duration: Duration, line_ends_at: LineEndsAt }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The start of the period to bill from when the Quote is accepted.
        attr_reader :bill_from
        # The end of the period to bill until when the Quote is accepted.
        attr_reader :bill_until

        def self.inner_class_types
          @inner_class_types = { bill_from: BillFrom, bill_until: BillUntil }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class BillingMode < ::Stripe::StripeObject
        class Flexible < ::Stripe::StripeObject
          # Controls how invoices and invoice items display proration amounts and discount amounts.
          attr_reader :proration_discounts

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Attribute for field flexible
        attr_reader :flexible
        # Controls how prorations and invoices for subscriptions are calculated and orchestrated.
        attr_reader :type

        def self.inner_class_types
          @inner_class_types = { flexible: Flexible }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class BillingSchedule < ::Stripe::StripeObject
        class AppliesTo < ::Stripe::StripeObject
          # The billing schedule will apply to the subscription item with the given price ID.
          attr_reader :price
          # Controls which subscription items the billing schedule applies to.
          attr_reader :type

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class BillFrom < ::Stripe::StripeObject
          class LineStartsAt < ::Stripe::StripeObject
            # Unique identifier for the object.
            attr_reader :id

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The time the billing schedule applies from.
          attr_reader :computed_timestamp
          # Lets you bill the period starting from a particular Quote line.
          attr_reader :line_starts_at
          # Use a precise Unix timestamp for prebilling to start. Must be earlier than `bill_until`.
          attr_reader :timestamp
          # Describes how the billing schedule determines the start date. Possible values are `timestamp`, `relative`, `amendment_start`, `now`, `quote_acceptance_date`, `line_starts_at`, or `pause_collection_start`.
          attr_reader :type

          def self.inner_class_types
            @inner_class_types = { line_starts_at: LineStartsAt }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class BillUntil < ::Stripe::StripeObject
          class Duration < ::Stripe::StripeObject
            # Specifies billing duration. Either `day`, `week`, `month` or `year`.
            attr_reader :interval
            # The multiplier applied to the interval.
            attr_reader :interval_count

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class LineEndsAt < ::Stripe::StripeObject
            # Unique identifier for the object.
            attr_reader :id

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The timestamp the billing schedule will apply until.
          attr_reader :computed_timestamp
          # Specifies the billing period.
          attr_reader :duration
          # Lets you bill the period ending at a particular Quote line.
          attr_reader :line_ends_at
          # If specified, the billing schedule will apply until the specified timestamp.
          attr_reader :timestamp
          # Describes how the billing schedule will determine the end date. Either `duration` or `timestamp`.
          attr_reader :type

          def self.inner_class_types
            @inner_class_types = { duration: Duration, line_ends_at: LineEndsAt }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Specifies which subscription items the billing schedule applies to.
        attr_reader :applies_to
        # Specifies the start of the billing period.
        attr_reader :bill_from
        # Attribute for field bill_until
        attr_reader :bill_until
        # Unique identifier for the billing schedule.
        attr_reader :key

        def self.inner_class_types
          @inner_class_types = { applies_to: AppliesTo, bill_from: BillFrom, bill_until: BillUntil }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class Prebilling < ::Stripe::StripeObject
        # Attribute for field iterations
        attr_reader :iterations

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Describes the period to bill for upon accepting the quote.
      attr_reader :bill_on_acceptance
      # Configures when the subscription schedule generates prorations for phase transitions. Possible values are `prorate_on_next_phase` or `prorate_up_front` with the default being `prorate_on_next_phase`. `prorate_on_next_phase` will apply phase changes and generate prorations at transition time. `prorate_up_front` will bill for all phases within the current billing cycle up front.
      attr_reader :billing_behavior
      # Whether the subscription will always start a new billing period when the quote is accepted.
      attr_reader :billing_cycle_anchor
      # The billing mode of the quote.
      attr_reader :billing_mode
      # Billing schedules that will be applied to the subscription or subscription schedule created from this quote.
      attr_reader :billing_schedules
      # The subscription's description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
      attr_reader :description
      # When creating a new subscription, the date of which the subscription schedule will start after the quote is accepted. This date is ignored if it is in the past when the quote is accepted. Measured in seconds since the Unix epoch.
      attr_reader :effective_date
      # Behavior of the subscription schedule and underlying subscription when it ends.
      attr_reader :end_behavior
      # The id of the subscription that will be updated when the quote is accepted.
      attr_reader :from_subscription
      # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that will set metadata on the subscription or subscription schedule when the quote is accepted. If a recurring price is included in `line_items`, this field will be passed to the resulting subscription's `metadata` field. If `subscription_data.effective_date` is used, this field will be passed to the resulting subscription schedule's `phases.metadata` field. Unlike object-level metadata, this field is declarative. Updates will clear prior values.
      attr_reader :metadata
      # Configures how the quote handles billing for line transitions. Possible values are `line_start` (default) or `billing_period_start`. `line_start` bills based on the current state of the line, ignoring changes scheduled for future lines. `billing_period_start` bills predictively for upcoming line transitions within the current billing cycle, including pricing changes and service period adjustments that will occur before the next invoice.
      attr_reader :phase_effective_at
      # If specified, the invoicing for the given billing cycle iterations will be processed when the quote is accepted. Cannot be used with `effective_date`.
      attr_reader :prebilling
      # Determines how to handle [prorations](https://docs.stripe.com/subscriptions/billing-cycle#prorations) when the quote is accepted.
      attr_reader :proration_behavior
      # Integer representing the number of trial period days before the customer is charged for the first time.
      attr_reader :trial_period_days

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
        attr_reader :new_reference
        # The ID of the schedule the line applies to.
        attr_reader :subscription_schedule
        # Describes whether the quote line is affecting a new schedule or an existing schedule.
        attr_reader :type

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
            attr_reader :id

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The materialized time.
          attr_reader :computed
          # The timestamp the given line starts at.
          attr_reader :line_starts_at
          # A precise Unix timestamp.
          attr_reader :timestamp
          # The type of method to specify the `bill_from` time.
          attr_reader :type

          def self.inner_class_types
            @inner_class_types = { line_starts_at: LineStartsAt }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class BillUntil < ::Stripe::StripeObject
          class Duration < ::Stripe::StripeObject
            # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
            attr_reader :interval
            # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
            attr_reader :interval_count

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class LineEndsAt < ::Stripe::StripeObject
            # Unique identifier for the object.
            attr_reader :id

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The materialized time.
          attr_reader :computed
          # Time span for the quote line starting from the `starts_at` date.
          attr_reader :duration
          # The timestamp the given line ends at.
          attr_reader :line_ends_at
          # A precise Unix timestamp.
          attr_reader :timestamp
          # The type of method to specify the `bill_until` time.
          attr_reader :type

          def self.inner_class_types
            @inner_class_types = { duration: Duration, line_ends_at: LineEndsAt }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The start of the period to bill from when the Quote is accepted.
        attr_reader :bill_from
        # The end of the period to bill until when the Quote is accepted.
        attr_reader :bill_until

        def self.inner_class_types
          @inner_class_types = { bill_from: BillFrom, bill_until: BillUntil }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class BillingSchedule < ::Stripe::StripeObject
        class AppliesTo < ::Stripe::StripeObject
          # The billing schedule will apply to the subscription item with the given price ID.
          attr_reader :price
          # Controls which subscription items the billing schedule applies to.
          attr_reader :type

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class BillFrom < ::Stripe::StripeObject
          class LineStartsAt < ::Stripe::StripeObject
            # Unique identifier for the object.
            attr_reader :id

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The time the billing schedule applies from.
          attr_reader :computed_timestamp
          # Lets you bill the period starting from a particular Quote line.
          attr_reader :line_starts_at
          # Use a precise Unix timestamp for prebilling to start. Must be earlier than `bill_until`.
          attr_reader :timestamp
          # Describes how the billing schedule determines the start date. Possible values are `timestamp`, `relative`, `amendment_start`, `now`, `quote_acceptance_date`, `line_starts_at`, or `pause_collection_start`.
          attr_reader :type

          def self.inner_class_types
            @inner_class_types = { line_starts_at: LineStartsAt }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class BillUntil < ::Stripe::StripeObject
          class Duration < ::Stripe::StripeObject
            # Specifies billing duration. Either `day`, `week`, `month` or `year`.
            attr_reader :interval
            # The multiplier applied to the interval.
            attr_reader :interval_count

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class LineEndsAt < ::Stripe::StripeObject
            # Unique identifier for the object.
            attr_reader :id

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The timestamp the billing schedule will apply until.
          attr_reader :computed_timestamp
          # Specifies the billing period.
          attr_reader :duration
          # Lets you bill the period ending at a particular Quote line.
          attr_reader :line_ends_at
          # If specified, the billing schedule will apply until the specified timestamp.
          attr_reader :timestamp
          # Describes how the billing schedule will determine the end date. Either `duration` or `timestamp`.
          attr_reader :type

          def self.inner_class_types
            @inner_class_types = { duration: Duration, line_ends_at: LineEndsAt }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Specifies which subscription items the billing schedule applies to.
        attr_reader :applies_to
        # Specifies the start of the billing period.
        attr_reader :bill_from
        # Attribute for field bill_until
        attr_reader :bill_until
        # Unique identifier for the billing schedule.
        attr_reader :key

        def self.inner_class_types
          @inner_class_types = { applies_to: AppliesTo, bill_from: BillFrom, bill_until: BillUntil }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Attribute for field applies_to
      attr_reader :applies_to
      # Describes the period to bill for upon accepting the quote.
      attr_reader :bill_on_acceptance
      # Configures when the subscription schedule generates prorations for phase transitions. Possible values are `prorate_on_next_phase` or `prorate_up_front` with the default being `prorate_on_next_phase`. `prorate_on_next_phase` will apply phase changes and generate prorations at transition time. `prorate_up_front` will bill for all phases within the current billing cycle up front.
      attr_reader :billing_behavior
      # Billing schedules that will be applied to the subscription or subscription schedule created from this quote.
      attr_reader :billing_schedules
      # The customer who received this quote. A customer is required to finalize the quote. Once specified, you can't change it.
      attr_reader :customer
      # The subscription's description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
      attr_reader :description
      # Behavior of the subscription schedule and underlying subscription when it ends.
      attr_reader :end_behavior
      # Configures how the quote handles billing for line transitions. Possible values are `line_start` (default) or `billing_period_start`. `line_start` bills based on the current state of the line, ignoring changes scheduled for future lines. `billing_period_start` bills predictively for upcoming line transitions within the current billing cycle, including pricing changes and service period adjustments that will occur before the next invoice.
      attr_reader :phase_effective_at
      # Determines how to handle [prorations](https://docs.stripe.com/subscriptions/billing-cycle#prorations) when the quote is accepted.
      attr_reader :proration_behavior

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
        attr_reader :new_reference
        # The ID of the schedule the line applies to.
        attr_reader :subscription_schedule
        # Describes whether the quote line is affecting a new schedule or an existing schedule.
        attr_reader :type

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Attribute for field applies_to
      attr_reader :applies_to
      # The subscription schedule that was created or updated from this quote.
      attr_reader :subscription_schedule

      def self.inner_class_types
        @inner_class_types = { applies_to: AppliesTo }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end

    class TotalDetails < ::Stripe::StripeObject
      class Breakdown < ::Stripe::StripeObject
        class Discount < ::Stripe::StripeObject
          # The amount discounted.
          attr_reader :amount
          # A discount represents the actual application of a [coupon](https://api.stripe.com#coupons) or [promotion code](https://api.stripe.com#promotion_codes).
          # It contains information about when the discount began, when it will end, and what it is applied to.
          #
          # Related guide: [Applying discounts to subscriptions](https://docs.stripe.com/billing/subscriptions/discounts)
          attr_reader :discount

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class Tax < ::Stripe::StripeObject
          # Amount of tax applied for this rate.
          attr_reader :amount
          # Tax rates can be applied to [invoices](/invoicing/taxes/tax-rates), [subscriptions](/billing/taxes/tax-rates) and [Checkout Sessions](/payments/checkout/use-manual-tax-rates) to collect tax.
          #
          # Related guide: [Tax rates](/billing/taxes/tax-rates)
          attr_reader :rate
          # The reasoning behind this tax, for example, if the product is tax exempt. The possible values for this field may be extended as new tax rules are supported.
          attr_reader :taxability_reason
          # The amount on which tax is calculated, in cents (or local equivalent).
          attr_reader :taxable_amount

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The aggregated discounts.
        attr_reader :discounts
        # The aggregated tax amounts by rate.
        attr_reader :taxes

        def self.inner_class_types
          @inner_class_types = { discounts: Discount, taxes: Tax }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
      # This is the sum of all the discounts.
      attr_reader :amount_discount
      # This is the sum of all the shipping amounts.
      attr_reader :amount_shipping
      # This is the sum of all the tax amounts.
      attr_reader :amount_tax
      # Attribute for field breakdown
      attr_reader :breakdown

      def self.inner_class_types
        @inner_class_types = { breakdown: Breakdown }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end

    class TransferData < ::Stripe::StripeObject
      # The amount in cents (or local equivalent) that will be transferred to the destination account when the invoice is paid. By default, the entire amount is transferred to the destination.
      attr_reader :amount
      # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the destination account. By default, the entire amount will be transferred to the destination.
      attr_reader :amount_percent
      # The account where funds from the payment will be transferred to upon payment success.
      attr_reader :destination

      def self.inner_class_types
        @inner_class_types = {}
      end

      def self.field_remappings
        @field_remappings = {}
      end
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
    # The customer who received this quote. A customer is required to finalize the quote. Once specified, you can't change it.
    attr_reader :customer
    # The account representing the customer who received this quote. A customer or account is required to finalize the quote. Once specified, you can't change it.
    attr_reader :customer_account
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
    # Details of the quote that was cloned. See the [cloning documentation](https://docs.stripe.com/quotes/clone) for more details.
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
    # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    # A unique number that identifies this particular quote. This number is assigned once the quote is [finalized](https://docs.stripe.com/quotes/overview#finalize).
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
    def self.list(params = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/quotes", params: params, opts: opts)
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
    def self.update(quote, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/quotes/%<quote>s", { quote: CGI.escape(quote) }),
        params: params,
        opts: opts
      )
    end

    def self.inner_class_types
      @inner_class_types = {
        automatic_tax: AutomaticTax,
        computed: Computed,
        from_quote: FromQuote,
        invoice_settings: InvoiceSettings,
        status_details: StatusDetails,
        status_transitions: StatusTransitions,
        subscription_data: SubscriptionData,
        subscription_data_overrides: SubscriptionDataOverride,
        subscription_schedules: SubscriptionSchedule,
        total_details: TotalDetails,
        transfer_data: TransferData,
      }
    end

    def self.field_remappings
      @field_remappings = {}
    end
  end
end
