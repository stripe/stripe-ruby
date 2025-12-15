# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # A quote line defines a set of changes, in the order provided, that will be applied upon quote acceptance.
  class QuoteLine < APIResource
    class Action < ::Stripe::StripeObject
      class AddDiscount < ::Stripe::StripeObject
        class DiscountEnd < ::Stripe::StripeObject
          # The discount end type.
          sig { returns(String) }
          def type; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # ID of the coupon to create a new discount for.
        sig { returns(T.nilable(T.any(String, ::Stripe::Coupon))) }
        def coupon; end
        # ID of an existing discount on the object (or one of its ancestors) to reuse.
        sig { returns(T.nilable(T.any(String, ::Stripe::Discount))) }
        def discount; end
        # Details to determine how long the discount should be applied for.
        sig { returns(T.nilable(DiscountEnd)) }
        def discount_end; end
        # The index, starting at 0, at which to position the new discount. When not supplied, Stripe defaults to appending the discount to the end of the `discounts` array.
        sig { returns(T.nilable(Integer)) }
        def index; end
        # ID of the promotion code to create a new discount for.
        sig { returns(T.nilable(T.any(String, ::Stripe::PromotionCode))) }
        def promotion_code; end
        def self.inner_class_types
          @inner_class_types = {discount_end: DiscountEnd}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class AddItem < ::Stripe::StripeObject
        class Discount < ::Stripe::StripeObject
          class DiscountEnd < ::Stripe::StripeObject
            # The discount end timestamp.
            sig { returns(T.nilable(Integer)) }
            def timestamp; end
            # The discount end type.
            sig { returns(String) }
            def type; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # ID of the coupon to create a new discount for.
          sig { returns(T.nilable(T.any(String, ::Stripe::Coupon))) }
          def coupon; end
          # ID of an existing discount on the object (or one of its ancestors) to reuse.
          sig { returns(T.nilable(T.any(String, ::Stripe::Discount))) }
          def discount; end
          # Details to determine how long the discount should be applied for.
          sig { returns(T.nilable(DiscountEnd)) }
          def discount_end; end
          # ID of the promotion code to create a new discount for.
          sig { returns(T.nilable(T.any(String, ::Stripe::PromotionCode))) }
          def promotion_code; end
          def self.inner_class_types
            @inner_class_types = {discount_end: DiscountEnd}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class Trial < ::Stripe::StripeObject
          # List of price IDs which, if present on the subscription following a paid trial, constitute opting-in to the paid trial.
          sig { returns(T.nilable(T::Array[String])) }
          def converts_to; end
          # Determines the type of trial for this item.
          sig { returns(String) }
          def type; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The discounts applied to the subscription item. Subscription item discounts are applied before subscription discounts. Use `expand[]=discounts` to expand each discount.
        sig { returns(T::Array[Discount]) }
        def discounts; end
        # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an item. Metadata on this item will update the underlying subscription item's `metadata` when the phase is entered.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        # ID of the price to which the customer should be subscribed.
        sig { returns(T.any(String, ::Stripe::Price)) }
        def price; end
        # Quantity of the plan to which the customer should be subscribed.
        sig { returns(T.nilable(Integer)) }
        def quantity; end
        # The tax rates which apply to this `phase_item`. When set, the `default_tax_rates` on the phase do not apply to this `phase_item`.
        sig { returns(T.nilable(T::Array[::Stripe::TaxRate])) }
        def tax_rates; end
        # Options that configure the trial on the subscription item.
        sig { returns(T.nilable(Trial)) }
        def trial; end
        # The ID of the trial offer to apply to the configuration item.
        sig { returns(T.nilable(String)) }
        def trial_offer; end
        def self.inner_class_types
          @inner_class_types = {discounts: Discount, trial: Trial}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class RemoveDiscount < ::Stripe::StripeObject
        class DiscountEnd < ::Stripe::StripeObject
          # The discount end timestamp.
          sig { returns(T.nilable(Integer)) }
          def timestamp; end
          # The discount end type.
          sig { returns(String) }
          def type; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # ID of the coupon to create a new discount for.
        sig { returns(T.nilable(T.any(String, ::Stripe::Coupon))) }
        def coupon; end
        # ID of an existing discount on the object (or one of its ancestors) to reuse.
        sig { returns(T.nilable(T.any(String, ::Stripe::Discount))) }
        def discount; end
        # Details to determine how long the discount should be applied for.
        sig { returns(T.nilable(DiscountEnd)) }
        def discount_end; end
        # ID of the promotion code to create a new discount for.
        sig { returns(T.nilable(T.any(String, ::Stripe::PromotionCode))) }
        def promotion_code; end
        def self.inner_class_types
          @inner_class_types = {discount_end: DiscountEnd}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class RemoveItem < ::Stripe::StripeObject
        # ID of a price to remove.
        sig { returns(T.any(String, ::Stripe::Price)) }
        def price; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class SetDiscount < ::Stripe::StripeObject
        class DiscountEnd < ::Stripe::StripeObject
          # The discount end timestamp.
          sig { returns(T.nilable(Integer)) }
          def timestamp; end
          # The discount end type.
          sig { returns(String) }
          def type; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # ID of the coupon to create a new discount for.
        sig { returns(T.nilable(T.any(String, ::Stripe::Coupon))) }
        def coupon; end
        # ID of an existing discount on the object (or one of its ancestors) to reuse.
        sig { returns(T.nilable(T.any(String, ::Stripe::Discount))) }
        def discount; end
        # Details to determine how long the discount should be applied for.
        sig { returns(T.nilable(DiscountEnd)) }
        def discount_end; end
        # ID of the promotion code to create a new discount for.
        sig { returns(T.nilable(T.any(String, ::Stripe::PromotionCode))) }
        def promotion_code; end
        def self.inner_class_types
          @inner_class_types = {discount_end: DiscountEnd}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class SetItem < ::Stripe::StripeObject
        class Discount < ::Stripe::StripeObject
          class DiscountEnd < ::Stripe::StripeObject
            # The discount end timestamp.
            sig { returns(T.nilable(Integer)) }
            def timestamp; end
            # The discount end type.
            sig { returns(String) }
            def type; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # ID of the coupon to create a new discount for.
          sig { returns(T.nilable(T.any(String, ::Stripe::Coupon))) }
          def coupon; end
          # ID of an existing discount on the object (or one of its ancestors) to reuse.
          sig { returns(T.nilable(T.any(String, ::Stripe::Discount))) }
          def discount; end
          # Details to determine how long the discount should be applied for.
          sig { returns(T.nilable(DiscountEnd)) }
          def discount_end; end
          # ID of the promotion code to create a new discount for.
          sig { returns(T.nilable(T.any(String, ::Stripe::PromotionCode))) }
          def promotion_code; end
          def self.inner_class_types
            @inner_class_types = {discount_end: DiscountEnd}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class Trial < ::Stripe::StripeObject
          # List of price IDs which, if present on the subscription following a paid trial, constitute opting-in to the paid trial.
          sig { returns(T.nilable(T::Array[String])) }
          def converts_to; end
          # Determines the type of trial for this item.
          sig { returns(String) }
          def type; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The discounts applied to the subscription item. Subscription item discounts are applied before subscription discounts. Use `expand[]=discounts` to expand each discount.
        sig { returns(T::Array[Discount]) }
        def discounts; end
        # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an item. Metadata on this item will update the underlying subscription item's `metadata` when the phase is entered.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        # ID of the price to which the customer should be subscribed.
        sig { returns(T.any(String, ::Stripe::Price)) }
        def price; end
        # Quantity of the plan to which the customer should be subscribed.
        sig { returns(T.nilable(Integer)) }
        def quantity; end
        # The tax rates which apply to this `phase_item`. When set, the `default_tax_rates` on the phase do not apply to this `phase_item`.
        sig { returns(T.nilable(T::Array[::Stripe::TaxRate])) }
        def tax_rates; end
        # Options that configure the trial on the subscription item.
        sig { returns(T.nilable(Trial)) }
        def trial; end
        # The ID of the trial offer to apply to the configuration item.
        sig { returns(T.nilable(String)) }
        def trial_offer; end
        def self.inner_class_types
          @inner_class_types = {discounts: Discount, trial: Trial}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Details for the `add_discount` type.
      sig { returns(T.nilable(AddDiscount)) }
      def add_discount; end
      # Details for the `add_item` type.
      sig { returns(T.nilable(AddItem)) }
      def add_item; end
      # Details for the `add_metadata` type: specify a hash of key-value pairs.
      sig { returns(T.nilable(T::Hash[String, String])) }
      def add_metadata; end
      # Details for the `remove_discount` type.
      sig { returns(T.nilable(RemoveDiscount)) }
      def remove_discount; end
      # Details for the `remove_item` type.
      sig { returns(T.nilable(RemoveItem)) }
      def remove_item; end
      # Details for the `remove_metadata` type: specify an array of metadata keys.
      sig { returns(T.nilable(T::Array[String])) }
      def remove_metadata; end
      # Details for the `set_discounts` type.
      sig { returns(T.nilable(T::Array[SetDiscount])) }
      def set_discounts; end
      # Details for the `set_items` type.
      sig { returns(T.nilable(T::Array[SetItem])) }
      def set_items; end
      # Details for the `set_metadata` type: specify an array of key-value pairs.
      sig { returns(T.nilable(T::Hash[String, String])) }
      def set_metadata; end
      # The type of action the quote line performs.
      sig { returns(String) }
      def type; end
      def self.inner_class_types
        @inner_class_types = {
          add_discount: AddDiscount,
          add_item: AddItem,
          remove_discount: RemoveDiscount,
          remove_item: RemoveItem,
          set_discounts: SetDiscount,
          set_items: SetItem,
        }
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
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
    class CancelSubscriptionSchedule < ::Stripe::StripeObject
      # Timestamp helper to cancel the underlying schedule on the accompanying line's start date. Must be set to `line_starts_at`.
      sig { returns(String) }
      def cancel_at; end
      # If the subscription schedule is `active`, indicates if a final invoice will be generated that contains any un-invoiced metered usage and new/pending proration invoice items. Boolean that defaults to `true`.
      sig { returns(T.nilable(T::Boolean)) }
      def invoice_now; end
      # If the subscription schedule is `active`, indicates if the cancellation should be prorated. Boolean that defaults to `true`.
      sig { returns(T.nilable(T::Boolean)) }
      def prorate; end
      def self.inner_class_types
        @inner_class_types = {}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    class EndsAt < ::Stripe::StripeObject
      class DiscountEnd < ::Stripe::StripeObject
        # The ID of a specific discount.
        sig { returns(String) }
        def discount; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
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
      # The timestamp value that will be used to determine when to make changes to the subscription schedule, as computed from the `ends_at` field. For example, if `ends_at[type]=upcoming_invoice`, the upcoming invoice date will be computed at the time the `ends_at` field was specified and saved. This field will not be recomputed upon future requests to update or finalize the quote unless `ends_at` is respecified. This field is guaranteed to be populated after quote acceptance.
      sig { returns(T.nilable(Integer)) }
      def computed; end
      # Use the `end` time of a given discount.
      sig { returns(T.nilable(DiscountEnd)) }
      def discount_end; end
      # Time span for the quote line starting from the `starts_at` date.
      sig { returns(T.nilable(Duration)) }
      def duration; end
      # A precise Unix timestamp.
      sig { returns(T.nilable(Integer)) }
      def timestamp; end
      # Select a way to pass in `ends_at`.
      sig { returns(String) }
      def type; end
      def self.inner_class_types
        @inner_class_types = {discount_end: DiscountEnd, duration: Duration}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    class SetPauseCollection < ::Stripe::StripeObject
      class Set < ::Stripe::StripeObject
        # The payment collection behavior for this subscription while paused. One of `keep_as_draft`, `mark_uncollectible`, or `void`.
        sig { returns(String) }
        def behavior; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # If specified, payment collection for this subscription will be paused. Note that the subscription status will be unchanged and will not be updated to `paused`. Learn more about [pausing collection](https://docs.stripe.com/billing/subscriptions/pause-payment).
      sig { returns(T.nilable(Set)) }
      def set; end
      # Defines the type of the pause_collection behavior for the quote line.
      sig { returns(String) }
      def type; end
      def self.inner_class_types
        @inner_class_types = {set: Set}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    class StartsAt < ::Stripe::StripeObject
      class DiscountEnd < ::Stripe::StripeObject
        # The ID of a specific discount.
        sig { returns(String) }
        def discount; end
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
      # The timestamp value that will be used to determine when to make changes to the subscription schedule, as computed from the `starts_at` field. For example, if `starts_at[type]=upcoming_invoice`, the upcoming invoice date will be computed at the time the `starts_at` field was specified and saved. This field will not be recomputed upon future requests to update or finalize the quote unless `starts_at` is respecified. This field is guaranteed to be populated after quote acceptance.
      sig { returns(T.nilable(Integer)) }
      def computed; end
      # Use the `end` time of a given discount.
      sig { returns(T.nilable(DiscountEnd)) }
      def discount_end; end
      # The timestamp the given line ends at.
      sig { returns(T.nilable(LineEndsAt)) }
      def line_ends_at; end
      # A precise Unix timestamp.
      sig { returns(T.nilable(Integer)) }
      def timestamp; end
      # Select a way to pass in `starts_at`.
      sig { returns(String) }
      def type; end
      def self.inner_class_types
        @inner_class_types = {discount_end: DiscountEnd, line_ends_at: LineEndsAt}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    class TrialSettings < ::Stripe::StripeObject
      class EndBehavior < ::Stripe::StripeObject
        # Configure how an opt-in following a paid trial is billed when using `billing_behavior: prorate_up_front`.
        sig { returns(T.nilable(String)) }
        def prorate_up_front; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Defines how the subscription should behave when a trial ends.
      sig { returns(T.nilable(EndBehavior)) }
      def end_behavior; end
      def self.inner_class_types
        @inner_class_types = {end_behavior: EndBehavior}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    # A list of items the customer is being quoted for.
    sig { returns(T.nilable(T::Array[Action])) }
    def actions; end
    # Details to identify the subscription schedule the quote line applies to.
    sig { returns(T.nilable(AppliesTo)) }
    def applies_to; end
    # For point-in-time quote lines (having no `ends_at` timestamp), this attribute lets you set or remove whether the subscription's billing cycle anchor is reset at the Quote Line `starts_at` timestamp.For time-span based quote lines (having both `starts_at` and `ends_at`), the only valid value is `automatic`, which removes any previously configured billing cycle anchor resets during the window of time spanning the quote line.
    sig { returns(T.nilable(String)) }
    def billing_cycle_anchor; end
    # A point-in-time operation that cancels an existing subscription schedule at the line's starts_at timestamp. Currently only compatible with `quote_acceptance_date` for `starts_at`. When using cancel_subscription_schedule, the subscription schedule on the quote remains unalterable, except for modifications to the metadata, collection_method or invoice_settings.
    sig { returns(T.nilable(CancelSubscriptionSchedule)) }
    def cancel_subscription_schedule; end
    # Configures how the subscription schedule handles billing for phase transitions.
    sig { returns(T.nilable(String)) }
    def effective_at; end
    # Details to identify the end of the time range modified by the proposed change. If not supplied, the quote line is considered a point-in-time operation that only affects the exact timestamp at `starts_at`, and a restricted set of attributes is supported on the quote line.
    sig { returns(T.nilable(EndsAt)) }
    def ends_at; end
    # Unique identifier for the object.
    sig { returns(String) }
    def id; end
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    def object; end
    # Changes to how Stripe handles prorations during the quote line's time span. Affects if and how prorations are created when a future phase starts.
    sig { returns(T.nilable(String)) }
    def proration_behavior; end
    # Details to modify the pause_collection behavior of the subscription schedule.
    sig { returns(T.nilable(SetPauseCollection)) }
    def set_pause_collection; end
    # Timestamp helper to end the underlying schedule early, based on the acompanying line's start or end date.
    sig { returns(T.nilable(String)) }
    def set_schedule_end; end
    # Details to identify the earliest timestamp where the proposed change should take effect.
    sig { returns(T.nilable(StartsAt)) }
    def starts_at; end
    # Settings related to subscription trials.
    sig { returns(T.nilable(TrialSettings)) }
    def trial_settings; end
  end
end