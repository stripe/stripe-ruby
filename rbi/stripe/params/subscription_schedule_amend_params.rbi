# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class SubscriptionScheduleAmendParams < ::Stripe::RequestParams
    class Amendment < ::Stripe::RequestParams
      class AmendmentEnd < ::Stripe::RequestParams
        class DiscountEnd < ::Stripe::RequestParams
          # The ID of a specific discount.
          sig { returns(String) }
          def discount; end
          sig { params(_discount: String).returns(String) }
          def discount=(_discount); end
          sig { params(discount: String).void }
          def initialize(discount: nil); end
        end
        class Duration < ::Stripe::RequestParams
          # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
          sig { returns(String) }
          def interval; end
          sig { params(_interval: String).returns(String) }
          def interval=(_interval); end
          # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
          sig { returns(Integer) }
          def interval_count; end
          sig { params(_interval_count: Integer).returns(Integer) }
          def interval_count=(_interval_count); end
          sig { params(interval: String, interval_count: Integer).void }
          def initialize(interval: nil, interval_count: nil); end
        end
        # Use the `end` time of a given discount.
        sig {
          returns(T.nilable(SubscriptionScheduleAmendParams::Amendment::AmendmentEnd::DiscountEnd))
         }
        def discount_end; end
        sig {
          params(_discount_end: T.nilable(SubscriptionScheduleAmendParams::Amendment::AmendmentEnd::DiscountEnd)).returns(T.nilable(SubscriptionScheduleAmendParams::Amendment::AmendmentEnd::DiscountEnd))
         }
        def discount_end=(_discount_end); end
        # Time span for the amendment starting from the `amendment_start`.
        sig {
          returns(T.nilable(SubscriptionScheduleAmendParams::Amendment::AmendmentEnd::Duration))
         }
        def duration; end
        sig {
          params(_duration: T.nilable(SubscriptionScheduleAmendParams::Amendment::AmendmentEnd::Duration)).returns(T.nilable(SubscriptionScheduleAmendParams::Amendment::AmendmentEnd::Duration))
         }
        def duration=(_duration); end
        # A precise Unix timestamp for the amendment to end. Must be after the `amendment_start`.
        sig { returns(T.nilable(Integer)) }
        def timestamp; end
        sig { params(_timestamp: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def timestamp=(_timestamp); end
        # Select one of three ways to pass the `amendment_end`.
        sig { returns(String) }
        def type; end
        sig { params(_type: String).returns(String) }
        def type=(_type); end
        sig {
          params(discount_end: T.nilable(SubscriptionScheduleAmendParams::Amendment::AmendmentEnd::DiscountEnd), duration: T.nilable(SubscriptionScheduleAmendParams::Amendment::AmendmentEnd::Duration), timestamp: T.nilable(Integer), type: String).void
         }
        def initialize(discount_end: nil, duration: nil, timestamp: nil, type: nil); end
      end
      class AmendmentStart < ::Stripe::RequestParams
        class AmendmentEnd < ::Stripe::RequestParams
          # The position of the previous amendment in the `amendments` array after which this amendment should begin. Indexes start from 0 and must be less than the index of the current amendment in the array.
          sig { returns(Integer) }
          def index; end
          sig { params(_index: Integer).returns(Integer) }
          def index=(_index); end
          sig { params(index: Integer).void }
          def initialize(index: nil); end
        end
        class DiscountEnd < ::Stripe::RequestParams
          # The ID of a specific discount.
          sig { returns(String) }
          def discount; end
          sig { params(_discount: String).returns(String) }
          def discount=(_discount); end
          sig { params(discount: String).void }
          def initialize(discount: nil); end
        end
        # Details of another amendment in the same array, immediately after which this amendment should begin.
        sig {
          returns(T.nilable(SubscriptionScheduleAmendParams::Amendment::AmendmentStart::AmendmentEnd))
         }
        def amendment_end; end
        sig {
          params(_amendment_end: T.nilable(SubscriptionScheduleAmendParams::Amendment::AmendmentStart::AmendmentEnd)).returns(T.nilable(SubscriptionScheduleAmendParams::Amendment::AmendmentStart::AmendmentEnd))
         }
        def amendment_end=(_amendment_end); end
        # Use the `end` time of a given discount.
        sig {
          returns(T.nilable(SubscriptionScheduleAmendParams::Amendment::AmendmentStart::DiscountEnd))
         }
        def discount_end; end
        sig {
          params(_discount_end: T.nilable(SubscriptionScheduleAmendParams::Amendment::AmendmentStart::DiscountEnd)).returns(T.nilable(SubscriptionScheduleAmendParams::Amendment::AmendmentStart::DiscountEnd))
         }
        def discount_end=(_discount_end); end
        # A precise Unix timestamp for the amendment to start.
        sig { returns(T.nilable(Integer)) }
        def timestamp; end
        sig { params(_timestamp: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def timestamp=(_timestamp); end
        # Select one of three ways to pass the `amendment_start`.
        sig { returns(String) }
        def type; end
        sig { params(_type: String).returns(String) }
        def type=(_type); end
        sig {
          params(amendment_end: T.nilable(SubscriptionScheduleAmendParams::Amendment::AmendmentStart::AmendmentEnd), discount_end: T.nilable(SubscriptionScheduleAmendParams::Amendment::AmendmentStart::DiscountEnd), timestamp: T.nilable(Integer), type: String).void
         }
        def initialize(amendment_end: nil, discount_end: nil, timestamp: nil, type: nil); end
      end
      class DiscountAction < ::Stripe::RequestParams
        class Add < ::Stripe::RequestParams
          class DiscountEnd < ::Stripe::RequestParams
            # The type of calculation made to determine when the discount ends.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          # The coupon code to redeem.
          sig { returns(T.nilable(String)) }
          def coupon; end
          sig { params(_coupon: T.nilable(String)).returns(T.nilable(String)) }
          def coupon=(_coupon); end
          # An ID of an existing discount for a coupon that was already redeemed.
          sig { returns(T.nilable(String)) }
          def discount; end
          sig { params(_discount: T.nilable(String)).returns(T.nilable(String)) }
          def discount=(_discount); end
          # Details to determine how long the discount should be applied for.
          sig {
            returns(T.nilable(SubscriptionScheduleAmendParams::Amendment::DiscountAction::Add::DiscountEnd))
           }
          def discount_end; end
          sig {
            params(_discount_end: T.nilable(SubscriptionScheduleAmendParams::Amendment::DiscountAction::Add::DiscountEnd)).returns(T.nilable(SubscriptionScheduleAmendParams::Amendment::DiscountAction::Add::DiscountEnd))
           }
          def discount_end=(_discount_end); end
          # The index, starting at 0, at which to position the new discount. When not supplied, Stripe defaults to appending the discount to the end of the `discounts` array.
          sig { returns(T.nilable(Integer)) }
          def index; end
          sig { params(_index: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def index=(_index); end
          # The promotion code to redeem.
          sig { returns(T.nilable(String)) }
          def promotion_code; end
          sig { params(_promotion_code: T.nilable(String)).returns(T.nilable(String)) }
          def promotion_code=(_promotion_code); end
          sig {
            params(coupon: T.nilable(String), discount: T.nilable(String), discount_end: T.nilable(SubscriptionScheduleAmendParams::Amendment::DiscountAction::Add::DiscountEnd), index: T.nilable(Integer), promotion_code: T.nilable(String)).void
           }
          def initialize(
            coupon: nil,
            discount: nil,
            discount_end: nil,
            index: nil,
            promotion_code: nil
          ); end
        end
        class Remove < ::Stripe::RequestParams
          # The coupon code to remove from the `discounts` array.
          sig { returns(T.nilable(String)) }
          def coupon; end
          sig { params(_coupon: T.nilable(String)).returns(T.nilable(String)) }
          def coupon=(_coupon); end
          # The ID of a discount to remove from the `discounts` array.
          sig { returns(T.nilable(String)) }
          def discount; end
          sig { params(_discount: T.nilable(String)).returns(T.nilable(String)) }
          def discount=(_discount); end
          # The ID of a promotion code to remove from the `discounts` array.
          sig { returns(T.nilable(String)) }
          def promotion_code; end
          sig { params(_promotion_code: T.nilable(String)).returns(T.nilable(String)) }
          def promotion_code=(_promotion_code); end
          sig {
            params(coupon: T.nilable(String), discount: T.nilable(String), promotion_code: T.nilable(String)).void
           }
          def initialize(coupon: nil, discount: nil, promotion_code: nil); end
        end
        class Set < ::Stripe::RequestParams
          # The coupon code to replace the `discounts` array with.
          sig { returns(T.nilable(String)) }
          def coupon; end
          sig { params(_coupon: T.nilable(String)).returns(T.nilable(String)) }
          def coupon=(_coupon); end
          # An ID of an existing discount to replace the `discounts` array with.
          sig { returns(T.nilable(String)) }
          def discount; end
          sig { params(_discount: T.nilable(String)).returns(T.nilable(String)) }
          def discount=(_discount); end
          # An ID of an existing promotion code to replace the `discounts` array with.
          sig { returns(T.nilable(String)) }
          def promotion_code; end
          sig { params(_promotion_code: T.nilable(String)).returns(T.nilable(String)) }
          def promotion_code=(_promotion_code); end
          sig {
            params(coupon: T.nilable(String), discount: T.nilable(String), promotion_code: T.nilable(String)).void
           }
          def initialize(coupon: nil, discount: nil, promotion_code: nil); end
        end
        # Details of the discount to add.
        sig { returns(T.nilable(SubscriptionScheduleAmendParams::Amendment::DiscountAction::Add)) }
        def add; end
        sig {
          params(_add: T.nilable(SubscriptionScheduleAmendParams::Amendment::DiscountAction::Add)).returns(T.nilable(SubscriptionScheduleAmendParams::Amendment::DiscountAction::Add))
         }
        def add=(_add); end
        # Details of the discount to remove.
        sig {
          returns(T.nilable(SubscriptionScheduleAmendParams::Amendment::DiscountAction::Remove))
         }
        def remove; end
        sig {
          params(_remove: T.nilable(SubscriptionScheduleAmendParams::Amendment::DiscountAction::Remove)).returns(T.nilable(SubscriptionScheduleAmendParams::Amendment::DiscountAction::Remove))
         }
        def remove=(_remove); end
        # Details of the discount to replace the existing discounts with.
        sig { returns(T.nilable(SubscriptionScheduleAmendParams::Amendment::DiscountAction::Set)) }
        def set; end
        sig {
          params(_set: T.nilable(SubscriptionScheduleAmendParams::Amendment::DiscountAction::Set)).returns(T.nilable(SubscriptionScheduleAmendParams::Amendment::DiscountAction::Set))
         }
        def set=(_set); end
        # Determines the type of discount action.
        sig { returns(String) }
        def type; end
        sig { params(_type: String).returns(String) }
        def type=(_type); end
        sig {
          params(add: T.nilable(SubscriptionScheduleAmendParams::Amendment::DiscountAction::Add), remove: T.nilable(SubscriptionScheduleAmendParams::Amendment::DiscountAction::Remove), set: T.nilable(SubscriptionScheduleAmendParams::Amendment::DiscountAction::Set), type: String).void
         }
        def initialize(add: nil, remove: nil, set: nil, type: nil); end
      end
      class ItemAction < ::Stripe::RequestParams
        class Add < ::Stripe::RequestParams
          class Discount < ::Stripe::RequestParams
            class DiscountEnd < ::Stripe::RequestParams
              class Duration < ::Stripe::RequestParams
                # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
                sig { returns(String) }
                def interval; end
                sig { params(_interval: String).returns(String) }
                def interval=(_interval); end
                # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
                sig { returns(Integer) }
                def interval_count; end
                sig { params(_interval_count: Integer).returns(Integer) }
                def interval_count=(_interval_count); end
                sig { params(interval: String, interval_count: Integer).void }
                def initialize(interval: nil, interval_count: nil); end
              end
              # Time span for the redeemed discount.
              sig {
                returns(T.nilable(SubscriptionScheduleAmendParams::Amendment::ItemAction::Add::Discount::DiscountEnd::Duration))
               }
              def duration; end
              sig {
                params(_duration: T.nilable(SubscriptionScheduleAmendParams::Amendment::ItemAction::Add::Discount::DiscountEnd::Duration)).returns(T.nilable(SubscriptionScheduleAmendParams::Amendment::ItemAction::Add::Discount::DiscountEnd::Duration))
               }
              def duration=(_duration); end
              # A precise Unix timestamp for the discount to end. Must be in the future.
              sig { returns(T.nilable(Integer)) }
              def timestamp; end
              sig { params(_timestamp: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def timestamp=(_timestamp); end
              # The type of calculation made to determine when the discount ends.
              sig { returns(String) }
              def type; end
              sig { params(_type: String).returns(String) }
              def type=(_type); end
              sig {
                params(duration: T.nilable(SubscriptionScheduleAmendParams::Amendment::ItemAction::Add::Discount::DiscountEnd::Duration), timestamp: T.nilable(Integer), type: String).void
               }
              def initialize(duration: nil, timestamp: nil, type: nil); end
            end
            # ID of the coupon to create a new discount for.
            sig { returns(T.nilable(String)) }
            def coupon; end
            sig { params(_coupon: T.nilable(String)).returns(T.nilable(String)) }
            def coupon=(_coupon); end
            # ID of an existing discount on the object (or one of its ancestors) to reuse.
            sig { returns(T.nilable(String)) }
            def discount; end
            sig { params(_discount: T.nilable(String)).returns(T.nilable(String)) }
            def discount=(_discount); end
            # Details to determine how long the discount should be applied for.
            sig {
              returns(T.nilable(SubscriptionScheduleAmendParams::Amendment::ItemAction::Add::Discount::DiscountEnd))
             }
            def discount_end; end
            sig {
              params(_discount_end: T.nilable(SubscriptionScheduleAmendParams::Amendment::ItemAction::Add::Discount::DiscountEnd)).returns(T.nilable(SubscriptionScheduleAmendParams::Amendment::ItemAction::Add::Discount::DiscountEnd))
             }
            def discount_end=(_discount_end); end
            # ID of the promotion code to create a new discount for.
            sig { returns(T.nilable(String)) }
            def promotion_code; end
            sig { params(_promotion_code: T.nilable(String)).returns(T.nilable(String)) }
            def promotion_code=(_promotion_code); end
            sig {
              params(coupon: T.nilable(String), discount: T.nilable(String), discount_end: T.nilable(SubscriptionScheduleAmendParams::Amendment::ItemAction::Add::Discount::DiscountEnd), promotion_code: T.nilable(String)).void
             }
            def initialize(coupon: nil, discount: nil, discount_end: nil, promotion_code: nil); end
          end
          class Trial < ::Stripe::RequestParams
            # List of price IDs which, if present on the subscription following a paid trial, constitute opting-in to the paid trial. Currently only supports at most 1 price ID.
            sig { returns(T.nilable(T::Array[String])) }
            def converts_to; end
            sig {
              params(_converts_to: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
             }
            def converts_to=(_converts_to); end
            # Determines the type of trial for this item.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig { params(converts_to: T.nilable(T::Array[String]), type: String).void }
            def initialize(converts_to: nil, type: nil); end
          end
          # The discounts applied to the item. Subscription item discounts are applied before subscription discounts.
          sig {
            returns(T.nilable(T::Array[SubscriptionScheduleAmendParams::Amendment::ItemAction::Add::Discount]))
           }
          def discounts; end
          sig {
            params(_discounts: T.nilable(T::Array[SubscriptionScheduleAmendParams::Amendment::ItemAction::Add::Discount])).returns(T.nilable(T::Array[SubscriptionScheduleAmendParams::Amendment::ItemAction::Add::Discount]))
           }
          def discounts=(_discounts); end
          # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
          sig { returns(T.nilable(T::Hash[String, String])) }
          def metadata; end
          sig {
            params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
           }
          def metadata=(_metadata); end
          # The ID of the price object.
          sig { returns(String) }
          def price; end
          sig { params(_price: String).returns(String) }
          def price=(_price); end
          # Quantity for this item.
          sig { returns(T.nilable(Integer)) }
          def quantity; end
          sig { params(_quantity: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def quantity=(_quantity); end
          # The tax rates that apply to this subscription item. When set, the `default_tax_rates` on the subscription do not apply to this `subscription_item`.
          sig { returns(T.nilable(T::Array[String])) }
          def tax_rates; end
          sig {
            params(_tax_rates: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
           }
          def tax_rates=(_tax_rates); end
          # Options that configure the trial on the subscription item.
          sig {
            returns(T.nilable(SubscriptionScheduleAmendParams::Amendment::ItemAction::Add::Trial))
           }
          def trial; end
          sig {
            params(_trial: T.nilable(SubscriptionScheduleAmendParams::Amendment::ItemAction::Add::Trial)).returns(T.nilable(SubscriptionScheduleAmendParams::Amendment::ItemAction::Add::Trial))
           }
          def trial=(_trial); end
          sig {
            params(discounts: T.nilable(T::Array[SubscriptionScheduleAmendParams::Amendment::ItemAction::Add::Discount]), metadata: T.nilable(T::Hash[String, String]), price: String, quantity: T.nilable(Integer), tax_rates: T.nilable(T::Array[String]), trial: T.nilable(SubscriptionScheduleAmendParams::Amendment::ItemAction::Add::Trial)).void
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
        class Remove < ::Stripe::RequestParams
          # ID of a price to remove.
          sig { returns(String) }
          def price; end
          sig { params(_price: String).returns(String) }
          def price=(_price); end
          sig { params(price: String).void }
          def initialize(price: nil); end
        end
        class Set < ::Stripe::RequestParams
          class Discount < ::Stripe::RequestParams
            class DiscountEnd < ::Stripe::RequestParams
              class Duration < ::Stripe::RequestParams
                # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
                sig { returns(String) }
                def interval; end
                sig { params(_interval: String).returns(String) }
                def interval=(_interval); end
                # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
                sig { returns(Integer) }
                def interval_count; end
                sig { params(_interval_count: Integer).returns(Integer) }
                def interval_count=(_interval_count); end
                sig { params(interval: String, interval_count: Integer).void }
                def initialize(interval: nil, interval_count: nil); end
              end
              # Time span for the redeemed discount.
              sig {
                returns(T.nilable(SubscriptionScheduleAmendParams::Amendment::ItemAction::Set::Discount::DiscountEnd::Duration))
               }
              def duration; end
              sig {
                params(_duration: T.nilable(SubscriptionScheduleAmendParams::Amendment::ItemAction::Set::Discount::DiscountEnd::Duration)).returns(T.nilable(SubscriptionScheduleAmendParams::Amendment::ItemAction::Set::Discount::DiscountEnd::Duration))
               }
              def duration=(_duration); end
              # A precise Unix timestamp for the discount to end. Must be in the future.
              sig { returns(T.nilable(Integer)) }
              def timestamp; end
              sig { params(_timestamp: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def timestamp=(_timestamp); end
              # The type of calculation made to determine when the discount ends.
              sig { returns(String) }
              def type; end
              sig { params(_type: String).returns(String) }
              def type=(_type); end
              sig {
                params(duration: T.nilable(SubscriptionScheduleAmendParams::Amendment::ItemAction::Set::Discount::DiscountEnd::Duration), timestamp: T.nilable(Integer), type: String).void
               }
              def initialize(duration: nil, timestamp: nil, type: nil); end
            end
            # ID of the coupon to create a new discount for.
            sig { returns(T.nilable(String)) }
            def coupon; end
            sig { params(_coupon: T.nilable(String)).returns(T.nilable(String)) }
            def coupon=(_coupon); end
            # ID of an existing discount on the object (or one of its ancestors) to reuse.
            sig { returns(T.nilable(String)) }
            def discount; end
            sig { params(_discount: T.nilable(String)).returns(T.nilable(String)) }
            def discount=(_discount); end
            # Details to determine how long the discount should be applied for.
            sig {
              returns(T.nilable(SubscriptionScheduleAmendParams::Amendment::ItemAction::Set::Discount::DiscountEnd))
             }
            def discount_end; end
            sig {
              params(_discount_end: T.nilable(SubscriptionScheduleAmendParams::Amendment::ItemAction::Set::Discount::DiscountEnd)).returns(T.nilable(SubscriptionScheduleAmendParams::Amendment::ItemAction::Set::Discount::DiscountEnd))
             }
            def discount_end=(_discount_end); end
            # ID of the promotion code to create a new discount for.
            sig { returns(T.nilable(String)) }
            def promotion_code; end
            sig { params(_promotion_code: T.nilable(String)).returns(T.nilable(String)) }
            def promotion_code=(_promotion_code); end
            sig {
              params(coupon: T.nilable(String), discount: T.nilable(String), discount_end: T.nilable(SubscriptionScheduleAmendParams::Amendment::ItemAction::Set::Discount::DiscountEnd), promotion_code: T.nilable(String)).void
             }
            def initialize(coupon: nil, discount: nil, discount_end: nil, promotion_code: nil); end
          end
          class Trial < ::Stripe::RequestParams
            # List of price IDs which, if present on the subscription following a paid trial, constitute opting-in to the paid trial. Currently only supports at most 1 price ID.
            sig { returns(T.nilable(T::Array[String])) }
            def converts_to; end
            sig {
              params(_converts_to: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
             }
            def converts_to=(_converts_to); end
            # Determines the type of trial for this item.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig { params(converts_to: T.nilable(T::Array[String]), type: String).void }
            def initialize(converts_to: nil, type: nil); end
          end
          # If an item with the `price` already exists, passing this will override the `discounts` array on the subscription item that matches that price. Otherwise, the `items` array is cleared and a single new item is added with the supplied `discounts`.
          sig {
            returns(T.nilable(T::Array[SubscriptionScheduleAmendParams::Amendment::ItemAction::Set::Discount]))
           }
          def discounts; end
          sig {
            params(_discounts: T.nilable(T::Array[SubscriptionScheduleAmendParams::Amendment::ItemAction::Set::Discount])).returns(T.nilable(T::Array[SubscriptionScheduleAmendParams::Amendment::ItemAction::Set::Discount]))
           }
          def discounts=(_discounts); end
          # If an item with the `price` already exists, passing this will override the `metadata` on the subscription item that matches that price. Otherwise, the `items` array is cleared and a single new item is added with the supplied `metadata`.
          sig { returns(T.nilable(T::Hash[String, String])) }
          def metadata; end
          sig {
            params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
           }
          def metadata=(_metadata); end
          # The ID of the price object.
          sig { returns(String) }
          def price; end
          sig { params(_price: String).returns(String) }
          def price=(_price); end
          # If an item with the `price` already exists, passing this will override the quantity on the subscription item that matches that price. Otherwise, the `items` array is cleared and a single new item is added with the supplied `quantity`.
          sig { returns(T.nilable(Integer)) }
          def quantity; end
          sig { params(_quantity: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def quantity=(_quantity); end
          # If an item with the `price` already exists, passing this will override the `tax_rates` array on the subscription item that matches that price. Otherwise, the `items` array is cleared and a single new item is added with the supplied `tax_rates`.
          sig { returns(T.nilable(T::Array[String])) }
          def tax_rates; end
          sig {
            params(_tax_rates: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
           }
          def tax_rates=(_tax_rates); end
          # If an item with the `price` already exists, passing this will override the `trial` configuration on the subscription item that matches that price. Otherwise, the `items` array is cleared and a single new item is added with the supplied `trial`.
          sig {
            returns(T.nilable(SubscriptionScheduleAmendParams::Amendment::ItemAction::Set::Trial))
           }
          def trial; end
          sig {
            params(_trial: T.nilable(SubscriptionScheduleAmendParams::Amendment::ItemAction::Set::Trial)).returns(T.nilable(SubscriptionScheduleAmendParams::Amendment::ItemAction::Set::Trial))
           }
          def trial=(_trial); end
          sig {
            params(discounts: T.nilable(T::Array[SubscriptionScheduleAmendParams::Amendment::ItemAction::Set::Discount]), metadata: T.nilable(T::Hash[String, String]), price: String, quantity: T.nilable(Integer), tax_rates: T.nilable(T::Array[String]), trial: T.nilable(SubscriptionScheduleAmendParams::Amendment::ItemAction::Set::Trial)).void
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
        # Details of the subscription item to add. If an item with the same `price` exists, it will be replaced by this new item. Otherwise, it adds the new item.
        sig { returns(T.nilable(SubscriptionScheduleAmendParams::Amendment::ItemAction::Add)) }
        def add; end
        sig {
          params(_add: T.nilable(SubscriptionScheduleAmendParams::Amendment::ItemAction::Add)).returns(T.nilable(SubscriptionScheduleAmendParams::Amendment::ItemAction::Add))
         }
        def add=(_add); end
        # Details of the subscription item to remove.
        sig { returns(T.nilable(SubscriptionScheduleAmendParams::Amendment::ItemAction::Remove)) }
        def remove; end
        sig {
          params(_remove: T.nilable(SubscriptionScheduleAmendParams::Amendment::ItemAction::Remove)).returns(T.nilable(SubscriptionScheduleAmendParams::Amendment::ItemAction::Remove))
         }
        def remove=(_remove); end
        # Details of the subscription item to replace the existing items with. If an item with the `set[price]` already exists, the `items` array is not cleared. Instead, all of the other `set` properties that are passed in this request will replace the existing values for the configuration item.
        sig { returns(T.nilable(SubscriptionScheduleAmendParams::Amendment::ItemAction::Set)) }
        def set; end
        sig {
          params(_set: T.nilable(SubscriptionScheduleAmendParams::Amendment::ItemAction::Set)).returns(T.nilable(SubscriptionScheduleAmendParams::Amendment::ItemAction::Set))
         }
        def set=(_set); end
        # Determines the type of item action.
        sig { returns(String) }
        def type; end
        sig { params(_type: String).returns(String) }
        def type=(_type); end
        sig {
          params(add: T.nilable(SubscriptionScheduleAmendParams::Amendment::ItemAction::Add), remove: T.nilable(SubscriptionScheduleAmendParams::Amendment::ItemAction::Remove), set: T.nilable(SubscriptionScheduleAmendParams::Amendment::ItemAction::Set), type: String).void
         }
        def initialize(add: nil, remove: nil, set: nil, type: nil); end
      end
      class MetadataAction < ::Stripe::RequestParams
        # Key-value pairs to add to schedule phase metadata. These values will merge with existing schedule phase metadata.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def add; end
        sig {
          params(_add: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
         }
        def add=(_add); end
        # Keys to remove from schedule phase metadata.
        sig { returns(T.nilable(T::Array[String])) }
        def remove; end
        sig { params(_remove: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def remove=(_remove); end
        # Key-value pairs to set as schedule phase metadata. Existing schedule phase metadata will be overwritten.
        sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
        def set; end
        sig {
          params(_set: T.nilable(T.any(String, T::Hash[String, String]))).returns(T.nilable(T.any(String, T::Hash[String, String])))
         }
        def set=(_set); end
        # Select one of three ways to update phase-level `metadata` on subscription schedules.
        sig { returns(String) }
        def type; end
        sig { params(_type: String).returns(String) }
        def type=(_type); end
        sig {
          params(add: T.nilable(T::Hash[String, String]), remove: T.nilable(T::Array[String]), set: T.nilable(T.any(String, T::Hash[String, String])), type: String).void
         }
        def initialize(add: nil, remove: nil, set: nil, type: nil); end
      end
      class SetPauseCollection < ::Stripe::RequestParams
        class Set < ::Stripe::RequestParams
          # The payment collection behavior for this subscription while paused. One of `keep_as_draft`, `mark_uncollectible`, or `void`.
          sig { returns(String) }
          def behavior; end
          sig { params(_behavior: String).returns(String) }
          def behavior=(_behavior); end
          sig { params(behavior: String).void }
          def initialize(behavior: nil); end
        end
        # Details of the pause_collection behavior to apply to the amendment.
        sig {
          returns(T.nilable(SubscriptionScheduleAmendParams::Amendment::SetPauseCollection::Set))
         }
        def set; end
        sig {
          params(_set: T.nilable(SubscriptionScheduleAmendParams::Amendment::SetPauseCollection::Set)).returns(T.nilable(SubscriptionScheduleAmendParams::Amendment::SetPauseCollection::Set))
         }
        def set=(_set); end
        # Determines the type of the pause_collection amendment.
        sig { returns(String) }
        def type; end
        sig { params(_type: String).returns(String) }
        def type=(_type); end
        sig {
          params(set: T.nilable(SubscriptionScheduleAmendParams::Amendment::SetPauseCollection::Set), type: String).void
         }
        def initialize(set: nil, type: nil); end
      end
      class TrialSettings < ::Stripe::RequestParams
        class EndBehavior < ::Stripe::RequestParams
          # Configure how an opt-in following a paid trial is billed when using `billing_behavior: prorate_up_front`.
          sig { returns(T.nilable(String)) }
          def prorate_up_front; end
          sig { params(_prorate_up_front: T.nilable(String)).returns(T.nilable(String)) }
          def prorate_up_front=(_prorate_up_front); end
          sig { params(prorate_up_front: T.nilable(String)).void }
          def initialize(prorate_up_front: nil); end
        end
        # Defines how the subscription should behave when a trial ends.
        sig {
          returns(T.nilable(SubscriptionScheduleAmendParams::Amendment::TrialSettings::EndBehavior))
         }
        def end_behavior; end
        sig {
          params(_end_behavior: T.nilable(SubscriptionScheduleAmendParams::Amendment::TrialSettings::EndBehavior)).returns(T.nilable(SubscriptionScheduleAmendParams::Amendment::TrialSettings::EndBehavior))
         }
        def end_behavior=(_end_behavior); end
        sig {
          params(end_behavior: T.nilable(SubscriptionScheduleAmendParams::Amendment::TrialSettings::EndBehavior)).void
         }
        def initialize(end_behavior: nil); end
      end
      # Details to identify the end of the time range modified by the proposed change. If not supplied, the amendment is considered a point-in-time operation that only affects the exact timestamp at `amendment_start`, and a restricted set of attributes is supported on the amendment.
      sig { returns(T.nilable(SubscriptionScheduleAmendParams::Amendment::AmendmentEnd)) }
      def amendment_end; end
      sig {
        params(_amendment_end: T.nilable(SubscriptionScheduleAmendParams::Amendment::AmendmentEnd)).returns(T.nilable(SubscriptionScheduleAmendParams::Amendment::AmendmentEnd))
       }
      def amendment_end=(_amendment_end); end
      # Details to identify the earliest timestamp where the proposed change should take effect.
      sig { returns(SubscriptionScheduleAmendParams::Amendment::AmendmentStart) }
      def amendment_start; end
      sig {
        params(_amendment_start: SubscriptionScheduleAmendParams::Amendment::AmendmentStart).returns(SubscriptionScheduleAmendParams::Amendment::AmendmentStart)
       }
      def amendment_start=(_amendment_start); end
      # For point-in-time amendments (having no `amendment_end`), this attribute lets you set or remove whether the subscription's billing cycle anchor is reset at the `amendment_start` timestamp.For time-span based amendments (having both `amendment_start` and `amendment_end`), the only value valid is `automatic`, which removes any previously configured billing cycle anchor resets scheduled to occur during the window of time spanned by the amendment.
      sig { returns(T.nilable(String)) }
      def billing_cycle_anchor; end
      sig { params(_billing_cycle_anchor: T.nilable(String)).returns(T.nilable(String)) }
      def billing_cycle_anchor=(_billing_cycle_anchor); end
      # Changes to the coupons being redeemed or discounts being applied during the amendment time span.
      sig {
        returns(T.nilable(T::Array[SubscriptionScheduleAmendParams::Amendment::DiscountAction]))
       }
      def discount_actions; end
      sig {
        params(_discount_actions: T.nilable(T::Array[SubscriptionScheduleAmendParams::Amendment::DiscountAction])).returns(T.nilable(T::Array[SubscriptionScheduleAmendParams::Amendment::DiscountAction]))
       }
      def discount_actions=(_discount_actions); end
      # Changes to the subscription items during the amendment time span.
      sig { returns(T.nilable(T::Array[SubscriptionScheduleAmendParams::Amendment::ItemAction])) }
      def item_actions; end
      sig {
        params(_item_actions: T.nilable(T::Array[SubscriptionScheduleAmendParams::Amendment::ItemAction])).returns(T.nilable(T::Array[SubscriptionScheduleAmendParams::Amendment::ItemAction]))
       }
      def item_actions=(_item_actions); end
      # Instructions for how to modify phase metadata
      sig {
        returns(T.nilable(T::Array[SubscriptionScheduleAmendParams::Amendment::MetadataAction]))
       }
      def metadata_actions; end
      sig {
        params(_metadata_actions: T.nilable(T::Array[SubscriptionScheduleAmendParams::Amendment::MetadataAction])).returns(T.nilable(T::Array[SubscriptionScheduleAmendParams::Amendment::MetadataAction]))
       }
      def metadata_actions=(_metadata_actions); end
      # Changes to how Stripe handles prorations during the amendment time span. Affects if and how prorations are created when a future phase starts. In cases where the amendment changes the currently active phase, it is used to determine whether or how to prorate now, at the time of the request. Also supported as a point-in-time operation when `amendment_end` is `null`.
      sig { returns(T.nilable(String)) }
      def proration_behavior; end
      sig { params(_proration_behavior: T.nilable(String)).returns(T.nilable(String)) }
      def proration_behavior=(_proration_behavior); end
      # Defines how to pause collection for the underlying subscription throughout the duration of the amendment.
      sig { returns(T.nilable(SubscriptionScheduleAmendParams::Amendment::SetPauseCollection)) }
      def set_pause_collection; end
      sig {
        params(_set_pause_collection: T.nilable(SubscriptionScheduleAmendParams::Amendment::SetPauseCollection)).returns(T.nilable(SubscriptionScheduleAmendParams::Amendment::SetPauseCollection))
       }
      def set_pause_collection=(_set_pause_collection); end
      # Ends the subscription schedule early as dictated by either the accompanying amendment's start or end.
      sig { returns(T.nilable(String)) }
      def set_schedule_end; end
      sig { params(_set_schedule_end: T.nilable(String)).returns(T.nilable(String)) }
      def set_schedule_end=(_set_schedule_end); end
      # Settings related to subscription trials.
      sig { returns(T.nilable(SubscriptionScheduleAmendParams::Amendment::TrialSettings)) }
      def trial_settings; end
      sig {
        params(_trial_settings: T.nilable(SubscriptionScheduleAmendParams::Amendment::TrialSettings)).returns(T.nilable(SubscriptionScheduleAmendParams::Amendment::TrialSettings))
       }
      def trial_settings=(_trial_settings); end
      sig {
        params(amendment_end: T.nilable(SubscriptionScheduleAmendParams::Amendment::AmendmentEnd), amendment_start: SubscriptionScheduleAmendParams::Amendment::AmendmentStart, billing_cycle_anchor: T.nilable(String), discount_actions: T.nilable(T::Array[SubscriptionScheduleAmendParams::Amendment::DiscountAction]), item_actions: T.nilable(T::Array[SubscriptionScheduleAmendParams::Amendment::ItemAction]), metadata_actions: T.nilable(T::Array[SubscriptionScheduleAmendParams::Amendment::MetadataAction]), proration_behavior: T.nilable(String), set_pause_collection: T.nilable(SubscriptionScheduleAmendParams::Amendment::SetPauseCollection), set_schedule_end: T.nilable(String), trial_settings: T.nilable(SubscriptionScheduleAmendParams::Amendment::TrialSettings)).void
       }
      def initialize(
        amendment_end: nil,
        amendment_start: nil,
        billing_cycle_anchor: nil,
        discount_actions: nil,
        item_actions: nil,
        metadata_actions: nil,
        proration_behavior: nil,
        set_pause_collection: nil,
        set_schedule_end: nil,
        trial_settings: nil
      ); end
    end
    class Prebilling < ::Stripe::RequestParams
      class BillFrom < ::Stripe::RequestParams
        class AmendmentStart < ::Stripe::RequestParams
          # The position of the amendment in the `amendments` array with which prebilling should begin. Indexes start from 0 and must be less than the total number of supplied amendments.
          sig { returns(Integer) }
          def index; end
          sig { params(_index: Integer).returns(Integer) }
          def index=(_index); end
          sig { params(index: Integer).void }
          def initialize(index: nil); end
        end
        # Start the prebilled period when a specified amendment begins.
        sig {
          returns(T.nilable(SubscriptionScheduleAmendParams::Prebilling::BillFrom::AmendmentStart))
         }
        def amendment_start; end
        sig {
          params(_amendment_start: T.nilable(SubscriptionScheduleAmendParams::Prebilling::BillFrom::AmendmentStart)).returns(T.nilable(SubscriptionScheduleAmendParams::Prebilling::BillFrom::AmendmentStart))
         }
        def amendment_start=(_amendment_start); end
        # Start the prebilled period at a precise integer timestamp, starting from the Unix epoch.
        sig { returns(T.nilable(Integer)) }
        def timestamp; end
        sig { params(_timestamp: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def timestamp=(_timestamp); end
        # Select one of several ways to pass the `bill_from` value.
        sig { returns(String) }
        def type; end
        sig { params(_type: String).returns(String) }
        def type=(_type); end
        sig {
          params(amendment_start: T.nilable(SubscriptionScheduleAmendParams::Prebilling::BillFrom::AmendmentStart), timestamp: T.nilable(Integer), type: String).void
         }
        def initialize(amendment_start: nil, timestamp: nil, type: nil); end
      end
      class BillUntil < ::Stripe::RequestParams
        class AmendmentEnd < ::Stripe::RequestParams
          # The position of the amendment in the `amendments` array at which prebilling should end. Indexes start from 0 and must be less than the total number of supplied amendments.
          sig { returns(Integer) }
          def index; end
          sig { params(_index: Integer).returns(Integer) }
          def index=(_index); end
          sig { params(index: Integer).void }
          def initialize(index: nil); end
        end
        class Duration < ::Stripe::RequestParams
          # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
          sig { returns(String) }
          def interval; end
          sig { params(_interval: String).returns(String) }
          def interval=(_interval); end
          # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
          sig { returns(Integer) }
          def interval_count; end
          sig { params(_interval_count: Integer).returns(Integer) }
          def interval_count=(_interval_count); end
          sig { params(interval: String, interval_count: Integer).void }
          def initialize(interval: nil, interval_count: nil); end
        end
        # End the prebilled period when a specified amendment ends.
        sig {
          returns(T.nilable(SubscriptionScheduleAmendParams::Prebilling::BillUntil::AmendmentEnd))
         }
        def amendment_end; end
        sig {
          params(_amendment_end: T.nilable(SubscriptionScheduleAmendParams::Prebilling::BillUntil::AmendmentEnd)).returns(T.nilable(SubscriptionScheduleAmendParams::Prebilling::BillUntil::AmendmentEnd))
         }
        def amendment_end=(_amendment_end); end
        # Time span for prebilling, starting from `bill_from`.
        sig { returns(T.nilable(SubscriptionScheduleAmendParams::Prebilling::BillUntil::Duration)) }
        def duration; end
        sig {
          params(_duration: T.nilable(SubscriptionScheduleAmendParams::Prebilling::BillUntil::Duration)).returns(T.nilable(SubscriptionScheduleAmendParams::Prebilling::BillUntil::Duration))
         }
        def duration=(_duration); end
        # End the prebilled period at a precise integer timestamp, starting from the Unix epoch.
        sig { returns(T.nilable(Integer)) }
        def timestamp; end
        sig { params(_timestamp: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def timestamp=(_timestamp); end
        # Select one of several ways to pass the `bill_until` value.
        sig { returns(String) }
        def type; end
        sig { params(_type: String).returns(String) }
        def type=(_type); end
        sig {
          params(amendment_end: T.nilable(SubscriptionScheduleAmendParams::Prebilling::BillUntil::AmendmentEnd), duration: T.nilable(SubscriptionScheduleAmendParams::Prebilling::BillUntil::Duration), timestamp: T.nilable(Integer), type: String).void
         }
        def initialize(amendment_end: nil, duration: nil, timestamp: nil, type: nil); end
      end
      # The beginning of the prebilled time period. The default value is `now`.
      sig { returns(T.nilable(SubscriptionScheduleAmendParams::Prebilling::BillFrom)) }
      def bill_from; end
      sig {
        params(_bill_from: T.nilable(SubscriptionScheduleAmendParams::Prebilling::BillFrom)).returns(T.nilable(SubscriptionScheduleAmendParams::Prebilling::BillFrom))
       }
      def bill_from=(_bill_from); end
      # The end of the prebilled time period.
      sig { returns(T.nilable(SubscriptionScheduleAmendParams::Prebilling::BillUntil)) }
      def bill_until; end
      sig {
        params(_bill_until: T.nilable(SubscriptionScheduleAmendParams::Prebilling::BillUntil)).returns(T.nilable(SubscriptionScheduleAmendParams::Prebilling::BillUntil))
       }
      def bill_until=(_bill_until); end
      # When the prebilling invoice should be created. The default value is `now`.
      sig { returns(T.nilable(String)) }
      def invoice_at; end
      sig { params(_invoice_at: T.nilable(String)).returns(T.nilable(String)) }
      def invoice_at=(_invoice_at); end
      # Whether to cancel or preserve `prebilling` if the subscription is updated during the prebilled period. The default value is `reset`.
      sig { returns(T.nilable(String)) }
      def update_behavior; end
      sig { params(_update_behavior: T.nilable(String)).returns(T.nilable(String)) }
      def update_behavior=(_update_behavior); end
      sig {
        params(bill_from: T.nilable(SubscriptionScheduleAmendParams::Prebilling::BillFrom), bill_until: T.nilable(SubscriptionScheduleAmendParams::Prebilling::BillUntil), invoice_at: T.nilable(String), update_behavior: T.nilable(String)).void
       }
      def initialize(bill_from: nil, bill_until: nil, invoice_at: nil, update_behavior: nil); end
    end
    class ScheduleSettings < ::Stripe::RequestParams
      # Behavior of the subscription schedule and underlying subscription when it ends.
      sig { returns(T.nilable(String)) }
      def end_behavior; end
      sig { params(_end_behavior: T.nilable(String)).returns(T.nilable(String)) }
      def end_behavior=(_end_behavior); end
      sig { params(end_behavior: T.nilable(String)).void }
      def initialize(end_behavior: nil); end
    end
    # Changes to apply to the phases of the subscription schedule, in the order provided.
    sig { returns(T.nilable(T::Array[SubscriptionScheduleAmendParams::Amendment])) }
    def amendments; end
    sig {
      params(_amendments: T.nilable(T::Array[SubscriptionScheduleAmendParams::Amendment])).returns(T.nilable(T::Array[SubscriptionScheduleAmendParams::Amendment]))
     }
    def amendments=(_amendments); end
    # Specifies which fields in the response should be expanded.
    sig { returns(T.nilable(T::Array[String])) }
    def expand; end
    sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
    def expand=(_expand); end
    # Provide any time periods to bill in advance.
    sig { returns(T.nilable(T.any(String, T::Array[SubscriptionScheduleAmendParams::Prebilling]))) }
    def prebilling; end
    sig {
      params(_prebilling: T.nilable(T.any(String, T::Array[SubscriptionScheduleAmendParams::Prebilling]))).returns(T.nilable(T.any(String, T::Array[SubscriptionScheduleAmendParams::Prebilling])))
     }
    def prebilling=(_prebilling); end
    # In cases where the amendment changes the currently active phase,
    #  specifies if and how to prorate at the time of the request.
    sig { returns(T.nilable(String)) }
    def proration_behavior; end
    sig { params(_proration_behavior: T.nilable(String)).returns(T.nilable(String)) }
    def proration_behavior=(_proration_behavior); end
    # Changes to apply to the subscription schedule.
    sig { returns(T.nilable(SubscriptionScheduleAmendParams::ScheduleSettings)) }
    def schedule_settings; end
    sig {
      params(_schedule_settings: T.nilable(SubscriptionScheduleAmendParams::ScheduleSettings)).returns(T.nilable(SubscriptionScheduleAmendParams::ScheduleSettings))
     }
    def schedule_settings=(_schedule_settings); end
    sig {
      params(amendments: T.nilable(T::Array[SubscriptionScheduleAmendParams::Amendment]), expand: T.nilable(T::Array[String]), prebilling: T.nilable(T.any(String, T::Array[SubscriptionScheduleAmendParams::Prebilling])), proration_behavior: T.nilable(String), schedule_settings: T.nilable(SubscriptionScheduleAmendParams::ScheduleSettings)).void
     }
    def initialize(
      amendments: nil,
      expand: nil,
      prebilling: nil,
      proration_behavior: nil,
      schedule_settings: nil
    ); end
  end
end