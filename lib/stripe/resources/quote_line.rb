# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # A quote line defines a set of changes, in the order provided, that will be applied upon quote acceptance.
  class QuoteLine < APIResource
    OBJECT_NAME = "quote_line"
    def self.object_name
      "quote_line"
    end

    class Action < Stripe::StripeObject
      class AddDiscount < Stripe::StripeObject
        class DiscountEnd < Stripe::StripeObject
          # The discount end type.
          attr_reader :type
        end
        # ID of the coupon to create a new discount for.
        attr_reader :coupon
        # ID of an existing discount on the object (or one of its ancestors) to reuse.
        attr_reader :discount
        # Details to determine how long the discount should be applied for.
        attr_reader :discount_end
        # The index, starting at 0, at which to position the new discount. When not supplied, Stripe defaults to appending the discount to the end of the `discounts` array.
        attr_reader :index
        # ID of the promotion code to create a new discount for.
        attr_reader :promotion_code
      end

      class AddItem < Stripe::StripeObject
        class Discount < Stripe::StripeObject
          class DiscountEnd < Stripe::StripeObject
            # The discount end timestamp.
            attr_reader :timestamp
            # The discount end type.
            attr_reader :type
          end
          # ID of the coupon to create a new discount for.
          attr_reader :coupon
          # ID of an existing discount on the object (or one of its ancestors) to reuse.
          attr_reader :discount
          # Details to determine how long the discount should be applied for.
          attr_reader :discount_end
          # ID of the promotion code to create a new discount for.
          attr_reader :promotion_code
        end

        class Trial < Stripe::StripeObject
          # List of price IDs which, if present on the subscription following a paid trial, constitute opting-in to the paid trial.
          attr_reader :converts_to
          # Determines the type of trial for this item.
          attr_reader :type
        end
        # The discounts applied to the subscription item. Subscription item discounts are applied before subscription discounts. Use `expand[]=discounts` to expand each discount.
        attr_reader :discounts
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an item. Metadata on this item will update the underlying subscription item's `metadata` when the phase is entered.
        attr_reader :metadata
        # ID of the price to which the customer should be subscribed.
        attr_reader :price
        # Quantity of the plan to which the customer should be subscribed.
        attr_reader :quantity
        # The tax rates which apply to this `phase_item`. When set, the `default_tax_rates` on the phase do not apply to this `phase_item`.
        attr_reader :tax_rates
        # Options that configure the trial on the subscription item.
        attr_reader :trial
      end

      class RemoveDiscount < Stripe::StripeObject
        class DiscountEnd < Stripe::StripeObject
          # The discount end timestamp.
          attr_reader :timestamp
          # The discount end type.
          attr_reader :type
        end
        # ID of the coupon to create a new discount for.
        attr_reader :coupon
        # ID of an existing discount on the object (or one of its ancestors) to reuse.
        attr_reader :discount
        # Details to determine how long the discount should be applied for.
        attr_reader :discount_end
        # ID of the promotion code to create a new discount for.
        attr_reader :promotion_code
      end

      class RemoveItem < Stripe::StripeObject
        # ID of a price to remove.
        attr_reader :price
      end

      class SetDiscount < Stripe::StripeObject
        class DiscountEnd < Stripe::StripeObject
          # The discount end timestamp.
          attr_reader :timestamp
          # The discount end type.
          attr_reader :type
        end
        # ID of the coupon to create a new discount for.
        attr_reader :coupon
        # ID of an existing discount on the object (or one of its ancestors) to reuse.
        attr_reader :discount
        # Details to determine how long the discount should be applied for.
        attr_reader :discount_end
        # ID of the promotion code to create a new discount for.
        attr_reader :promotion_code
      end

      class SetItem < Stripe::StripeObject
        class Discount < Stripe::StripeObject
          class DiscountEnd < Stripe::StripeObject
            # The discount end timestamp.
            attr_reader :timestamp
            # The discount end type.
            attr_reader :type
          end
          # ID of the coupon to create a new discount for.
          attr_reader :coupon
          # ID of an existing discount on the object (or one of its ancestors) to reuse.
          attr_reader :discount
          # Details to determine how long the discount should be applied for.
          attr_reader :discount_end
          # ID of the promotion code to create a new discount for.
          attr_reader :promotion_code
        end

        class Trial < Stripe::StripeObject
          # List of price IDs which, if present on the subscription following a paid trial, constitute opting-in to the paid trial.
          attr_reader :converts_to
          # Determines the type of trial for this item.
          attr_reader :type
        end
        # The discounts applied to the subscription item. Subscription item discounts are applied before subscription discounts. Use `expand[]=discounts` to expand each discount.
        attr_reader :discounts
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an item. Metadata on this item will update the underlying subscription item's `metadata` when the phase is entered.
        attr_reader :metadata
        # ID of the price to which the customer should be subscribed.
        attr_reader :price
        # Quantity of the plan to which the customer should be subscribed.
        attr_reader :quantity
        # The tax rates which apply to this `phase_item`. When set, the `default_tax_rates` on the phase do not apply to this `phase_item`.
        attr_reader :tax_rates
        # Options that configure the trial on the subscription item.
        attr_reader :trial
      end
      # Details for the `add_discount` type.
      attr_reader :add_discount
      # Details for the `add_item` type.
      attr_reader :add_item
      # Details for the `add_metadata` type: specify a hash of key-value pairs.
      attr_reader :add_metadata
      # Details for the `remove_discount` type.
      attr_reader :remove_discount
      # Details for the `remove_item` type.
      attr_reader :remove_item
      # Details for the `remove_metadata` type: specify an array of metadata keys.
      attr_reader :remove_metadata
      # Details for the `set_discounts` type.
      attr_reader :set_discounts
      # Details for the `set_items` type.
      attr_reader :set_items
      # Details for the `set_metadata` type: specify an array of key-value pairs.
      attr_reader :set_metadata
      # The type of action the quote line performs.
      attr_reader :type
    end

    class AppliesTo < Stripe::StripeObject
      # A custom string that identifies a new subscription schedule being created upon quote acceptance. All quote lines with the same `new_reference` field will be applied to the creation of a new subscription schedule.
      attr_reader :new_reference
      # The ID of the schedule the line applies to.
      attr_reader :subscription_schedule
      # Describes whether the quote line is affecting a new schedule or an existing schedule.
      attr_reader :type
    end

    class CancelSubscriptionSchedule < Stripe::StripeObject
      # Timestamp helper to cancel the underlying schedule on the accompanying line's start date. Must be set to `line_starts_at`.
      attr_reader :cancel_at
      # If the subscription schedule is `active`, indicates if a final invoice will be generated that contains any un-invoiced metered usage and new/pending proration invoice items. Boolean that defaults to `true`.
      attr_reader :invoice_now
      # If the subscription schedule is `active`, indicates if the cancellation should be prorated. Boolean that defaults to `true`.
      attr_reader :prorate
    end

    class EndsAt < Stripe::StripeObject
      class DiscountEnd < Stripe::StripeObject
        # The ID of a specific discount.
        attr_reader :discount
      end

      class Duration < Stripe::StripeObject
        # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
        attr_reader :interval
        # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
        attr_reader :interval_count
      end
      # The timestamp value that will be used to determine when to make changes to the subscription schedule, as computed from the `ends_at` field. For example, if `ends_at[type]=upcoming_invoice`, the upcoming invoice date will be computed at the time the `ends_at` field was specified and saved. This field will not be recomputed upon future requests to update or finalize the quote unless `ends_at` is respecified. This field is guaranteed to be populated after quote acceptance.
      attr_reader :computed
      # Use the `end` time of a given discount.
      attr_reader :discount_end
      # Time span for the quote line starting from the `starts_at` date.
      attr_reader :duration
      # A precise Unix timestamp.
      attr_reader :timestamp
      # Select a way to pass in `ends_at`.
      attr_reader :type
    end

    class SetPauseCollection < Stripe::StripeObject
      class Set < Stripe::StripeObject
        # The payment collection behavior for this subscription while paused. One of `keep_as_draft`, `mark_uncollectible`, or `void`.
        attr_reader :behavior
      end
      # If specified, payment collection for this subscription will be paused. Note that the subscription status will be unchanged and will not be updated to `paused`. Learn more about [pausing collection](https://stripe.com/docs/billing/subscriptions/pause-payment).
      attr_reader :set
      # Defines the type of the pause_collection behavior for the quote line.
      attr_reader :type
    end

    class StartsAt < Stripe::StripeObject
      class DiscountEnd < Stripe::StripeObject
        # The ID of a specific discount.
        attr_reader :discount
      end

      class LineEndsAt < Stripe::StripeObject
        # Unique identifier for the object.
        attr_reader :id
      end
      # The timestamp value that will be used to determine when to make changes to the subscription schedule, as computed from the `starts_at` field. For example, if `starts_at[type]=upcoming_invoice`, the upcoming invoice date will be computed at the time the `starts_at` field was specified and saved. This field will not be recomputed upon future requests to update or finalize the quote unless `starts_at` is respecified. This field is guaranteed to be populated after quote acceptance.
      attr_reader :computed
      # Use the `end` time of a given discount.
      attr_reader :discount_end
      # The timestamp the given line ends at.
      attr_reader :line_ends_at
      # A precise Unix timestamp.
      attr_reader :timestamp
      # Select a way to pass in `starts_at`.
      attr_reader :type
    end

    class TrialSettings < Stripe::StripeObject
      class EndBehavior < Stripe::StripeObject
        # Configure how an opt-in following a paid trial is billed when using `billing_behavior: prorate_up_front`.
        attr_reader :prorate_up_front
      end
      # Defines how the subscription should behave when a trial ends.
      attr_reader :end_behavior
    end
    # A list of items the customer is being quoted for.
    attr_reader :actions

    # Details to identify the subscription schedule the quote line applies to.
    attr_reader :applies_to

    # For point-in-time quote lines (having no `ends_at` timestamp), this attribute lets you set or remove whether the subscription's billing cycle anchor is reset at the Quote Line `starts_at` timestamp.For time-span based quote lines (having both `starts_at` and `ends_at`), the only valid value is `automatic`, which removes any previously configured billing cycle anchor resets during the window of time spanning the quote line.
    attr_reader :billing_cycle_anchor

    # A point-in-time operation that cancels an existing subscription schedule at the line's starts_at timestamp. Currently only compatible with `quote_acceptance_date` for `starts_at`. When using cancel_subscription_schedule, the subscription schedule on the quote remains unalterable, except for modifications to the metadata, collection_method or invoice_settings.
    attr_reader :cancel_subscription_schedule

    # Details to identify the end of the time range modified by the proposed change. If not supplied, the quote line is considered a point-in-time operation that only affects the exact timestamp at `starts_at`, and a restricted set of attributes is supported on the quote line.
    attr_reader :ends_at

    # Unique identifier for the object.
    attr_reader :id

    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object

    # Changes to how Stripe handles prorations during the quote line's time span. Affects if and how prorations are created when a future phase starts.
    attr_reader :proration_behavior

    # Details to modify the pause_collection behavior of the subscription schedule.
    attr_reader :set_pause_collection

    # Timestamp helper to end the underlying schedule early, based on the acompanying line's start or end date.
    attr_reader :set_schedule_end

    # Details to identify the earliest timestamp where the proposed change should take effect.
    attr_reader :starts_at

    # Settings related to subscription trials.
    attr_reader :trial_settings
  end
end
