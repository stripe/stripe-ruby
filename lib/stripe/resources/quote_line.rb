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
          attr_reader :type
        end
        attr_reader :coupon, :discount, :discount_end, :index, :promotion_code
      end

      class AddItem < Stripe::StripeObject
        class Discount < Stripe::StripeObject
          class DiscountEnd < Stripe::StripeObject
            attr_reader :timestamp, :type
          end
          attr_reader :coupon, :discount, :discount_end, :promotion_code
        end

        class Trial < Stripe::StripeObject
          attr_reader :converts_to, :type
        end
        attr_reader :discounts, :metadata, :price, :quantity, :tax_rates, :trial
      end

      class RemoveDiscount < Stripe::StripeObject
        class DiscountEnd < Stripe::StripeObject
          attr_reader :timestamp, :type
        end
        attr_reader :coupon, :discount, :discount_end, :promotion_code
      end

      class RemoveItem < Stripe::StripeObject
        attr_reader :price
      end

      class SetDiscount < Stripe::StripeObject
        class DiscountEnd < Stripe::StripeObject
          attr_reader :timestamp, :type
        end
        attr_reader :coupon, :discount, :discount_end, :promotion_code
      end

      class SetItem < Stripe::StripeObject
        class Discount < Stripe::StripeObject
          class DiscountEnd < Stripe::StripeObject
            attr_reader :timestamp, :type
          end
          attr_reader :coupon, :discount, :discount_end, :promotion_code
        end

        class Trial < Stripe::StripeObject
          attr_reader :converts_to, :type
        end
        attr_reader :discounts, :metadata, :price, :quantity, :tax_rates, :trial
      end
      attr_reader :add_discount, :add_item, :add_metadata, :remove_discount, :remove_item, :remove_metadata, :set_discounts, :set_items, :set_metadata, :type
    end

    class AppliesTo < Stripe::StripeObject
      attr_reader :new_reference, :subscription_schedule, :type
    end

    class CancelSubscriptionSchedule < Stripe::StripeObject
      attr_reader :cancel_at, :invoice_now, :prorate
    end

    class EndsAt < Stripe::StripeObject
      class DiscountEnd < Stripe::StripeObject
        attr_reader :discount
      end

      class Duration < Stripe::StripeObject
        attr_reader :interval, :interval_count
      end
      attr_reader :computed, :discount_end, :duration, :timestamp, :type
    end

    class SetPauseCollection < Stripe::StripeObject
      class Set < Stripe::StripeObject
        attr_reader :behavior
      end
      attr_reader :set, :type
    end

    class StartsAt < Stripe::StripeObject
      class DiscountEnd < Stripe::StripeObject
        attr_reader :discount
      end

      class LineEndsAt < Stripe::StripeObject
        attr_reader :id
      end
      attr_reader :computed, :discount_end, :line_ends_at, :timestamp, :type
    end

    class TrialSettings < Stripe::StripeObject
      class EndBehavior < Stripe::StripeObject
        attr_reader :prorate_up_front
      end
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
