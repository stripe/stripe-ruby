# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class QuoteService < StripeService
    attr_reader :preview_invoices
    attr_reader :preview_subscription_schedules
    attr_reader :lines
    attr_reader :line_items
    attr_reader :computed_upfront_line_items
    class ListParams < Stripe::RequestParams
      # The ID of the customer whose quotes will be retrieved.
      sig { returns(String) }
      attr_accessor :customer
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      sig { returns(String) }
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      # The subscription which the quote updates.
      sig { returns(String) }
      attr_accessor :from_subscription
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(Integer) }
      attr_accessor :limit
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(String) }
      attr_accessor :starting_after
      # The status of the quote.
      sig { returns(String) }
      attr_accessor :status
      # Provides a list of quotes that are associated with the specified test clock. The response will not include quotes with test clocks if this and the customer parameter is not set.
      sig { returns(String) }
      attr_accessor :test_clock
      sig {
        params(customer: String, ending_before: String, expand: T::Array[String], from_subscription: String, limit: Integer, starting_after: String, status: String, test_clock: String).void
       }
      def initialize(
        customer: nil,
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
          sig { returns(String) }
          attr_accessor :account
          # Type of the account referenced in the request.
          sig { returns(String) }
          attr_accessor :type
          sig { params(account: String, type: String).void }
          def initialize(account: nil, type: nil); end
        end
        # Controls whether Stripe will automatically compute tax on the resulting invoices or subscriptions as well as the quote itself.
        sig { returns(T::Boolean) }
        attr_accessor :enabled
        # The account that's liable for tax. If set, the business address and tax registrations required to perform the tax calculation are loaded from this account. The tax transaction is returned in the report of the connected account.
        sig { returns(::Stripe::QuoteService::CreateParams::AutomaticTax::Liability) }
        attr_accessor :liability
        sig {
          params(enabled: T::Boolean, liability: ::Stripe::QuoteService::CreateParams::AutomaticTax::Liability).void
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
          sig { returns(::Stripe::QuoteService::CreateParams::Discount::DiscountEnd::Duration) }
          attr_accessor :duration
          # A precise Unix timestamp for the discount to end. Must be in the future.
          sig { returns(Integer) }
          attr_accessor :timestamp
          # The type of calculation made to determine when the discount ends.
          sig { returns(String) }
          attr_accessor :type
          sig {
            params(duration: ::Stripe::QuoteService::CreateParams::Discount::DiscountEnd::Duration, timestamp: Integer, type: String).void
           }
          def initialize(duration: nil, timestamp: nil, type: nil); end
        end
        # ID of the coupon to create a new discount for.
        sig { returns(String) }
        attr_accessor :coupon
        # ID of an existing discount on the object (or one of its ancestors) to reuse.
        sig { returns(String) }
        attr_accessor :discount
        # Details to determine how long the discount should be applied for.
        sig { returns(::Stripe::QuoteService::CreateParams::Discount::DiscountEnd) }
        attr_accessor :discount_end
        # ID of the promotion code to create a new discount for.
        sig { returns(String) }
        attr_accessor :promotion_code
        sig {
          params(coupon: String, discount: String, discount_end: ::Stripe::QuoteService::CreateParams::Discount::DiscountEnd, promotion_code: String).void
         }
        def initialize(coupon: nil, discount: nil, discount_end: nil, promotion_code: nil); end
      end
      class FromQuote < Stripe::RequestParams
        # Whether this quote is a revision of the previous quote.
        sig { returns(T::Boolean) }
        attr_accessor :is_revision
        # The `id` of the quote that will be cloned.
        sig { returns(String) }
        attr_accessor :quote
        sig { params(is_revision: T::Boolean, quote: String).void }
        def initialize(is_revision: nil, quote: nil); end
      end
      class InvoiceSettings < Stripe::RequestParams
        class Issuer < Stripe::RequestParams
          # The connected account being referenced when `type` is `account`.
          sig { returns(String) }
          attr_accessor :account
          # Type of the account referenced in the request.
          sig { returns(String) }
          attr_accessor :type
          sig { params(account: String, type: String).void }
          def initialize(account: nil, type: nil); end
        end
        # Number of days within which a customer must pay the invoice generated by this quote. This value will be `null` for quotes where `collection_method=charge_automatically`.
        sig { returns(Integer) }
        attr_accessor :days_until_due
        # The connected account that issues the invoice. The invoice is presented with the branding and support information of the specified account.
        sig { returns(::Stripe::QuoteService::CreateParams::InvoiceSettings::Issuer) }
        attr_accessor :issuer
        sig {
          params(days_until_due: Integer, issuer: ::Stripe::QuoteService::CreateParams::InvoiceSettings::Issuer).void
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
            sig { returns(String) }
            attr_accessor :coupon
            # An ID of an existing discount for a coupon that was already redeemed.
            sig { returns(String) }
            attr_accessor :discount
            # Details to determine how long the discount should be applied for.
            sig {
              returns(::Stripe::QuoteService::CreateParams::Line::Action::AddDiscount::DiscountEnd)
             }
            attr_accessor :discount_end
            # The index, starting at 0, at which to position the new discount. When not supplied, Stripe defaults to appending the discount to the end of the `discounts` array.
            sig { returns(Integer) }
            attr_accessor :index
            # The promotion code to redeem.
            sig { returns(String) }
            attr_accessor :promotion_code
            sig {
              params(coupon: String, discount: String, discount_end: ::Stripe::QuoteService::CreateParams::Line::Action::AddDiscount::DiscountEnd, index: Integer, promotion_code: String).void
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
                  returns(::Stripe::QuoteService::CreateParams::Line::Action::AddItem::Discount::DiscountEnd::Duration)
                 }
                attr_accessor :duration
                # A precise Unix timestamp for the discount to end. Must be in the future.
                sig { returns(Integer) }
                attr_accessor :timestamp
                # The type of calculation made to determine when the discount ends.
                sig { returns(String) }
                attr_accessor :type
                sig {
                  params(duration: ::Stripe::QuoteService::CreateParams::Line::Action::AddItem::Discount::DiscountEnd::Duration, timestamp: Integer, type: String).void
                 }
                def initialize(duration: nil, timestamp: nil, type: nil); end
              end
              # ID of the coupon to create a new discount for.
              sig { returns(String) }
              attr_accessor :coupon
              # ID of an existing discount on the object (or one of its ancestors) to reuse.
              sig { returns(String) }
              attr_accessor :discount
              # Details to determine how long the discount should be applied for.
              sig {
                returns(::Stripe::QuoteService::CreateParams::Line::Action::AddItem::Discount::DiscountEnd)
               }
              attr_accessor :discount_end
              # ID of the promotion code to create a new discount for.
              sig { returns(String) }
              attr_accessor :promotion_code
              sig {
                params(coupon: String, discount: String, discount_end: ::Stripe::QuoteService::CreateParams::Line::Action::AddItem::Discount::DiscountEnd, promotion_code: String).void
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
              sig { returns(T::Array[String]) }
              attr_accessor :converts_to
              # Determines the type of trial for this item.
              sig { returns(String) }
              attr_accessor :type
              sig { params(converts_to: T::Array[String], type: String).void }
              def initialize(converts_to: nil, type: nil); end
            end
            # The discounts applied to the item. Subscription item discounts are applied before subscription discounts.
            sig {
              returns(T::Array[::Stripe::QuoteService::CreateParams::Line::Action::AddItem::Discount])
             }
            attr_accessor :discounts
            # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
            sig { returns(T::Hash[String, String]) }
            attr_accessor :metadata
            # The ID of the price object.
            sig { returns(String) }
            attr_accessor :price
            # Quantity for this item.
            sig { returns(Integer) }
            attr_accessor :quantity
            # The tax rates that apply to this subscription item. When set, the `default_tax_rates` on the subscription do not apply to this `subscription_item`.
            sig { returns(T::Array[String]) }
            attr_accessor :tax_rates
            # Options that configure the trial on the subscription item.
            sig { returns(::Stripe::QuoteService::CreateParams::Line::Action::AddItem::Trial) }
            attr_accessor :trial
            sig {
              params(discounts: T::Array[::Stripe::QuoteService::CreateParams::Line::Action::AddItem::Discount], metadata: T::Hash[String, String], price: String, quantity: Integer, tax_rates: T::Array[String], trial: ::Stripe::QuoteService::CreateParams::Line::Action::AddItem::Trial).void
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
            sig { returns(String) }
            attr_accessor :coupon
            # The ID of a discount to remove from the `discounts` array.
            sig { returns(String) }
            attr_accessor :discount
            # The ID of a promotion code to remove from the `discounts` array.
            sig { returns(String) }
            attr_accessor :promotion_code
            sig { params(coupon: String, discount: String, promotion_code: String).void }
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
            sig { returns(String) }
            attr_accessor :coupon
            # An ID of an existing discount to replace the `discounts` array with.
            sig { returns(String) }
            attr_accessor :discount
            # An ID of an existing promotion code to replace the `discounts` array with.
            sig { returns(String) }
            attr_accessor :promotion_code
            sig { params(coupon: String, discount: String, promotion_code: String).void }
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
                  returns(::Stripe::QuoteService::CreateParams::Line::Action::SetItem::Discount::DiscountEnd::Duration)
                 }
                attr_accessor :duration
                # A precise Unix timestamp for the discount to end. Must be in the future.
                sig { returns(Integer) }
                attr_accessor :timestamp
                # The type of calculation made to determine when the discount ends.
                sig { returns(String) }
                attr_accessor :type
                sig {
                  params(duration: ::Stripe::QuoteService::CreateParams::Line::Action::SetItem::Discount::DiscountEnd::Duration, timestamp: Integer, type: String).void
                 }
                def initialize(duration: nil, timestamp: nil, type: nil); end
              end
              # ID of the coupon to create a new discount for.
              sig { returns(String) }
              attr_accessor :coupon
              # ID of an existing discount on the object (or one of its ancestors) to reuse.
              sig { returns(String) }
              attr_accessor :discount
              # Details to determine how long the discount should be applied for.
              sig {
                returns(::Stripe::QuoteService::CreateParams::Line::Action::SetItem::Discount::DiscountEnd)
               }
              attr_accessor :discount_end
              # ID of the promotion code to create a new discount for.
              sig { returns(String) }
              attr_accessor :promotion_code
              sig {
                params(coupon: String, discount: String, discount_end: ::Stripe::QuoteService::CreateParams::Line::Action::SetItem::Discount::DiscountEnd, promotion_code: String).void
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
              sig { returns(T::Array[String]) }
              attr_accessor :converts_to
              # Determines the type of trial for this item.
              sig { returns(String) }
              attr_accessor :type
              sig { params(converts_to: T::Array[String], type: String).void }
              def initialize(converts_to: nil, type: nil); end
            end
            # If an item with the `price` already exists, passing this will override the `discounts` array on the subscription item that matches that price. Otherwise, the `items` array is cleared and a single new item is added with the supplied `discounts`.
            sig {
              returns(T::Array[::Stripe::QuoteService::CreateParams::Line::Action::SetItem::Discount])
             }
            attr_accessor :discounts
            # If an item with the `price` already exists, passing this will override the `metadata` on the subscription item that matches that price. Otherwise, the `items` array is cleared and a single new item is added with the supplied `metadata`.
            sig { returns(T::Hash[String, String]) }
            attr_accessor :metadata
            # The ID of the price object.
            sig { returns(String) }
            attr_accessor :price
            # If an item with the `price` already exists, passing this will override the quantity on the subscription item that matches that price. Otherwise, the `items` array is cleared and a single new item is added with the supplied `quantity`.
            sig { returns(Integer) }
            attr_accessor :quantity
            # If an item with the `price` already exists, passing this will override the `tax_rates` array on the subscription item that matches that price. Otherwise, the `items` array is cleared and a single new item is added with the supplied `tax_rates`.
            sig { returns(T::Array[String]) }
            attr_accessor :tax_rates
            # If an item with the `price` already exists, passing this will override the `trial` configuration on the subscription item that matches that price. Otherwise, the `items` array is cleared and a single new item is added with the supplied `trial`.
            sig { returns(::Stripe::QuoteService::CreateParams::Line::Action::SetItem::Trial) }
            attr_accessor :trial
            sig {
              params(discounts: T::Array[::Stripe::QuoteService::CreateParams::Line::Action::SetItem::Discount], metadata: T::Hash[String, String], price: String, quantity: Integer, tax_rates: T::Array[String], trial: ::Stripe::QuoteService::CreateParams::Line::Action::SetItem::Trial).void
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
          sig { returns(::Stripe::QuoteService::CreateParams::Line::Action::AddDiscount) }
          attr_accessor :add_discount
          # Details for the `add_item` type.
          sig { returns(::Stripe::QuoteService::CreateParams::Line::Action::AddItem) }
          attr_accessor :add_item
          # Details for the `add_metadata` type: specify a hash of key-value pairs.
          sig { returns(T::Hash[String, String]) }
          attr_accessor :add_metadata
          # Details for the `remove_discount` type.
          sig { returns(::Stripe::QuoteService::CreateParams::Line::Action::RemoveDiscount) }
          attr_accessor :remove_discount
          # Details for the `remove_item` type.
          sig { returns(::Stripe::QuoteService::CreateParams::Line::Action::RemoveItem) }
          attr_accessor :remove_item
          # Details for the `remove_metadata` type: specify an array of metadata keys.
          sig { returns(T::Array[String]) }
          attr_accessor :remove_metadata
          # Details for the `set_discounts` type.
          sig { returns(T::Array[::Stripe::QuoteService::CreateParams::Line::Action::SetDiscount]) }
          attr_accessor :set_discounts
          # Details for the `set_items` type.
          sig { returns(T::Array[::Stripe::QuoteService::CreateParams::Line::Action::SetItem]) }
          attr_accessor :set_items
          # Details for the `set_metadata` type: specify an array of key-value pairs.
          sig { returns(T.nilable(T::Hash[String, String])) }
          attr_accessor :set_metadata
          # The type of action the quote line performs.
          sig { returns(String) }
          attr_accessor :type
          sig {
            params(add_discount: ::Stripe::QuoteService::CreateParams::Line::Action::AddDiscount, add_item: ::Stripe::QuoteService::CreateParams::Line::Action::AddItem, add_metadata: T::Hash[String, String], remove_discount: ::Stripe::QuoteService::CreateParams::Line::Action::RemoveDiscount, remove_item: ::Stripe::QuoteService::CreateParams::Line::Action::RemoveItem, remove_metadata: T::Array[String], set_discounts: T::Array[::Stripe::QuoteService::CreateParams::Line::Action::SetDiscount], set_items: T::Array[::Stripe::QuoteService::CreateParams::Line::Action::SetItem], set_metadata: T.nilable(T::Hash[String, String]), type: String).void
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
          sig { returns(String) }
          attr_accessor :new_reference
          # The ID of the schedule the line applies to.
          sig { returns(String) }
          attr_accessor :subscription_schedule
          # Describes whether the quote line is affecting a new schedule or an existing schedule.
          sig { returns(String) }
          attr_accessor :type
          sig { params(new_reference: String, subscription_schedule: String, type: String).void }
          def initialize(new_reference: nil, subscription_schedule: nil, type: nil); end
        end
        class CancelSubscriptionSchedule < Stripe::RequestParams
          # Timestamp helper to cancel the underlying schedule on the accompanying line's start date. Must be set to `line_starts_at`.
          sig { returns(String) }
          attr_accessor :cancel_at
          # If the subscription schedule is `active`, indicates if a final invoice will be generated that contains any un-invoiced metered usage and new/pending proration invoice items. Boolean that defaults to `true`.
          sig { returns(T::Boolean) }
          attr_accessor :invoice_now
          # If the subscription schedule is `active`, indicates if the cancellation should be prorated. Boolean that defaults to `true`.
          sig { returns(T::Boolean) }
          attr_accessor :prorate
          sig { params(cancel_at: String, invoice_now: T::Boolean, prorate: T::Boolean).void }
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
          sig { returns(::Stripe::QuoteService::CreateParams::Line::EndsAt::DiscountEnd) }
          attr_accessor :discount_end
          # Time span for the quote line starting from the `starts_at` date.
          sig { returns(::Stripe::QuoteService::CreateParams::Line::EndsAt::Duration) }
          attr_accessor :duration
          # A precise Unix timestamp.
          sig { returns(Integer) }
          attr_accessor :timestamp
          # Select a way to pass in `ends_at`.
          sig { returns(String) }
          attr_accessor :type
          sig {
            params(discount_end: ::Stripe::QuoteService::CreateParams::Line::EndsAt::DiscountEnd, duration: ::Stripe::QuoteService::CreateParams::Line::EndsAt::Duration, timestamp: Integer, type: String).void
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
          sig { returns(::Stripe::QuoteService::CreateParams::Line::SetPauseCollection::Set) }
          attr_accessor :set
          # Determines the type of the pause_collection amendment.
          sig { returns(String) }
          attr_accessor :type
          sig {
            params(set: ::Stripe::QuoteService::CreateParams::Line::SetPauseCollection::Set, type: String).void
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
            sig { returns(Integer) }
            attr_accessor :index
            sig { params(index: Integer).void }
            def initialize(index: nil); end
          end
          # Use the `end` time of a given discount.
          sig { returns(::Stripe::QuoteService::CreateParams::Line::StartsAt::DiscountEnd) }
          attr_accessor :discount_end
          # The timestamp the given line ends at.
          sig { returns(::Stripe::QuoteService::CreateParams::Line::StartsAt::LineEndsAt) }
          attr_accessor :line_ends_at
          # A precise Unix timestamp.
          sig { returns(Integer) }
          attr_accessor :timestamp
          # Select a way to pass in `starts_at`.
          sig { returns(String) }
          attr_accessor :type
          sig {
            params(discount_end: ::Stripe::QuoteService::CreateParams::Line::StartsAt::DiscountEnd, line_ends_at: ::Stripe::QuoteService::CreateParams::Line::StartsAt::LineEndsAt, timestamp: Integer, type: String).void
           }
          def initialize(discount_end: nil, line_ends_at: nil, timestamp: nil, type: nil); end
        end
        class TrialSettings < Stripe::RequestParams
          class EndBehavior < Stripe::RequestParams
            # Configure how an opt-in following a paid trial is billed when using `billing_behavior: prorate_up_front`.
            sig { returns(String) }
            attr_accessor :prorate_up_front
            sig { params(prorate_up_front: String).void }
            def initialize(prorate_up_front: nil); end
          end
          # Defines how the subscription should behave when a trial ends.
          sig { returns(::Stripe::QuoteService::CreateParams::Line::TrialSettings::EndBehavior) }
          attr_accessor :end_behavior
          sig {
            params(end_behavior: ::Stripe::QuoteService::CreateParams::Line::TrialSettings::EndBehavior).void
           }
          def initialize(end_behavior: nil); end
        end
        # An array of operations the quote line performs.
        sig { returns(T::Array[::Stripe::QuoteService::CreateParams::Line::Action]) }
        attr_accessor :actions
        # Details to identify the subscription schedule the quote line applies to.
        sig { returns(::Stripe::QuoteService::CreateParams::Line::AppliesTo) }
        attr_accessor :applies_to
        # For point-in-time quote lines (having no `ends_at` timestamp), this attribute lets you set or remove whether the subscription's billing cycle anchor is reset at the Quote Line `starts_at` timestamp.For time-span based quote lines (having both `starts_at` and `ends_at`), the only valid value is `automatic`, which removes any previously configured billing cycle anchor resets during the window of time spanning the quote line.
        sig { returns(String) }
        attr_accessor :billing_cycle_anchor
        # A point-in-time operation that cancels an existing subscription schedule at the line's starts_at timestamp. Currently only compatible with `quote_acceptance_date` for `starts_at`. When using cancel_subscription_schedule, the subscription schedule on the quote remains unalterable, except for modifications to the metadata, collection_method or invoice_settings.
        sig { returns(::Stripe::QuoteService::CreateParams::Line::CancelSubscriptionSchedule) }
        attr_accessor :cancel_subscription_schedule
        # Details to identify the end of the time range modified by the proposed change. If not supplied, the quote line is considered a point-in-time operation that only affects the exact timestamp at `starts_at`, and a restricted set of attributes is supported on the quote line.
        sig { returns(::Stripe::QuoteService::CreateParams::Line::EndsAt) }
        attr_accessor :ends_at
        # Changes to how Stripe handles prorations during the quote line's time span. Affects if and how prorations are created when a future phase starts.
        sig { returns(String) }
        attr_accessor :proration_behavior
        # Defines how to pause collection for the underlying subscription throughout the duration of the amendment.
        sig { returns(::Stripe::QuoteService::CreateParams::Line::SetPauseCollection) }
        attr_accessor :set_pause_collection
        # Timestamp helper to end the underlying schedule early, based on the acompanying line's start or end date.
        sig { returns(String) }
        attr_accessor :set_schedule_end
        # Details to identify the earliest timestamp where the proposed change should take effect.
        sig { returns(::Stripe::QuoteService::CreateParams::Line::StartsAt) }
        attr_accessor :starts_at
        # Settings related to subscription trials.
        sig { returns(::Stripe::QuoteService::CreateParams::Line::TrialSettings) }
        attr_accessor :trial_settings
        sig {
          params(actions: T::Array[::Stripe::QuoteService::CreateParams::Line::Action], applies_to: ::Stripe::QuoteService::CreateParams::Line::AppliesTo, billing_cycle_anchor: String, cancel_subscription_schedule: ::Stripe::QuoteService::CreateParams::Line::CancelSubscriptionSchedule, ends_at: ::Stripe::QuoteService::CreateParams::Line::EndsAt, proration_behavior: String, set_pause_collection: ::Stripe::QuoteService::CreateParams::Line::SetPauseCollection, set_schedule_end: String, starts_at: ::Stripe::QuoteService::CreateParams::Line::StartsAt, trial_settings: ::Stripe::QuoteService::CreateParams::Line::TrialSettings).void
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
              returns(::Stripe::QuoteService::CreateParams::LineItem::Discount::DiscountEnd::Duration)
             }
            attr_accessor :duration
            # A precise Unix timestamp for the discount to end. Must be in the future.
            sig { returns(Integer) }
            attr_accessor :timestamp
            # The type of calculation made to determine when the discount ends.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(duration: ::Stripe::QuoteService::CreateParams::LineItem::Discount::DiscountEnd::Duration, timestamp: Integer, type: String).void
             }
            def initialize(duration: nil, timestamp: nil, type: nil); end
          end
          # ID of the coupon to create a new discount for.
          sig { returns(String) }
          attr_accessor :coupon
          # ID of an existing discount on the object (or one of its ancestors) to reuse.
          sig { returns(String) }
          attr_accessor :discount
          # Details to determine how long the discount should be applied for.
          sig { returns(::Stripe::QuoteService::CreateParams::LineItem::Discount::DiscountEnd) }
          attr_accessor :discount_end
          # ID of the promotion code to create a new discount for.
          sig { returns(String) }
          attr_accessor :promotion_code
          sig {
            params(coupon: String, discount: String, discount_end: ::Stripe::QuoteService::CreateParams::LineItem::Discount::DiscountEnd, promotion_code: String).void
           }
          def initialize(coupon: nil, discount: nil, discount_end: nil, promotion_code: nil); end
        end
        class PriceData < Stripe::RequestParams
          class Recurring < Stripe::RequestParams
            # Specifies billing frequency. Either `day`, `week`, `month` or `year`.
            sig { returns(String) }
            attr_accessor :interval
            # The number of intervals between subscription billings. For example, `interval=month` and `interval_count=3` bills every 3 months. Maximum of three years interval allowed (3 years, 36 months, or 156 weeks).
            sig { returns(Integer) }
            attr_accessor :interval_count
            sig { params(interval: String, interval_count: Integer).void }
            def initialize(interval: nil, interval_count: nil); end
          end
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(String) }
          attr_accessor :currency
          # The ID of the [Product](https://docs.stripe.com/api/products) that this [Price](https://docs.stripe.com/api/prices) will belong to.
          sig { returns(String) }
          attr_accessor :product
          # The recurring components of a price such as `interval` and `interval_count`.
          sig { returns(::Stripe::QuoteService::CreateParams::LineItem::PriceData::Recurring) }
          attr_accessor :recurring
          # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
          sig { returns(String) }
          attr_accessor :tax_behavior
          # A positive integer in cents (or local equivalent) (or 0 for a free price) representing how much to charge.
          sig { returns(Integer) }
          attr_accessor :unit_amount
          # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
          sig { returns(String) }
          attr_accessor :unit_amount_decimal
          sig {
            params(currency: String, product: String, recurring: ::Stripe::QuoteService::CreateParams::LineItem::PriceData::Recurring, tax_behavior: String, unit_amount: Integer, unit_amount_decimal: String).void
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
          returns(T.nilable(T::Array[::Stripe::QuoteService::CreateParams::LineItem::Discount]))
         }
        attr_accessor :discounts
        # The ID of the price object. One of `price` or `price_data` is required.
        sig { returns(String) }
        attr_accessor :price
        # Data used to generate a new [Price](https://stripe.com/docs/api/prices) object inline. One of `price` or `price_data` is required.
        sig { returns(::Stripe::QuoteService::CreateParams::LineItem::PriceData) }
        attr_accessor :price_data
        # The quantity of the line item.
        sig { returns(Integer) }
        attr_accessor :quantity
        # The tax rates which apply to the line item. When set, the `default_tax_rates` on the quote do not apply to this line item.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :tax_rates
        sig {
          params(discounts: T.nilable(T::Array[::Stripe::QuoteService::CreateParams::LineItem::Discount]), price: String, price_data: ::Stripe::QuoteService::CreateParams::LineItem::PriceData, quantity: Integer, tax_rates: T.nilable(T::Array[String])).void
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
              sig { returns(String) }
              attr_accessor :id
              # The position of the previous quote line in the `lines` array after which this line should begin. Indexes start from 0 and must be less than the index of the current line in the array.
              sig { returns(Integer) }
              attr_accessor :index
              sig { params(id: String, index: Integer).void }
              def initialize(id: nil, index: nil); end
            end
            # Details of a Quote line to start the bill period from.
            sig {
              returns(::Stripe::QuoteService::CreateParams::SubscriptionData::BillOnAcceptance::BillFrom::LineStartsAt)
             }
            attr_accessor :line_starts_at
            # A precise Unix timestamp.
            sig { returns(Integer) }
            attr_accessor :timestamp
            # The type of method to specify the `bill_from` time.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(line_starts_at: ::Stripe::QuoteService::CreateParams::SubscriptionData::BillOnAcceptance::BillFrom::LineStartsAt, timestamp: Integer, type: String).void
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
              sig { returns(String) }
              attr_accessor :id
              # The position of the previous quote line in the `lines` array after which this line should begin. Indexes start from 0 and must be less than the index of the current line in the array.
              sig { returns(Integer) }
              attr_accessor :index
              sig { params(id: String, index: Integer).void }
              def initialize(id: nil, index: nil); end
            end
            # Details of the duration over which to bill.
            sig {
              returns(::Stripe::QuoteService::CreateParams::SubscriptionData::BillOnAcceptance::BillUntil::Duration)
             }
            attr_accessor :duration
            # Details of a Quote line item from which to bill until.
            sig {
              returns(::Stripe::QuoteService::CreateParams::SubscriptionData::BillOnAcceptance::BillUntil::LineEndsAt)
             }
            attr_accessor :line_ends_at
            # A precise Unix timestamp.
            sig { returns(Integer) }
            attr_accessor :timestamp
            # The type of method to specify the `bill_until` time.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(duration: ::Stripe::QuoteService::CreateParams::SubscriptionData::BillOnAcceptance::BillUntil::Duration, line_ends_at: ::Stripe::QuoteService::CreateParams::SubscriptionData::BillOnAcceptance::BillUntil::LineEndsAt, timestamp: Integer, type: String).void
             }
            def initialize(duration: nil, line_ends_at: nil, timestamp: nil, type: nil); end
          end
          # The start of the period to bill from when the Quote is accepted.
          sig {
            returns(::Stripe::QuoteService::CreateParams::SubscriptionData::BillOnAcceptance::BillFrom)
           }
          attr_accessor :bill_from
          # The end of the period to bill until when the Quote is accepted.
          sig {
            returns(::Stripe::QuoteService::CreateParams::SubscriptionData::BillOnAcceptance::BillUntil)
           }
          attr_accessor :bill_until
          sig {
            params(bill_from: ::Stripe::QuoteService::CreateParams::SubscriptionData::BillOnAcceptance::BillFrom, bill_until: ::Stripe::QuoteService::CreateParams::SubscriptionData::BillOnAcceptance::BillUntil).void
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
        sig { returns(::Stripe::QuoteService::CreateParams::SubscriptionData::BillOnAcceptance) }
        attr_accessor :bill_on_acceptance
        # Configures when the subscription schedule generates prorations for phase transitions. Possible values are `prorate_on_next_phase` or `prorate_up_front` with the default being `prorate_on_next_phase`. `prorate_on_next_phase` will apply phase changes and generate prorations at transition time. `prorate_up_front` will bill for all phases within the current billing cycle up front.
        sig { returns(String) }
        attr_accessor :billing_behavior
        # When specified as `reset`, the subscription will always start a new billing period when the quote is accepted.
        sig { returns(T.nilable(String)) }
        attr_accessor :billing_cycle_anchor
        # The subscription's description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
        sig { returns(String) }
        attr_accessor :description
        # When creating a new subscription, the date of which the subscription schedule will start after the quote is accepted. When updating a subscription, the date of which the subscription will be updated using a subscription schedule. The special value `current_period_end` can be provided to update a subscription at the end of its current period. The `effective_date` is ignored if it is in the past when the quote is accepted.
        sig { returns(T.nilable(T.any(String, Integer))) }
        attr_accessor :effective_date
        # Behavior of the subscription schedule and underlying subscription when it ends.
        sig { returns(String) }
        attr_accessor :end_behavior
        # The id of a subscription that the quote will update. By default, the quote will contain the state of the subscription (such as line items, collection method and billing thresholds) unless overridden.
        sig { returns(String) }
        attr_accessor :from_subscription
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that will set metadata on the subscription or subscription schedule when the quote is accepted. If a recurring price is included in `line_items`, this field will be passed to the resulting subscription's `metadata` field. If `subscription_data.effective_date` is used, this field will be passed to the resulting subscription schedule's `phases.metadata` field. Unlike object-level metadata, this field is declarative. Updates will clear prior values.
        sig { returns(T::Hash[String, String]) }
        attr_accessor :metadata
        # If specified, the invoicing for the given billing cycle iterations will be processed when the quote is accepted. Cannot be used with `effective_date`.
        sig {
          returns(T.nilable(::Stripe::QuoteService::CreateParams::SubscriptionData::Prebilling))
         }
        attr_accessor :prebilling
        # Determines how to handle [prorations](https://stripe.com/docs/subscriptions/billing-cycle#prorations). When creating a subscription, valid values are `create_prorations` or `none`.
        #
        # When updating a subscription, valid values are `create_prorations`, `none`, or `always_invoice`.
        #
        # Passing `create_prorations` will cause proration invoice items to be created when applicable. These proration items will only be invoiced immediately under [certain conditions](https://stripe.com/docs/subscriptions/upgrading-downgrading#immediate-payment). In order to always invoice immediately for prorations, pass `always_invoice`.
        #
        # Prorations can be disabled by passing `none`.
        sig { returns(String) }
        attr_accessor :proration_behavior
        # Integer representing the number of trial period days before the customer is charged for the first time.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :trial_period_days
        sig {
          params(bill_on_acceptance: ::Stripe::QuoteService::CreateParams::SubscriptionData::BillOnAcceptance, billing_behavior: String, billing_cycle_anchor: T.nilable(String), description: String, effective_date: T.nilable(T.any(String, Integer)), end_behavior: String, from_subscription: String, metadata: T::Hash[String, String], prebilling: T.nilable(::Stripe::QuoteService::CreateParams::SubscriptionData::Prebilling), proration_behavior: String, trial_period_days: T.nilable(Integer)).void
         }
        def initialize(
          bill_on_acceptance: nil,
          billing_behavior: nil,
          billing_cycle_anchor: nil,
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
          sig { returns(String) }
          attr_accessor :new_reference
          # The ID of the schedule the line applies to.
          sig { returns(String) }
          attr_accessor :subscription_schedule
          # Describes whether the quote line is affecting a new schedule or an existing schedule.
          sig { returns(String) }
          attr_accessor :type
          sig { params(new_reference: String, subscription_schedule: String, type: String).void }
          def initialize(new_reference: nil, subscription_schedule: nil, type: nil); end
        end
        class BillOnAcceptance < Stripe::RequestParams
          class BillFrom < Stripe::RequestParams
            class LineStartsAt < Stripe::RequestParams
              # The ID of a quote line.
              sig { returns(String) }
              attr_accessor :id
              # The position of the previous quote line in the `lines` array after which this line should begin. Indexes start from 0 and must be less than the index of the current line in the array.
              sig { returns(Integer) }
              attr_accessor :index
              sig { params(id: String, index: Integer).void }
              def initialize(id: nil, index: nil); end
            end
            # Details of a Quote line to start the bill period from.
            sig {
              returns(::Stripe::QuoteService::CreateParams::SubscriptionDataOverride::BillOnAcceptance::BillFrom::LineStartsAt)
             }
            attr_accessor :line_starts_at
            # A precise Unix timestamp.
            sig { returns(Integer) }
            attr_accessor :timestamp
            # The type of method to specify the `bill_from` time.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(line_starts_at: ::Stripe::QuoteService::CreateParams::SubscriptionDataOverride::BillOnAcceptance::BillFrom::LineStartsAt, timestamp: Integer, type: String).void
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
              sig { returns(String) }
              attr_accessor :id
              # The position of the previous quote line in the `lines` array after which this line should begin. Indexes start from 0 and must be less than the index of the current line in the array.
              sig { returns(Integer) }
              attr_accessor :index
              sig { params(id: String, index: Integer).void }
              def initialize(id: nil, index: nil); end
            end
            # Details of the duration over which to bill.
            sig {
              returns(::Stripe::QuoteService::CreateParams::SubscriptionDataOverride::BillOnAcceptance::BillUntil::Duration)
             }
            attr_accessor :duration
            # Details of a Quote line item from which to bill until.
            sig {
              returns(::Stripe::QuoteService::CreateParams::SubscriptionDataOverride::BillOnAcceptance::BillUntil::LineEndsAt)
             }
            attr_accessor :line_ends_at
            # A precise Unix timestamp.
            sig { returns(Integer) }
            attr_accessor :timestamp
            # The type of method to specify the `bill_until` time.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(duration: ::Stripe::QuoteService::CreateParams::SubscriptionDataOverride::BillOnAcceptance::BillUntil::Duration, line_ends_at: ::Stripe::QuoteService::CreateParams::SubscriptionDataOverride::BillOnAcceptance::BillUntil::LineEndsAt, timestamp: Integer, type: String).void
             }
            def initialize(duration: nil, line_ends_at: nil, timestamp: nil, type: nil); end
          end
          # The start of the period to bill from when the Quote is accepted.
          sig {
            returns(::Stripe::QuoteService::CreateParams::SubscriptionDataOverride::BillOnAcceptance::BillFrom)
           }
          attr_accessor :bill_from
          # The end of the period to bill until when the Quote is accepted.
          sig {
            returns(::Stripe::QuoteService::CreateParams::SubscriptionDataOverride::BillOnAcceptance::BillUntil)
           }
          attr_accessor :bill_until
          sig {
            params(bill_from: ::Stripe::QuoteService::CreateParams::SubscriptionDataOverride::BillOnAcceptance::BillFrom, bill_until: ::Stripe::QuoteService::CreateParams::SubscriptionDataOverride::BillOnAcceptance::BillUntil).void
           }
          def initialize(bill_from: nil, bill_until: nil); end
        end
        # Whether the override applies to an existing Subscription Schedule or a new Subscription Schedule.
        sig { returns(::Stripe::QuoteService::CreateParams::SubscriptionDataOverride::AppliesTo) }
        attr_accessor :applies_to
        # Describes the period to bill for upon accepting the quote.
        sig {
          returns(::Stripe::QuoteService::CreateParams::SubscriptionDataOverride::BillOnAcceptance)
         }
        attr_accessor :bill_on_acceptance
        # Configures when the subscription schedule generates prorations for phase transitions. Possible values are `prorate_on_next_phase` or `prorate_up_front` with the default being `prorate_on_next_phase`. `prorate_on_next_phase` will apply phase changes and generate prorations at transition time. `prorate_up_front` will bill for all phases within the current billing cycle up front.
        sig { returns(String) }
        attr_accessor :billing_behavior
        # The customer the Subscription Data override applies to. This is only relevant when `applies_to.type=new_reference`.
        sig { returns(String) }
        attr_accessor :customer
        # The subscription's description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
        sig { returns(String) }
        attr_accessor :description
        # Behavior of the subscription schedule and underlying subscription when it ends.
        sig { returns(String) }
        attr_accessor :end_behavior
        # Determines how to handle [prorations](https://stripe.com/docs/subscriptions/billing-cycle#prorations). When creating a subscription, valid values are `create_prorations` or `none`.
        #
        # When updating a subscription, valid values are `create_prorations`, `none`, or `always_invoice`.
        #
        # Passing `create_prorations` will cause proration invoice items to be created when applicable. These proration items will only be invoiced immediately under [certain conditions](https://stripe.com/docs/subscriptions/upgrading-downgrading#immediate-payment). In order to always invoice immediately for prorations, pass `always_invoice`.
        #
        # Prorations can be disabled by passing `none`.
        sig { returns(String) }
        attr_accessor :proration_behavior
        sig {
          params(applies_to: ::Stripe::QuoteService::CreateParams::SubscriptionDataOverride::AppliesTo, bill_on_acceptance: ::Stripe::QuoteService::CreateParams::SubscriptionDataOverride::BillOnAcceptance, billing_behavior: String, customer: String, description: String, end_behavior: String, proration_behavior: String).void
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
        sig { returns(Integer) }
        attr_accessor :amount
        # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the destination account. By default, the entire amount is transferred to the destination. There must be at least 1 line item with a recurring price to use this field.
        sig { returns(Float) }
        attr_accessor :amount_percent
        # ID of an existing, connected Stripe account.
        sig { returns(String) }
        attr_accessor :destination
        sig { params(amount: Integer, amount_percent: Float, destination: String).void }
        def initialize(amount: nil, amount_percent: nil, destination: nil); end
      end
      # Set to true to allow quote lines to have `starts_at` in the past if collection is paused between `starts_at` and now.
      sig { returns(T::Boolean) }
      attr_accessor :allow_backdated_lines
      # The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. There cannot be any line items with recurring prices when using this field.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :application_fee_amount
      # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account. There must be at least 1 line item with a recurring price to use this field.
      sig { returns(T.nilable(Float)) }
      attr_accessor :application_fee_percent
      # Settings for automatic tax lookup for this quote and resulting invoices and subscriptions.
      sig { returns(::Stripe::QuoteService::CreateParams::AutomaticTax) }
      attr_accessor :automatic_tax
      # Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay invoices at the end of the subscription cycle or at invoice finalization using the default payment method attached to the subscription or customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions and mark the subscription as `active`. Defaults to `charge_automatically`.
      sig { returns(String) }
      attr_accessor :collection_method
      # The customer for which this quote belongs to. A customer is required before finalizing the quote. Once specified, it cannot be changed.
      sig { returns(String) }
      attr_accessor :customer
      # The tax rates that will apply to any line item that does not have `tax_rates` set.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :default_tax_rates
      # A description that will be displayed on the quote PDF. If no value is passed, the default description configured in your [quote template settings](https://dashboard.stripe.com/settings/billing/quote) will be used.
      sig { returns(T.nilable(String)) }
      attr_accessor :description
      # The discounts applied to the quote.
      sig { returns(T.nilable(T::Array[::Stripe::QuoteService::CreateParams::Discount])) }
      attr_accessor :discounts
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      # A future timestamp on which the quote will be canceled if in `open` or `draft` status. Measured in seconds since the Unix epoch. If no value is passed, the default expiration date configured in your [quote template settings](https://dashboard.stripe.com/settings/billing/quote) will be used.
      sig { returns(Integer) }
      attr_accessor :expires_at
      # A footer that will be displayed on the quote PDF. If no value is passed, the default footer configured in your [quote template settings](https://dashboard.stripe.com/settings/billing/quote) will be used.
      sig { returns(T.nilable(String)) }
      attr_accessor :footer
      # Clone an existing quote. The new quote will be created in `status=draft`. When using this parameter, you cannot specify any other parameters except for `expires_at`.
      sig { returns(::Stripe::QuoteService::CreateParams::FromQuote) }
      attr_accessor :from_quote
      # A header that will be displayed on the quote PDF. If no value is passed, the default header configured in your [quote template settings](https://dashboard.stripe.com/settings/billing/quote) will be used.
      sig { returns(T.nilable(String)) }
      attr_accessor :header
      # All invoices will be billed using the specified settings.
      sig { returns(::Stripe::QuoteService::CreateParams::InvoiceSettings) }
      attr_accessor :invoice_settings
      # A list of line items the customer is being quoted for. Each line item includes information about the product, the quantity, and the resulting cost.
      sig { returns(T::Array[::Stripe::QuoteService::CreateParams::LineItem]) }
      attr_accessor :line_items
      # A list of [quote lines](https://docs.stripe.com/api/quote_lines) on the quote. These lines describe changes, in the order provided, that will be used to create new subscription schedules or update existing subscription schedules when the quote is accepted.
      sig { returns(T::Array[::Stripe::QuoteService::CreateParams::Line]) }
      attr_accessor :lines
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T::Hash[String, String]) }
      attr_accessor :metadata
      # The account on behalf of which to charge.
      sig { returns(T.nilable(String)) }
      attr_accessor :on_behalf_of
      # When creating a subscription or subscription schedule, the specified configuration data will be used. There must be at least one line item with a recurring price for a subscription or subscription schedule to be created. A subscription schedule is created if `subscription_data[effective_date]` is present and in the future, otherwise a subscription is created.
      sig { returns(::Stripe::QuoteService::CreateParams::SubscriptionData) }
      attr_accessor :subscription_data
      # List representing overrides for `subscription_data` configurations for specific subscription schedules.
      sig { returns(T::Array[::Stripe::QuoteService::CreateParams::SubscriptionDataOverride]) }
      attr_accessor :subscription_data_overrides
      # ID of the test clock to attach to the quote.
      sig { returns(String) }
      attr_accessor :test_clock
      # The data with which to automatically create a Transfer for each of the invoices.
      sig { returns(T.nilable(::Stripe::QuoteService::CreateParams::TransferData)) }
      attr_accessor :transfer_data
      sig {
        params(allow_backdated_lines: T::Boolean, application_fee_amount: T.nilable(Integer), application_fee_percent: T.nilable(Float), automatic_tax: ::Stripe::QuoteService::CreateParams::AutomaticTax, collection_method: String, customer: String, default_tax_rates: T.nilable(T::Array[String]), description: T.nilable(String), discounts: T.nilable(T::Array[::Stripe::QuoteService::CreateParams::Discount]), expand: T::Array[String], expires_at: Integer, footer: T.nilable(String), from_quote: ::Stripe::QuoteService::CreateParams::FromQuote, header: T.nilable(String), invoice_settings: ::Stripe::QuoteService::CreateParams::InvoiceSettings, line_items: T::Array[::Stripe::QuoteService::CreateParams::LineItem], lines: T::Array[::Stripe::QuoteService::CreateParams::Line], metadata: T::Hash[String, String], on_behalf_of: T.nilable(String), subscription_data: ::Stripe::QuoteService::CreateParams::SubscriptionData, subscription_data_overrides: T::Array[::Stripe::QuoteService::CreateParams::SubscriptionDataOverride], test_clock: String, transfer_data: T.nilable(::Stripe::QuoteService::CreateParams::TransferData)).void
       }
      def initialize(
        allow_backdated_lines: nil,
        application_fee_amount: nil,
        application_fee_percent: nil,
        automatic_tax: nil,
        collection_method: nil,
        customer: nil,
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
    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      sig { params(expand: T::Array[String]).void }
      def initialize(expand: nil); end
    end
    class UpdateParams < Stripe::RequestParams
      class AutomaticTax < Stripe::RequestParams
        class Liability < Stripe::RequestParams
          # The connected account being referenced when `type` is `account`.
          sig { returns(String) }
          attr_accessor :account
          # Type of the account referenced in the request.
          sig { returns(String) }
          attr_accessor :type
          sig { params(account: String, type: String).void }
          def initialize(account: nil, type: nil); end
        end
        # Controls whether Stripe will automatically compute tax on the resulting invoices or subscriptions as well as the quote itself.
        sig { returns(T::Boolean) }
        attr_accessor :enabled
        # The account that's liable for tax. If set, the business address and tax registrations required to perform the tax calculation are loaded from this account. The tax transaction is returned in the report of the connected account.
        sig { returns(::Stripe::QuoteService::UpdateParams::AutomaticTax::Liability) }
        attr_accessor :liability
        sig {
          params(enabled: T::Boolean, liability: ::Stripe::QuoteService::UpdateParams::AutomaticTax::Liability).void
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
          sig { returns(::Stripe::QuoteService::UpdateParams::Discount::DiscountEnd::Duration) }
          attr_accessor :duration
          # A precise Unix timestamp for the discount to end. Must be in the future.
          sig { returns(Integer) }
          attr_accessor :timestamp
          # The type of calculation made to determine when the discount ends.
          sig { returns(String) }
          attr_accessor :type
          sig {
            params(duration: ::Stripe::QuoteService::UpdateParams::Discount::DiscountEnd::Duration, timestamp: Integer, type: String).void
           }
          def initialize(duration: nil, timestamp: nil, type: nil); end
        end
        # ID of the coupon to create a new discount for.
        sig { returns(String) }
        attr_accessor :coupon
        # ID of an existing discount on the object (or one of its ancestors) to reuse.
        sig { returns(String) }
        attr_accessor :discount
        # Details to determine how long the discount should be applied for.
        sig { returns(::Stripe::QuoteService::UpdateParams::Discount::DiscountEnd) }
        attr_accessor :discount_end
        # ID of the promotion code to create a new discount for.
        sig { returns(String) }
        attr_accessor :promotion_code
        sig {
          params(coupon: String, discount: String, discount_end: ::Stripe::QuoteService::UpdateParams::Discount::DiscountEnd, promotion_code: String).void
         }
        def initialize(coupon: nil, discount: nil, discount_end: nil, promotion_code: nil); end
      end
      class InvoiceSettings < Stripe::RequestParams
        class Issuer < Stripe::RequestParams
          # The connected account being referenced when `type` is `account`.
          sig { returns(String) }
          attr_accessor :account
          # Type of the account referenced in the request.
          sig { returns(String) }
          attr_accessor :type
          sig { params(account: String, type: String).void }
          def initialize(account: nil, type: nil); end
        end
        # Number of days within which a customer must pay the invoice generated by this quote. This value will be `null` for quotes where `collection_method=charge_automatically`.
        sig { returns(Integer) }
        attr_accessor :days_until_due
        # The connected account that issues the invoice. The invoice is presented with the branding and support information of the specified account.
        sig { returns(::Stripe::QuoteService::UpdateParams::InvoiceSettings::Issuer) }
        attr_accessor :issuer
        sig {
          params(days_until_due: Integer, issuer: ::Stripe::QuoteService::UpdateParams::InvoiceSettings::Issuer).void
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
            sig { returns(String) }
            attr_accessor :coupon
            # An ID of an existing discount for a coupon that was already redeemed.
            sig { returns(String) }
            attr_accessor :discount
            # Details to determine how long the discount should be applied for.
            sig {
              returns(::Stripe::QuoteService::UpdateParams::Line::Action::AddDiscount::DiscountEnd)
             }
            attr_accessor :discount_end
            # The index, starting at 0, at which to position the new discount. When not supplied, Stripe defaults to appending the discount to the end of the `discounts` array.
            sig { returns(Integer) }
            attr_accessor :index
            # The promotion code to redeem.
            sig { returns(String) }
            attr_accessor :promotion_code
            sig {
              params(coupon: String, discount: String, discount_end: ::Stripe::QuoteService::UpdateParams::Line::Action::AddDiscount::DiscountEnd, index: Integer, promotion_code: String).void
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
                  returns(::Stripe::QuoteService::UpdateParams::Line::Action::AddItem::Discount::DiscountEnd::Duration)
                 }
                attr_accessor :duration
                # A precise Unix timestamp for the discount to end. Must be in the future.
                sig { returns(Integer) }
                attr_accessor :timestamp
                # The type of calculation made to determine when the discount ends.
                sig { returns(String) }
                attr_accessor :type
                sig {
                  params(duration: ::Stripe::QuoteService::UpdateParams::Line::Action::AddItem::Discount::DiscountEnd::Duration, timestamp: Integer, type: String).void
                 }
                def initialize(duration: nil, timestamp: nil, type: nil); end
              end
              # ID of the coupon to create a new discount for.
              sig { returns(String) }
              attr_accessor :coupon
              # ID of an existing discount on the object (or one of its ancestors) to reuse.
              sig { returns(String) }
              attr_accessor :discount
              # Details to determine how long the discount should be applied for.
              sig {
                returns(::Stripe::QuoteService::UpdateParams::Line::Action::AddItem::Discount::DiscountEnd)
               }
              attr_accessor :discount_end
              # ID of the promotion code to create a new discount for.
              sig { returns(String) }
              attr_accessor :promotion_code
              sig {
                params(coupon: String, discount: String, discount_end: ::Stripe::QuoteService::UpdateParams::Line::Action::AddItem::Discount::DiscountEnd, promotion_code: String).void
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
              sig { returns(T::Array[String]) }
              attr_accessor :converts_to
              # Determines the type of trial for this item.
              sig { returns(String) }
              attr_accessor :type
              sig { params(converts_to: T::Array[String], type: String).void }
              def initialize(converts_to: nil, type: nil); end
            end
            # The discounts applied to the item. Subscription item discounts are applied before subscription discounts.
            sig {
              returns(T::Array[::Stripe::QuoteService::UpdateParams::Line::Action::AddItem::Discount])
             }
            attr_accessor :discounts
            # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
            sig { returns(T::Hash[String, String]) }
            attr_accessor :metadata
            # The ID of the price object.
            sig { returns(String) }
            attr_accessor :price
            # Quantity for this item.
            sig { returns(Integer) }
            attr_accessor :quantity
            # The tax rates that apply to this subscription item. When set, the `default_tax_rates` on the subscription do not apply to this `subscription_item`.
            sig { returns(T::Array[String]) }
            attr_accessor :tax_rates
            # Options that configure the trial on the subscription item.
            sig { returns(::Stripe::QuoteService::UpdateParams::Line::Action::AddItem::Trial) }
            attr_accessor :trial
            sig {
              params(discounts: T::Array[::Stripe::QuoteService::UpdateParams::Line::Action::AddItem::Discount], metadata: T::Hash[String, String], price: String, quantity: Integer, tax_rates: T::Array[String], trial: ::Stripe::QuoteService::UpdateParams::Line::Action::AddItem::Trial).void
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
            sig { returns(String) }
            attr_accessor :coupon
            # The ID of a discount to remove from the `discounts` array.
            sig { returns(String) }
            attr_accessor :discount
            # The ID of a promotion code to remove from the `discounts` array.
            sig { returns(String) }
            attr_accessor :promotion_code
            sig { params(coupon: String, discount: String, promotion_code: String).void }
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
            sig { returns(String) }
            attr_accessor :coupon
            # An ID of an existing discount to replace the `discounts` array with.
            sig { returns(String) }
            attr_accessor :discount
            # An ID of an existing promotion code to replace the `discounts` array with.
            sig { returns(String) }
            attr_accessor :promotion_code
            sig { params(coupon: String, discount: String, promotion_code: String).void }
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
                  returns(::Stripe::QuoteService::UpdateParams::Line::Action::SetItem::Discount::DiscountEnd::Duration)
                 }
                attr_accessor :duration
                # A precise Unix timestamp for the discount to end. Must be in the future.
                sig { returns(Integer) }
                attr_accessor :timestamp
                # The type of calculation made to determine when the discount ends.
                sig { returns(String) }
                attr_accessor :type
                sig {
                  params(duration: ::Stripe::QuoteService::UpdateParams::Line::Action::SetItem::Discount::DiscountEnd::Duration, timestamp: Integer, type: String).void
                 }
                def initialize(duration: nil, timestamp: nil, type: nil); end
              end
              # ID of the coupon to create a new discount for.
              sig { returns(String) }
              attr_accessor :coupon
              # ID of an existing discount on the object (or one of its ancestors) to reuse.
              sig { returns(String) }
              attr_accessor :discount
              # Details to determine how long the discount should be applied for.
              sig {
                returns(::Stripe::QuoteService::UpdateParams::Line::Action::SetItem::Discount::DiscountEnd)
               }
              attr_accessor :discount_end
              # ID of the promotion code to create a new discount for.
              sig { returns(String) }
              attr_accessor :promotion_code
              sig {
                params(coupon: String, discount: String, discount_end: ::Stripe::QuoteService::UpdateParams::Line::Action::SetItem::Discount::DiscountEnd, promotion_code: String).void
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
              sig { returns(T::Array[String]) }
              attr_accessor :converts_to
              # Determines the type of trial for this item.
              sig { returns(String) }
              attr_accessor :type
              sig { params(converts_to: T::Array[String], type: String).void }
              def initialize(converts_to: nil, type: nil); end
            end
            # If an item with the `price` already exists, passing this will override the `discounts` array on the subscription item that matches that price. Otherwise, the `items` array is cleared and a single new item is added with the supplied `discounts`.
            sig {
              returns(T::Array[::Stripe::QuoteService::UpdateParams::Line::Action::SetItem::Discount])
             }
            attr_accessor :discounts
            # If an item with the `price` already exists, passing this will override the `metadata` on the subscription item that matches that price. Otherwise, the `items` array is cleared and a single new item is added with the supplied `metadata`.
            sig { returns(T::Hash[String, String]) }
            attr_accessor :metadata
            # The ID of the price object.
            sig { returns(String) }
            attr_accessor :price
            # If an item with the `price` already exists, passing this will override the quantity on the subscription item that matches that price. Otherwise, the `items` array is cleared and a single new item is added with the supplied `quantity`.
            sig { returns(Integer) }
            attr_accessor :quantity
            # If an item with the `price` already exists, passing this will override the `tax_rates` array on the subscription item that matches that price. Otherwise, the `items` array is cleared and a single new item is added with the supplied `tax_rates`.
            sig { returns(T::Array[String]) }
            attr_accessor :tax_rates
            # If an item with the `price` already exists, passing this will override the `trial` configuration on the subscription item that matches that price. Otherwise, the `items` array is cleared and a single new item is added with the supplied `trial`.
            sig { returns(::Stripe::QuoteService::UpdateParams::Line::Action::SetItem::Trial) }
            attr_accessor :trial
            sig {
              params(discounts: T::Array[::Stripe::QuoteService::UpdateParams::Line::Action::SetItem::Discount], metadata: T::Hash[String, String], price: String, quantity: Integer, tax_rates: T::Array[String], trial: ::Stripe::QuoteService::UpdateParams::Line::Action::SetItem::Trial).void
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
          sig { returns(::Stripe::QuoteService::UpdateParams::Line::Action::AddDiscount) }
          attr_accessor :add_discount
          # Details for the `add_item` type.
          sig { returns(::Stripe::QuoteService::UpdateParams::Line::Action::AddItem) }
          attr_accessor :add_item
          # Details for the `add_metadata` type: specify a hash of key-value pairs.
          sig { returns(T::Hash[String, String]) }
          attr_accessor :add_metadata
          # Details for the `remove_discount` type.
          sig { returns(::Stripe::QuoteService::UpdateParams::Line::Action::RemoveDiscount) }
          attr_accessor :remove_discount
          # Details for the `remove_item` type.
          sig { returns(::Stripe::QuoteService::UpdateParams::Line::Action::RemoveItem) }
          attr_accessor :remove_item
          # Details for the `remove_metadata` type: specify an array of metadata keys.
          sig { returns(T::Array[String]) }
          attr_accessor :remove_metadata
          # Details for the `set_discounts` type.
          sig { returns(T::Array[::Stripe::QuoteService::UpdateParams::Line::Action::SetDiscount]) }
          attr_accessor :set_discounts
          # Details for the `set_items` type.
          sig { returns(T::Array[::Stripe::QuoteService::UpdateParams::Line::Action::SetItem]) }
          attr_accessor :set_items
          # Details for the `set_metadata` type: specify an array of key-value pairs.
          sig { returns(T.nilable(T::Hash[String, String])) }
          attr_accessor :set_metadata
          # The type of action the quote line performs.
          sig { returns(String) }
          attr_accessor :type
          sig {
            params(add_discount: ::Stripe::QuoteService::UpdateParams::Line::Action::AddDiscount, add_item: ::Stripe::QuoteService::UpdateParams::Line::Action::AddItem, add_metadata: T::Hash[String, String], remove_discount: ::Stripe::QuoteService::UpdateParams::Line::Action::RemoveDiscount, remove_item: ::Stripe::QuoteService::UpdateParams::Line::Action::RemoveItem, remove_metadata: T::Array[String], set_discounts: T::Array[::Stripe::QuoteService::UpdateParams::Line::Action::SetDiscount], set_items: T::Array[::Stripe::QuoteService::UpdateParams::Line::Action::SetItem], set_metadata: T.nilable(T::Hash[String, String]), type: String).void
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
          sig { returns(String) }
          attr_accessor :new_reference
          # The ID of the schedule the line applies to.
          sig { returns(String) }
          attr_accessor :subscription_schedule
          # Describes whether the quote line is affecting a new schedule or an existing schedule.
          sig { returns(String) }
          attr_accessor :type
          sig { params(new_reference: String, subscription_schedule: String, type: String).void }
          def initialize(new_reference: nil, subscription_schedule: nil, type: nil); end
        end
        class CancelSubscriptionSchedule < Stripe::RequestParams
          # Timestamp helper to cancel the underlying schedule on the accompanying line's start date. Must be set to `line_starts_at`.
          sig { returns(String) }
          attr_accessor :cancel_at
          # If the subscription schedule is `active`, indicates if a final invoice will be generated that contains any un-invoiced metered usage and new/pending proration invoice items. Boolean that defaults to `true`.
          sig { returns(T::Boolean) }
          attr_accessor :invoice_now
          # If the subscription schedule is `active`, indicates if the cancellation should be prorated. Boolean that defaults to `true`.
          sig { returns(T::Boolean) }
          attr_accessor :prorate
          sig { params(cancel_at: String, invoice_now: T::Boolean, prorate: T::Boolean).void }
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
          sig { returns(::Stripe::QuoteService::UpdateParams::Line::EndsAt::DiscountEnd) }
          attr_accessor :discount_end
          # Time span for the quote line starting from the `starts_at` date.
          sig { returns(::Stripe::QuoteService::UpdateParams::Line::EndsAt::Duration) }
          attr_accessor :duration
          # A precise Unix timestamp.
          sig { returns(Integer) }
          attr_accessor :timestamp
          # Select a way to pass in `ends_at`.
          sig { returns(String) }
          attr_accessor :type
          sig {
            params(discount_end: ::Stripe::QuoteService::UpdateParams::Line::EndsAt::DiscountEnd, duration: ::Stripe::QuoteService::UpdateParams::Line::EndsAt::Duration, timestamp: Integer, type: String).void
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
          sig { returns(::Stripe::QuoteService::UpdateParams::Line::SetPauseCollection::Set) }
          attr_accessor :set
          # Determines the type of the pause_collection amendment.
          sig { returns(String) }
          attr_accessor :type
          sig {
            params(set: ::Stripe::QuoteService::UpdateParams::Line::SetPauseCollection::Set, type: String).void
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
            sig { returns(String) }
            attr_accessor :id
            # The position of the previous quote line in the `lines` array after which this line should begin. Indexes start from 0 and must be less than the index of the current line in the array.
            sig { returns(Integer) }
            attr_accessor :index
            sig { params(id: String, index: Integer).void }
            def initialize(id: nil, index: nil); end
          end
          # Use the `end` time of a given discount.
          sig { returns(::Stripe::QuoteService::UpdateParams::Line::StartsAt::DiscountEnd) }
          attr_accessor :discount_end
          # The timestamp the given line ends at.
          sig { returns(::Stripe::QuoteService::UpdateParams::Line::StartsAt::LineEndsAt) }
          attr_accessor :line_ends_at
          # A precise Unix timestamp.
          sig { returns(Integer) }
          attr_accessor :timestamp
          # Select a way to pass in `starts_at`.
          sig { returns(String) }
          attr_accessor :type
          sig {
            params(discount_end: ::Stripe::QuoteService::UpdateParams::Line::StartsAt::DiscountEnd, line_ends_at: ::Stripe::QuoteService::UpdateParams::Line::StartsAt::LineEndsAt, timestamp: Integer, type: String).void
           }
          def initialize(discount_end: nil, line_ends_at: nil, timestamp: nil, type: nil); end
        end
        class TrialSettings < Stripe::RequestParams
          class EndBehavior < Stripe::RequestParams
            # Configure how an opt-in following a paid trial is billed when using `billing_behavior: prorate_up_front`.
            sig { returns(String) }
            attr_accessor :prorate_up_front
            sig { params(prorate_up_front: String).void }
            def initialize(prorate_up_front: nil); end
          end
          # Defines how the subscription should behave when a trial ends.
          sig { returns(::Stripe::QuoteService::UpdateParams::Line::TrialSettings::EndBehavior) }
          attr_accessor :end_behavior
          sig {
            params(end_behavior: ::Stripe::QuoteService::UpdateParams::Line::TrialSettings::EndBehavior).void
           }
          def initialize(end_behavior: nil); end
        end
        # An array of operations the quote line performs.
        sig { returns(T::Array[::Stripe::QuoteService::UpdateParams::Line::Action]) }
        attr_accessor :actions
        # Details to identify the subscription schedule the quote line applies to.
        sig { returns(::Stripe::QuoteService::UpdateParams::Line::AppliesTo) }
        attr_accessor :applies_to
        # For point-in-time quote lines (having no `ends_at` timestamp), this attribute lets you set or remove whether the subscription's billing cycle anchor is reset at the Quote Line `starts_at` timestamp.For time-span based quote lines (having both `starts_at` and `ends_at`), the only valid value is `automatic`, which removes any previously configured billing cycle anchor resets during the window of time spanning the quote line.
        sig { returns(String) }
        attr_accessor :billing_cycle_anchor
        # A point-in-time operation that cancels an existing subscription schedule at the line's starts_at timestamp. Currently only compatible with `quote_acceptance_date` for `starts_at`. When using cancel_subscription_schedule, the subscription schedule on the quote remains unalterable, except for modifications to the metadata, collection_method or invoice_settings.
        sig { returns(::Stripe::QuoteService::UpdateParams::Line::CancelSubscriptionSchedule) }
        attr_accessor :cancel_subscription_schedule
        # Details to identify the end of the time range modified by the proposed change. If not supplied, the quote line is considered a point-in-time operation that only affects the exact timestamp at `starts_at`, and a restricted set of attributes is supported on the quote line.
        sig { returns(::Stripe::QuoteService::UpdateParams::Line::EndsAt) }
        attr_accessor :ends_at
        # The ID of an existing line on the quote.
        sig { returns(String) }
        attr_accessor :id
        # Changes to how Stripe handles prorations during the quote line's time span. Affects if and how prorations are created when a future phase starts.
        sig { returns(String) }
        attr_accessor :proration_behavior
        # Defines how to pause collection for the underlying subscription throughout the duration of the amendment.
        sig { returns(::Stripe::QuoteService::UpdateParams::Line::SetPauseCollection) }
        attr_accessor :set_pause_collection
        # Timestamp helper to end the underlying schedule early, based on the acompanying line's start or end date.
        sig { returns(String) }
        attr_accessor :set_schedule_end
        # Details to identify the earliest timestamp where the proposed change should take effect.
        sig { returns(::Stripe::QuoteService::UpdateParams::Line::StartsAt) }
        attr_accessor :starts_at
        # Settings related to subscription trials.
        sig { returns(::Stripe::QuoteService::UpdateParams::Line::TrialSettings) }
        attr_accessor :trial_settings
        sig {
          params(actions: T::Array[::Stripe::QuoteService::UpdateParams::Line::Action], applies_to: ::Stripe::QuoteService::UpdateParams::Line::AppliesTo, billing_cycle_anchor: String, cancel_subscription_schedule: ::Stripe::QuoteService::UpdateParams::Line::CancelSubscriptionSchedule, ends_at: ::Stripe::QuoteService::UpdateParams::Line::EndsAt, id: String, proration_behavior: String, set_pause_collection: ::Stripe::QuoteService::UpdateParams::Line::SetPauseCollection, set_schedule_end: String, starts_at: ::Stripe::QuoteService::UpdateParams::Line::StartsAt, trial_settings: ::Stripe::QuoteService::UpdateParams::Line::TrialSettings).void
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
              returns(::Stripe::QuoteService::UpdateParams::LineItem::Discount::DiscountEnd::Duration)
             }
            attr_accessor :duration
            # A precise Unix timestamp for the discount to end. Must be in the future.
            sig { returns(Integer) }
            attr_accessor :timestamp
            # The type of calculation made to determine when the discount ends.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(duration: ::Stripe::QuoteService::UpdateParams::LineItem::Discount::DiscountEnd::Duration, timestamp: Integer, type: String).void
             }
            def initialize(duration: nil, timestamp: nil, type: nil); end
          end
          # ID of the coupon to create a new discount for.
          sig { returns(String) }
          attr_accessor :coupon
          # ID of an existing discount on the object (or one of its ancestors) to reuse.
          sig { returns(String) }
          attr_accessor :discount
          # Details to determine how long the discount should be applied for.
          sig { returns(::Stripe::QuoteService::UpdateParams::LineItem::Discount::DiscountEnd) }
          attr_accessor :discount_end
          # ID of the promotion code to create a new discount for.
          sig { returns(String) }
          attr_accessor :promotion_code
          sig {
            params(coupon: String, discount: String, discount_end: ::Stripe::QuoteService::UpdateParams::LineItem::Discount::DiscountEnd, promotion_code: String).void
           }
          def initialize(coupon: nil, discount: nil, discount_end: nil, promotion_code: nil); end
        end
        class PriceData < Stripe::RequestParams
          class Recurring < Stripe::RequestParams
            # Specifies billing frequency. Either `day`, `week`, `month` or `year`.
            sig { returns(String) }
            attr_accessor :interval
            # The number of intervals between subscription billings. For example, `interval=month` and `interval_count=3` bills every 3 months. Maximum of three years interval allowed (3 years, 36 months, or 156 weeks).
            sig { returns(Integer) }
            attr_accessor :interval_count
            sig { params(interval: String, interval_count: Integer).void }
            def initialize(interval: nil, interval_count: nil); end
          end
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(String) }
          attr_accessor :currency
          # The ID of the [Product](https://docs.stripe.com/api/products) that this [Price](https://docs.stripe.com/api/prices) will belong to.
          sig { returns(String) }
          attr_accessor :product
          # The recurring components of a price such as `interval` and `interval_count`.
          sig { returns(::Stripe::QuoteService::UpdateParams::LineItem::PriceData::Recurring) }
          attr_accessor :recurring
          # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
          sig { returns(String) }
          attr_accessor :tax_behavior
          # A positive integer in cents (or local equivalent) (or 0 for a free price) representing how much to charge.
          sig { returns(Integer) }
          attr_accessor :unit_amount
          # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
          sig { returns(String) }
          attr_accessor :unit_amount_decimal
          sig {
            params(currency: String, product: String, recurring: ::Stripe::QuoteService::UpdateParams::LineItem::PriceData::Recurring, tax_behavior: String, unit_amount: Integer, unit_amount_decimal: String).void
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
          returns(T.nilable(T::Array[::Stripe::QuoteService::UpdateParams::LineItem::Discount]))
         }
        attr_accessor :discounts
        # The ID of an existing line item on the quote.
        sig { returns(String) }
        attr_accessor :id
        # The ID of the price object. One of `price` or `price_data` is required.
        sig { returns(String) }
        attr_accessor :price
        # Data used to generate a new [Price](https://stripe.com/docs/api/prices) object inline. One of `price` or `price_data` is required.
        sig { returns(::Stripe::QuoteService::UpdateParams::LineItem::PriceData) }
        attr_accessor :price_data
        # The quantity of the line item.
        sig { returns(Integer) }
        attr_accessor :quantity
        # The tax rates which apply to the line item. When set, the `default_tax_rates` on the quote do not apply to this line item.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :tax_rates
        sig {
          params(discounts: T.nilable(T::Array[::Stripe::QuoteService::UpdateParams::LineItem::Discount]), id: String, price: String, price_data: ::Stripe::QuoteService::UpdateParams::LineItem::PriceData, quantity: Integer, tax_rates: T.nilable(T::Array[String])).void
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
              sig { returns(String) }
              attr_accessor :id
              # The position of the previous quote line in the `lines` array after which this line should begin. Indexes start from 0 and must be less than the index of the current line in the array.
              sig { returns(Integer) }
              attr_accessor :index
              sig { params(id: String, index: Integer).void }
              def initialize(id: nil, index: nil); end
            end
            # Details of a Quote line to start the bill period from.
            sig {
              returns(::Stripe::QuoteService::UpdateParams::SubscriptionData::BillOnAcceptance::BillFrom::LineStartsAt)
             }
            attr_accessor :line_starts_at
            # A precise Unix timestamp.
            sig { returns(Integer) }
            attr_accessor :timestamp
            # The type of method to specify the `bill_from` time.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(line_starts_at: ::Stripe::QuoteService::UpdateParams::SubscriptionData::BillOnAcceptance::BillFrom::LineStartsAt, timestamp: Integer, type: String).void
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
              sig { returns(String) }
              attr_accessor :id
              # The position of the previous quote line in the `lines` array after which this line should begin. Indexes start from 0 and must be less than the index of the current line in the array.
              sig { returns(Integer) }
              attr_accessor :index
              sig { params(id: String, index: Integer).void }
              def initialize(id: nil, index: nil); end
            end
            # Details of the duration over which to bill.
            sig {
              returns(::Stripe::QuoteService::UpdateParams::SubscriptionData::BillOnAcceptance::BillUntil::Duration)
             }
            attr_accessor :duration
            # Details of a Quote line item from which to bill until.
            sig {
              returns(::Stripe::QuoteService::UpdateParams::SubscriptionData::BillOnAcceptance::BillUntil::LineEndsAt)
             }
            attr_accessor :line_ends_at
            # A precise Unix timestamp.
            sig { returns(Integer) }
            attr_accessor :timestamp
            # The type of method to specify the `bill_until` time.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(duration: ::Stripe::QuoteService::UpdateParams::SubscriptionData::BillOnAcceptance::BillUntil::Duration, line_ends_at: ::Stripe::QuoteService::UpdateParams::SubscriptionData::BillOnAcceptance::BillUntil::LineEndsAt, timestamp: Integer, type: String).void
             }
            def initialize(duration: nil, line_ends_at: nil, timestamp: nil, type: nil); end
          end
          # The start of the period to bill from when the Quote is accepted.
          sig {
            returns(::Stripe::QuoteService::UpdateParams::SubscriptionData::BillOnAcceptance::BillFrom)
           }
          attr_accessor :bill_from
          # The end of the period to bill until when the Quote is accepted.
          sig {
            returns(::Stripe::QuoteService::UpdateParams::SubscriptionData::BillOnAcceptance::BillUntil)
           }
          attr_accessor :bill_until
          sig {
            params(bill_from: ::Stripe::QuoteService::UpdateParams::SubscriptionData::BillOnAcceptance::BillFrom, bill_until: ::Stripe::QuoteService::UpdateParams::SubscriptionData::BillOnAcceptance::BillUntil).void
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
          returns(T.nilable(::Stripe::QuoteService::UpdateParams::SubscriptionData::BillOnAcceptance))
         }
        attr_accessor :bill_on_acceptance
        # Configures when the subscription schedule generates prorations for phase transitions. Possible values are `prorate_on_next_phase` or `prorate_up_front` with the default being `prorate_on_next_phase`. `prorate_on_next_phase` will apply phase changes and generate prorations at transition time. `prorate_up_front` will bill for all phases within the current billing cycle up front.
        sig { returns(String) }
        attr_accessor :billing_behavior
        # When specified as `reset`, the subscription will always start a new billing period when the quote is accepted.
        sig { returns(T.nilable(String)) }
        attr_accessor :billing_cycle_anchor
        # The subscription's description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
        sig { returns(T.nilable(String)) }
        attr_accessor :description
        # When creating a new subscription, the date of which the subscription schedule will start after the quote is accepted. When updating a subscription, the date of which the subscription will be updated using a subscription schedule. The special value `current_period_end` can be provided to update a subscription at the end of its current period. The `effective_date` is ignored if it is in the past when the quote is accepted.
        sig { returns(T.nilable(T.any(String, Integer))) }
        attr_accessor :effective_date
        # Behavior of the subscription schedule and underlying subscription when it ends.
        sig { returns(String) }
        attr_accessor :end_behavior
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that will set metadata on the subscription or subscription schedule when the quote is accepted. If a recurring price is included in `line_items`, this field will be passed to the resulting subscription's `metadata` field. If `subscription_data.effective_date` is used, this field will be passed to the resulting subscription schedule's `phases.metadata` field. Unlike object-level metadata, this field is declarative. Updates will clear prior values.
        sig { returns(T::Hash[String, String]) }
        attr_accessor :metadata
        # If specified, the invoicing for the given billing cycle iterations will be processed when the quote is accepted. Cannot be used with `effective_date`.
        sig {
          returns(T.nilable(::Stripe::QuoteService::UpdateParams::SubscriptionData::Prebilling))
         }
        attr_accessor :prebilling
        # Determines how to handle [prorations](https://stripe.com/docs/subscriptions/billing-cycle#prorations). When creating a subscription, valid values are `create_prorations` or `none`.
        #
        # When updating a subscription, valid values are `create_prorations`, `none`, or `always_invoice`.
        #
        # Passing `create_prorations` will cause proration invoice items to be created when applicable. These proration items will only be invoiced immediately under [certain conditions](https://stripe.com/docs/subscriptions/upgrading-downgrading#immediate-payment). In order to always invoice immediately for prorations, pass `always_invoice`.
        #
        # Prorations can be disabled by passing `none`.
        sig { returns(String) }
        attr_accessor :proration_behavior
        # Integer representing the number of trial period days before the customer is charged for the first time.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :trial_period_days
        sig {
          params(bill_on_acceptance: T.nilable(::Stripe::QuoteService::UpdateParams::SubscriptionData::BillOnAcceptance), billing_behavior: String, billing_cycle_anchor: T.nilable(String), description: T.nilable(String), effective_date: T.nilable(T.any(String, Integer)), end_behavior: String, metadata: T::Hash[String, String], prebilling: T.nilable(::Stripe::QuoteService::UpdateParams::SubscriptionData::Prebilling), proration_behavior: String, trial_period_days: T.nilable(Integer)).void
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
          sig { returns(String) }
          attr_accessor :new_reference
          # The ID of the schedule the line applies to.
          sig { returns(String) }
          attr_accessor :subscription_schedule
          # Describes whether the quote line is affecting a new schedule or an existing schedule.
          sig { returns(String) }
          attr_accessor :type
          sig { params(new_reference: String, subscription_schedule: String, type: String).void }
          def initialize(new_reference: nil, subscription_schedule: nil, type: nil); end
        end
        class BillOnAcceptance < Stripe::RequestParams
          class BillFrom < Stripe::RequestParams
            class LineStartsAt < Stripe::RequestParams
              # The ID of a quote line.
              sig { returns(String) }
              attr_accessor :id
              # The position of the previous quote line in the `lines` array after which this line should begin. Indexes start from 0 and must be less than the index of the current line in the array.
              sig { returns(Integer) }
              attr_accessor :index
              sig { params(id: String, index: Integer).void }
              def initialize(id: nil, index: nil); end
            end
            # Details of a Quote line to start the bill period from.
            sig {
              returns(::Stripe::QuoteService::UpdateParams::SubscriptionDataOverride::BillOnAcceptance::BillFrom::LineStartsAt)
             }
            attr_accessor :line_starts_at
            # A precise Unix timestamp.
            sig { returns(Integer) }
            attr_accessor :timestamp
            # The type of method to specify the `bill_from` time.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(line_starts_at: ::Stripe::QuoteService::UpdateParams::SubscriptionDataOverride::BillOnAcceptance::BillFrom::LineStartsAt, timestamp: Integer, type: String).void
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
              sig { returns(String) }
              attr_accessor :id
              # The position of the previous quote line in the `lines` array after which this line should begin. Indexes start from 0 and must be less than the index of the current line in the array.
              sig { returns(Integer) }
              attr_accessor :index
              sig { params(id: String, index: Integer).void }
              def initialize(id: nil, index: nil); end
            end
            # Details of the duration over which to bill.
            sig {
              returns(::Stripe::QuoteService::UpdateParams::SubscriptionDataOverride::BillOnAcceptance::BillUntil::Duration)
             }
            attr_accessor :duration
            # Details of a Quote line item from which to bill until.
            sig {
              returns(::Stripe::QuoteService::UpdateParams::SubscriptionDataOverride::BillOnAcceptance::BillUntil::LineEndsAt)
             }
            attr_accessor :line_ends_at
            # A precise Unix timestamp.
            sig { returns(Integer) }
            attr_accessor :timestamp
            # The type of method to specify the `bill_until` time.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(duration: ::Stripe::QuoteService::UpdateParams::SubscriptionDataOverride::BillOnAcceptance::BillUntil::Duration, line_ends_at: ::Stripe::QuoteService::UpdateParams::SubscriptionDataOverride::BillOnAcceptance::BillUntil::LineEndsAt, timestamp: Integer, type: String).void
             }
            def initialize(duration: nil, line_ends_at: nil, timestamp: nil, type: nil); end
          end
          # The start of the period to bill from when the Quote is accepted.
          sig {
            returns(::Stripe::QuoteService::UpdateParams::SubscriptionDataOverride::BillOnAcceptance::BillFrom)
           }
          attr_accessor :bill_from
          # The end of the period to bill until when the Quote is accepted.
          sig {
            returns(::Stripe::QuoteService::UpdateParams::SubscriptionDataOverride::BillOnAcceptance::BillUntil)
           }
          attr_accessor :bill_until
          sig {
            params(bill_from: ::Stripe::QuoteService::UpdateParams::SubscriptionDataOverride::BillOnAcceptance::BillFrom, bill_until: ::Stripe::QuoteService::UpdateParams::SubscriptionDataOverride::BillOnAcceptance::BillUntil).void
           }
          def initialize(bill_from: nil, bill_until: nil); end
        end
        # Whether the override applies to an existing Subscription Schedule or a new Subscription Schedule.
        sig { returns(::Stripe::QuoteService::UpdateParams::SubscriptionDataOverride::AppliesTo) }
        attr_accessor :applies_to
        # Describes the period to bill for upon accepting the quote.
        sig {
          returns(T.nilable(::Stripe::QuoteService::UpdateParams::SubscriptionDataOverride::BillOnAcceptance))
         }
        attr_accessor :bill_on_acceptance
        # Configures when the subscription schedule generates prorations for phase transitions. Possible values are `prorate_on_next_phase` or `prorate_up_front` with the default being `prorate_on_next_phase`. `prorate_on_next_phase` will apply phase changes and generate prorations at transition time. `prorate_up_front` will bill for all phases within the current billing cycle up front.
        sig { returns(String) }
        attr_accessor :billing_behavior
        # The customer the Subscription Data override applies to.
        sig { returns(String) }
        attr_accessor :customer
        # The subscription's description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
        sig { returns(T.nilable(String)) }
        attr_accessor :description
        # Behavior of the subscription schedule and underlying subscription when it ends.
        sig { returns(String) }
        attr_accessor :end_behavior
        # Determines how to handle [prorations](https://stripe.com/docs/subscriptions/billing-cycle#prorations). When creating a subscription, valid values are `create_prorations` or `none`.
        #
        # When updating a subscription, valid values are `create_prorations`, `none`, or `always_invoice`.
        #
        # Passing `create_prorations` will cause proration invoice items to be created when applicable. These proration items will only be invoiced immediately under [certain conditions](https://stripe.com/docs/subscriptions/upgrading-downgrading#immediate-payment). In order to always invoice immediately for prorations, pass `always_invoice`.
        #
        # Prorations can be disabled by passing `none`.
        sig { returns(String) }
        attr_accessor :proration_behavior
        sig {
          params(applies_to: ::Stripe::QuoteService::UpdateParams::SubscriptionDataOverride::AppliesTo, bill_on_acceptance: T.nilable(::Stripe::QuoteService::UpdateParams::SubscriptionDataOverride::BillOnAcceptance), billing_behavior: String, customer: String, description: T.nilable(String), end_behavior: String, proration_behavior: String).void
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
        sig { returns(Integer) }
        attr_accessor :amount
        # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the destination account. By default, the entire amount is transferred to the destination. There must be at least 1 line item with a recurring price to use this field.
        sig { returns(Float) }
        attr_accessor :amount_percent
        # ID of an existing, connected Stripe account.
        sig { returns(String) }
        attr_accessor :destination
        sig { params(amount: Integer, amount_percent: Float, destination: String).void }
        def initialize(amount: nil, amount_percent: nil, destination: nil); end
      end
      # Set to true to allow quote lines to have `starts_at` in the past if collection is paused between `starts_at` and now.
      sig { returns(T::Boolean) }
      attr_accessor :allow_backdated_lines
      # The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. There cannot be any line items with recurring prices when using this field.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :application_fee_amount
      # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account. There must be at least 1 line item with a recurring price to use this field.
      sig { returns(T.nilable(Float)) }
      attr_accessor :application_fee_percent
      # Settings for automatic tax lookup for this quote and resulting invoices and subscriptions.
      sig { returns(::Stripe::QuoteService::UpdateParams::AutomaticTax) }
      attr_accessor :automatic_tax
      # Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay invoices at the end of the subscription cycle or at invoice finalization using the default payment method attached to the subscription or customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions and mark the subscription as `active`. Defaults to `charge_automatically`.
      sig { returns(String) }
      attr_accessor :collection_method
      # The customer for which this quote belongs to. A customer is required before finalizing the quote. Once specified, it cannot be changed.
      sig { returns(String) }
      attr_accessor :customer
      # The tax rates that will apply to any line item that does not have `tax_rates` set.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :default_tax_rates
      # A description that will be displayed on the quote PDF.
      sig { returns(T.nilable(String)) }
      attr_accessor :description
      # The discounts applied to the quote.
      sig { returns(T.nilable(T::Array[::Stripe::QuoteService::UpdateParams::Discount])) }
      attr_accessor :discounts
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      # A future timestamp on which the quote will be canceled if in `open` or `draft` status. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_accessor :expires_at
      # A footer that will be displayed on the quote PDF.
      sig { returns(T.nilable(String)) }
      attr_accessor :footer
      # A header that will be displayed on the quote PDF.
      sig { returns(T.nilable(String)) }
      attr_accessor :header
      # All invoices will be billed using the specified settings.
      sig { returns(::Stripe::QuoteService::UpdateParams::InvoiceSettings) }
      attr_accessor :invoice_settings
      # A list of line items the customer is being quoted for. Each line item includes information about the product, the quantity, and the resulting cost.
      sig { returns(T::Array[::Stripe::QuoteService::UpdateParams::LineItem]) }
      attr_accessor :line_items
      # A list of [quote lines](https://docs.stripe.com/api/quote_lines) on the quote. These lines describe changes, in the order provided, that will be used to create new subscription schedules or update existing subscription schedules when the quote is accepted.
      sig { returns(T::Array[::Stripe::QuoteService::UpdateParams::Line]) }
      attr_accessor :lines
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T::Hash[String, String]) }
      attr_accessor :metadata
      # The account on behalf of which to charge.
      sig { returns(T.nilable(String)) }
      attr_accessor :on_behalf_of
      # When creating a subscription or subscription schedule, the specified configuration data will be used. There must be at least one line item with a recurring price for a subscription or subscription schedule to be created. A subscription schedule is created if `subscription_data[effective_date]` is present and in the future, otherwise a subscription is created.
      sig { returns(::Stripe::QuoteService::UpdateParams::SubscriptionData) }
      attr_accessor :subscription_data
      # List representing overrides for `subscription_data` configurations for specific subscription schedules.
      sig {
        returns(T.nilable(T::Array[::Stripe::QuoteService::UpdateParams::SubscriptionDataOverride]))
       }
      attr_accessor :subscription_data_overrides
      # The data with which to automatically create a Transfer for each of the invoices.
      sig { returns(T.nilable(::Stripe::QuoteService::UpdateParams::TransferData)) }
      attr_accessor :transfer_data
      sig {
        params(allow_backdated_lines: T::Boolean, application_fee_amount: T.nilable(Integer), application_fee_percent: T.nilable(Float), automatic_tax: ::Stripe::QuoteService::UpdateParams::AutomaticTax, collection_method: String, customer: String, default_tax_rates: T.nilable(T::Array[String]), description: T.nilable(String), discounts: T.nilable(T::Array[::Stripe::QuoteService::UpdateParams::Discount]), expand: T::Array[String], expires_at: Integer, footer: T.nilable(String), header: T.nilable(String), invoice_settings: ::Stripe::QuoteService::UpdateParams::InvoiceSettings, line_items: T::Array[::Stripe::QuoteService::UpdateParams::LineItem], lines: T::Array[::Stripe::QuoteService::UpdateParams::Line], metadata: T::Hash[String, String], on_behalf_of: T.nilable(String), subscription_data: ::Stripe::QuoteService::UpdateParams::SubscriptionData, subscription_data_overrides: T.nilable(T::Array[::Stripe::QuoteService::UpdateParams::SubscriptionDataOverride]), transfer_data: T.nilable(::Stripe::QuoteService::UpdateParams::TransferData)).void
       }
      def initialize(
        allow_backdated_lines: nil,
        application_fee_amount: nil,
        application_fee_percent: nil,
        automatic_tax: nil,
        collection_method: nil,
        customer: nil,
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
    class AcceptParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      sig { params(expand: T::Array[String]).void }
      def initialize(expand: nil); end
    end
    class CancelParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      sig { params(expand: T::Array[String]).void }
      def initialize(expand: nil); end
    end
    class FinalizeQuoteParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      # A future timestamp on which the quote will be canceled if in `open` or `draft` status. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_accessor :expires_at
      sig { params(expand: T::Array[String], expires_at: Integer).void }
      def initialize(expand: nil, expires_at: nil); end
    end
    class MarkDraftParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      sig { params(expand: T::Array[String]).void }
      def initialize(expand: nil); end
    end
    class MarkStaleParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      # Reason the Quote is being marked stale.
      sig { returns(String) }
      attr_accessor :reason
      sig { params(expand: T::Array[String], reason: String).void }
      def initialize(expand: nil, reason: nil); end
    end
    class ReestimateParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      sig { params(expand: T::Array[String]).void }
      def initialize(expand: nil); end
    end
    class PdfParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      sig { params(expand: T::Array[String]).void }
      def initialize(expand: nil); end
    end
    class ListPreviewInvoiceLinesParams < Stripe::RequestParams
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      sig { returns(String) }
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(Integer) }
      attr_accessor :limit
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(String) }
      attr_accessor :starting_after
      sig {
        params(ending_before: String, expand: T::Array[String], limit: Integer, starting_after: String).void
       }
      def initialize(ending_before: nil, expand: nil, limit: nil, starting_after: nil); end
    end
    # Accepts the specified quote.
    sig {
      params(quote: String, params: T.any(::Stripe::QuoteService::AcceptParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Quote)
     }
    def accept(quote, params = {}, opts = {}); end

    # Cancels the quote.
    sig {
      params(quote: String, params: T.any(::Stripe::QuoteService::CancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Quote)
     }
    def cancel(quote, params = {}, opts = {}); end

    # A quote models prices and services for a customer. Default options for header, description, footer, and expires_at can be set in the dashboard via the [quote template](https://dashboard.stripe.com/settings/billing/quote).
    sig {
      params(params: T.any(::Stripe::QuoteService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Quote)
     }
    def create(params = {}, opts = {}); end

    # Finalizes the quote.
    sig {
      params(quote: String, params: T.any(::Stripe::QuoteService::FinalizeQuoteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Quote)
     }
    def finalize_quote(quote, params = {}, opts = {}); end

    # Returns a list of your quotes.
    sig {
      params(params: T.any(::Stripe::QuoteService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def list(params = {}, opts = {}); end

    # Preview the invoice line items that would be generated by accepting the quote.
    sig {
      params(quote: String, preview_invoice: String, params: T.any(::Stripe::QuoteService::ListPreviewInvoiceLinesParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def list_preview_invoice_lines(quote, preview_invoice, params = {}, opts = {}); end

    # Converts a stale quote to draft.
    sig {
      params(quote: String, params: T.any(::Stripe::QuoteService::MarkDraftParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Quote)
     }
    def mark_draft(quote, params = {}, opts = {}); end

    # Converts a draft or open quote to stale.
    sig {
      params(quote: String, params: T.any(::Stripe::QuoteService::MarkStaleParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Quote)
     }
    def mark_stale(quote, params = {}, opts = {}); end

    # Download the PDF for a finalized quote. Explanation for special handling can be found [here](https://docs.stripe.com/quotes/overview#quote_pdf)
    sig {
      params(quote: String, params: T.any(::Stripe::QuoteService::PdfParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped, read_body_chunk_block: T.untyped).returns(T.untyped)
     }
    def pdf(quote, params = {}, opts = {}, &read_body_chunk_block); end

    # Recompute the upcoming invoice estimate for the quote.
    sig {
      params(quote: String, params: T.any(::Stripe::QuoteService::ReestimateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Quote)
     }
    def reestimate(quote, params = {}, opts = {}); end

    # Retrieves the quote with the given ID.
    sig {
      params(quote: String, params: T.any(::Stripe::QuoteService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Quote)
     }
    def retrieve(quote, params = {}, opts = {}); end

    # A quote models prices and services for a customer.
    sig {
      params(quote: String, params: T.any(::Stripe::QuoteService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Quote)
     }
    def update(quote, params = {}, opts = {}); end
  end
end