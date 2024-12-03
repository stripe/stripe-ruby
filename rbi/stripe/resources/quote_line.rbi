# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # A quote line defines a set of changes, in the order provided, that will be applied upon quote acceptance.
  class QuoteLine < APIResource
    class Action < Stripe::StripeObject
      class AddDiscount < Stripe::StripeObject
        class DiscountEnd < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end
        sig { returns(T.nilable(T.any(String, Stripe::Coupon))) }
        attr_reader :coupon
        sig { returns(T.nilable(T.any(String, Stripe::Discount))) }
        attr_reader :discount
        sig { returns(T.nilable(DiscountEnd)) }
        attr_reader :discount_end
        sig { returns(T.nilable(Integer)) }
        attr_reader :index
        sig { returns(T.nilable(T.any(String, Stripe::PromotionCode))) }
        attr_reader :promotion_code
      end
      class AddItem < Stripe::StripeObject
        class Discount < Stripe::StripeObject
          class DiscountEnd < Stripe::StripeObject
            sig { returns(T.nilable(Integer)) }
            attr_reader :timestamp
            sig { returns(String) }
            attr_reader :type
          end
          sig { returns(T.nilable(T.any(String, Stripe::Coupon))) }
          attr_reader :coupon
          sig { returns(T.nilable(T.any(String, Stripe::Discount))) }
          attr_reader :discount
          sig { returns(T.nilable(DiscountEnd)) }
          attr_reader :discount_end
          sig { returns(T.nilable(T.any(String, Stripe::PromotionCode))) }
          attr_reader :promotion_code
        end
        class Trial < Stripe::StripeObject
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :converts_to
          sig { returns(String) }
          attr_reader :type
        end
        sig { returns(T::Array[Discount]) }
        attr_reader :discounts
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_reader :metadata
        sig { returns(T.any(String, Stripe::Price)) }
        attr_reader :price
        sig { returns(Integer) }
        attr_reader :quantity
        sig { returns(T.nilable(T::Array[Stripe::TaxRate])) }
        attr_reader :tax_rates
        sig { returns(T.nilable(Trial)) }
        attr_reader :trial
      end
      class RemoveDiscount < Stripe::StripeObject
        class DiscountEnd < Stripe::StripeObject
          sig { returns(T.nilable(Integer)) }
          attr_reader :timestamp
          sig { returns(String) }
          attr_reader :type
        end
        sig { returns(T.nilable(T.any(String, Stripe::Coupon))) }
        attr_reader :coupon
        sig { returns(T.nilable(T.any(String, Stripe::Discount))) }
        attr_reader :discount
        sig { returns(T.nilable(DiscountEnd)) }
        attr_reader :discount_end
        sig { returns(T.nilable(T.any(String, Stripe::PromotionCode))) }
        attr_reader :promotion_code
      end
      class RemoveItem < Stripe::StripeObject
        sig { returns(T.any(String, Stripe::Price)) }
        attr_reader :price
      end
      class SetDiscount < Stripe::StripeObject
        class DiscountEnd < Stripe::StripeObject
          sig { returns(T.nilable(Integer)) }
          attr_reader :timestamp
          sig { returns(String) }
          attr_reader :type
        end
        sig { returns(T.nilable(T.any(String, Stripe::Coupon))) }
        attr_reader :coupon
        sig { returns(T.nilable(T.any(String, Stripe::Discount))) }
        attr_reader :discount
        sig { returns(T.nilable(DiscountEnd)) }
        attr_reader :discount_end
        sig { returns(T.nilable(T.any(String, Stripe::PromotionCode))) }
        attr_reader :promotion_code
      end
      class SetItem < Stripe::StripeObject
        class Discount < Stripe::StripeObject
          class DiscountEnd < Stripe::StripeObject
            sig { returns(T.nilable(Integer)) }
            attr_reader :timestamp
            sig { returns(String) }
            attr_reader :type
          end
          sig { returns(T.nilable(T.any(String, Stripe::Coupon))) }
          attr_reader :coupon
          sig { returns(T.nilable(T.any(String, Stripe::Discount))) }
          attr_reader :discount
          sig { returns(T.nilable(DiscountEnd)) }
          attr_reader :discount_end
          sig { returns(T.nilable(T.any(String, Stripe::PromotionCode))) }
          attr_reader :promotion_code
        end
        class Trial < Stripe::StripeObject
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :converts_to
          sig { returns(String) }
          attr_reader :type
        end
        sig { returns(T::Array[Discount]) }
        attr_reader :discounts
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_reader :metadata
        sig { returns(T.any(String, Stripe::Price)) }
        attr_reader :price
        sig { returns(Integer) }
        attr_reader :quantity
        sig { returns(T.nilable(T::Array[Stripe::TaxRate])) }
        attr_reader :tax_rates
        sig { returns(T.nilable(Trial)) }
        attr_reader :trial
      end
      sig { returns(T.nilable(AddDiscount)) }
      attr_reader :add_discount
      sig { returns(T.nilable(AddItem)) }
      attr_reader :add_item
      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_reader :add_metadata
      sig { returns(T.nilable(RemoveDiscount)) }
      attr_reader :remove_discount
      sig { returns(T.nilable(RemoveItem)) }
      attr_reader :remove_item
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :remove_metadata
      sig { returns(T.nilable(T::Array[SetDiscount])) }
      attr_reader :set_discounts
      sig { returns(T.nilable(T::Array[SetItem])) }
      attr_reader :set_items
      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_reader :set_metadata
      sig { returns(String) }
      attr_reader :type
    end
    class AppliesTo < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :new_reference
      sig { returns(T.nilable(String)) }
      attr_reader :subscription_schedule
      sig { returns(String) }
      attr_reader :type
    end
    class CancelSubscriptionSchedule < Stripe::StripeObject
      sig { returns(String) }
      attr_reader :cancel_at
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :invoice_now
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :prorate
    end
    class EndsAt < Stripe::StripeObject
      class DiscountEnd < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :discount
      end
      class Duration < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :interval
        sig { returns(Integer) }
        attr_reader :interval_count
      end
      sig { returns(T.nilable(Integer)) }
      attr_reader :computed
      sig { returns(T.nilable(DiscountEnd)) }
      attr_reader :discount_end
      sig { returns(T.nilable(Duration)) }
      attr_reader :duration
      sig { returns(T.nilable(Integer)) }
      attr_reader :timestamp
      sig { returns(String) }
      attr_reader :type
    end
    class SetPauseCollection < Stripe::StripeObject
      class Set < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :behavior
      end
      sig { returns(T.nilable(Set)) }
      attr_reader :set
      sig { returns(String) }
      attr_reader :type
    end
    class StartsAt < Stripe::StripeObject
      class DiscountEnd < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :discount
      end
      class LineEndsAt < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :id
      end
      sig { returns(T.nilable(Integer)) }
      attr_reader :computed
      sig { returns(T.nilable(DiscountEnd)) }
      attr_reader :discount_end
      sig { returns(T.nilable(LineEndsAt)) }
      attr_reader :line_ends_at
      sig { returns(T.nilable(Integer)) }
      attr_reader :timestamp
      sig { returns(String) }
      attr_reader :type
    end
    class TrialSettings < Stripe::StripeObject
      class EndBehavior < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :prorate_up_front
      end
      sig { returns(T.nilable(EndBehavior)) }
      attr_reader :end_behavior
    end
    sig { returns(T::Array[Action]) }
    # A list of items the customer is being quoted for.
    attr_reader :actions
    sig { returns(T.nilable(AppliesTo)) }
    # Details to identify the subscription schedule the quote line applies to.
    attr_reader :applies_to
    sig { returns(T.nilable(String)) }
    # For point-in-time quote lines (having no `ends_at` timestamp), this attribute lets you set or remove whether the subscription's billing cycle anchor is reset at the Quote Line `starts_at` timestamp.For time-span based quote lines (having both `starts_at` and `ends_at`), the only valid value is `automatic`, which removes any previously configured billing cycle anchor resets during the window of time spanning the quote line.
    attr_reader :billing_cycle_anchor
    sig { returns(T.nilable(CancelSubscriptionSchedule)) }
    # A point-in-time operation that cancels an existing subscription schedule at the line's starts_at timestamp. Currently only compatible with `quote_acceptance_date` for `starts_at`. When using cancel_subscription_schedule, the subscription schedule on the quote remains unalterable, except for modifications to the metadata, collection_method or invoice_settings.
    attr_reader :cancel_subscription_schedule
    sig { returns(T.nilable(EndsAt)) }
    # Details to identify the end of the time range modified by the proposed change. If not supplied, the quote line is considered a point-in-time operation that only affects the exact timestamp at `starts_at`, and a restricted set of attributes is supported on the quote line.
    attr_reader :ends_at
    sig { returns(String) }
    # Unique identifier for the object.
    attr_reader :id
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    sig { returns(T.nilable(String)) }
    # Changes to how Stripe handles prorations during the quote line's time span. Affects if and how prorations are created when a future phase starts.
    attr_reader :proration_behavior
    sig { returns(T.nilable(SetPauseCollection)) }
    # Details to modify the pause_collection behavior of the subscription schedule.
    attr_reader :set_pause_collection
    sig { returns(T.nilable(String)) }
    # Timestamp helper to end the underlying schedule early, based on the acompanying line's start or end date.
    attr_reader :set_schedule_end
    sig { returns(T.nilable(StartsAt)) }
    # Details to identify the earliest timestamp where the proposed change should take effect.
    attr_reader :starts_at
    sig { returns(T.nilable(TrialSettings)) }
    # Settings related to subscription trials.
    attr_reader :trial_settings
  end
end