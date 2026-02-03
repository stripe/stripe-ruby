# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class QuoteCreateParams < ::Stripe::RequestParams
    class AutomaticTax < ::Stripe::RequestParams
      class Liability < ::Stripe::RequestParams
        # The connected account being referenced when `type` is `account`.
        sig { returns(T.nilable(String)) }
        def account; end
        sig { params(_account: T.nilable(String)).returns(T.nilable(String)) }
        def account=(_account); end
        # Type of the account referenced in the request.
        sig { returns(String) }
        def type; end
        sig { params(_type: String).returns(String) }
        def type=(_type); end
        sig { params(account: T.nilable(String), type: String).void }
        def initialize(account: nil, type: nil); end
      end
      # Controls whether Stripe will automatically compute tax on the resulting invoices or subscriptions as well as the quote itself.
      sig { returns(T::Boolean) }
      def enabled; end
      sig { params(_enabled: T::Boolean).returns(T::Boolean) }
      def enabled=(_enabled); end
      # The account that's liable for tax. If set, the business address and tax registrations required to perform the tax calculation are loaded from this account. The tax transaction is returned in the report of the connected account.
      sig { returns(T.nilable(::Stripe::QuoteCreateParams::AutomaticTax::Liability)) }
      def liability; end
      sig {
        params(_liability: T.nilable(::Stripe::QuoteCreateParams::AutomaticTax::Liability)).returns(T.nilable(::Stripe::QuoteCreateParams::AutomaticTax::Liability))
       }
      def liability=(_liability); end
      sig {
        params(enabled: T::Boolean, liability: T.nilable(::Stripe::QuoteCreateParams::AutomaticTax::Liability)).void
       }
      def initialize(enabled: nil, liability: nil); end
    end
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
        sig { returns(T.nilable(::Stripe::QuoteCreateParams::Discount::DiscountEnd::Duration)) }
        def duration; end
        sig {
          params(_duration: T.nilable(::Stripe::QuoteCreateParams::Discount::DiscountEnd::Duration)).returns(T.nilable(::Stripe::QuoteCreateParams::Discount::DiscountEnd::Duration))
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
          params(duration: T.nilable(::Stripe::QuoteCreateParams::Discount::DiscountEnd::Duration), timestamp: T.nilable(Integer), type: String).void
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
      sig { returns(T.nilable(::Stripe::QuoteCreateParams::Discount::DiscountEnd)) }
      def discount_end; end
      sig {
        params(_discount_end: T.nilable(::Stripe::QuoteCreateParams::Discount::DiscountEnd)).returns(T.nilable(::Stripe::QuoteCreateParams::Discount::DiscountEnd))
       }
      def discount_end=(_discount_end); end
      # ID of the promotion code to create a new discount for.
      sig { returns(T.nilable(String)) }
      def promotion_code; end
      sig { params(_promotion_code: T.nilable(String)).returns(T.nilable(String)) }
      def promotion_code=(_promotion_code); end
      sig {
        params(coupon: T.nilable(String), discount: T.nilable(String), discount_end: T.nilable(::Stripe::QuoteCreateParams::Discount::DiscountEnd), promotion_code: T.nilable(String)).void
       }
      def initialize(coupon: nil, discount: nil, discount_end: nil, promotion_code: nil); end
    end
    class FromQuote < ::Stripe::RequestParams
      # Whether this quote is a revision of the previous quote.
      sig { returns(T.nilable(T::Boolean)) }
      def is_revision; end
      sig { params(_is_revision: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def is_revision=(_is_revision); end
      # The `id` of the quote that will be cloned.
      sig { returns(String) }
      def quote; end
      sig { params(_quote: String).returns(String) }
      def quote=(_quote); end
      sig { params(is_revision: T.nilable(T::Boolean), quote: String).void }
      def initialize(is_revision: nil, quote: nil); end
    end
    class InvoiceSettings < ::Stripe::RequestParams
      class Issuer < ::Stripe::RequestParams
        # The connected account being referenced when `type` is `account`.
        sig { returns(T.nilable(String)) }
        def account; end
        sig { params(_account: T.nilable(String)).returns(T.nilable(String)) }
        def account=(_account); end
        # Type of the account referenced in the request.
        sig { returns(String) }
        def type; end
        sig { params(_type: String).returns(String) }
        def type=(_type); end
        sig { params(account: T.nilable(String), type: String).void }
        def initialize(account: nil, type: nil); end
      end
      # Number of days within which a customer must pay the invoice generated by this quote. This value will be `null` for quotes where `collection_method=charge_automatically`.
      sig { returns(T.nilable(Integer)) }
      def days_until_due; end
      sig { params(_days_until_due: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def days_until_due=(_days_until_due); end
      # The connected account that issues the invoice. The invoice is presented with the branding and support information of the specified account.
      sig { returns(T.nilable(::Stripe::QuoteCreateParams::InvoiceSettings::Issuer)) }
      def issuer; end
      sig {
        params(_issuer: T.nilable(::Stripe::QuoteCreateParams::InvoiceSettings::Issuer)).returns(T.nilable(::Stripe::QuoteCreateParams::InvoiceSettings::Issuer))
       }
      def issuer=(_issuer); end
      sig {
        params(days_until_due: T.nilable(Integer), issuer: T.nilable(::Stripe::QuoteCreateParams::InvoiceSettings::Issuer)).void
       }
      def initialize(days_until_due: nil, issuer: nil); end
    end
    class Line < ::Stripe::RequestParams
      class Action < ::Stripe::RequestParams
        class AddDiscount < ::Stripe::RequestParams
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
            returns(T.nilable(::Stripe::QuoteCreateParams::Line::Action::AddDiscount::DiscountEnd))
           }
          def discount_end; end
          sig {
            params(_discount_end: T.nilable(::Stripe::QuoteCreateParams::Line::Action::AddDiscount::DiscountEnd)).returns(T.nilable(::Stripe::QuoteCreateParams::Line::Action::AddDiscount::DiscountEnd))
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
            params(coupon: T.nilable(String), discount: T.nilable(String), discount_end: T.nilable(::Stripe::QuoteCreateParams::Line::Action::AddDiscount::DiscountEnd), index: T.nilable(Integer), promotion_code: T.nilable(String)).void
           }
          def initialize(
            coupon: nil,
            discount: nil,
            discount_end: nil,
            index: nil,
            promotion_code: nil
          ); end
        end
        class AddItem < ::Stripe::RequestParams
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
                returns(T.nilable(::Stripe::QuoteCreateParams::Line::Action::AddItem::Discount::DiscountEnd::Duration))
               }
              def duration; end
              sig {
                params(_duration: T.nilable(::Stripe::QuoteCreateParams::Line::Action::AddItem::Discount::DiscountEnd::Duration)).returns(T.nilable(::Stripe::QuoteCreateParams::Line::Action::AddItem::Discount::DiscountEnd::Duration))
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
                params(duration: T.nilable(::Stripe::QuoteCreateParams::Line::Action::AddItem::Discount::DiscountEnd::Duration), timestamp: T.nilable(Integer), type: String).void
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
              returns(T.nilable(::Stripe::QuoteCreateParams::Line::Action::AddItem::Discount::DiscountEnd))
             }
            def discount_end; end
            sig {
              params(_discount_end: T.nilable(::Stripe::QuoteCreateParams::Line::Action::AddItem::Discount::DiscountEnd)).returns(T.nilable(::Stripe::QuoteCreateParams::Line::Action::AddItem::Discount::DiscountEnd))
             }
            def discount_end=(_discount_end); end
            # ID of the promotion code to create a new discount for.
            sig { returns(T.nilable(String)) }
            def promotion_code; end
            sig { params(_promotion_code: T.nilable(String)).returns(T.nilable(String)) }
            def promotion_code=(_promotion_code); end
            sig {
              params(coupon: T.nilable(String), discount: T.nilable(String), discount_end: T.nilable(::Stripe::QuoteCreateParams::Line::Action::AddItem::Discount::DiscountEnd), promotion_code: T.nilable(String)).void
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
            returns(T.nilable(T::Array[::Stripe::QuoteCreateParams::Line::Action::AddItem::Discount]))
           }
          def discounts; end
          sig {
            params(_discounts: T.nilable(T::Array[::Stripe::QuoteCreateParams::Line::Action::AddItem::Discount])).returns(T.nilable(T::Array[::Stripe::QuoteCreateParams::Line::Action::AddItem::Discount]))
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
          sig { returns(T.nilable(::Stripe::QuoteCreateParams::Line::Action::AddItem::Trial)) }
          def trial; end
          sig {
            params(_trial: T.nilable(::Stripe::QuoteCreateParams::Line::Action::AddItem::Trial)).returns(T.nilable(::Stripe::QuoteCreateParams::Line::Action::AddItem::Trial))
           }
          def trial=(_trial); end
          sig {
            params(discounts: T.nilable(T::Array[::Stripe::QuoteCreateParams::Line::Action::AddItem::Discount]), metadata: T.nilable(T::Hash[String, String]), price: String, quantity: T.nilable(Integer), tax_rates: T.nilable(T::Array[String]), trial: T.nilable(::Stripe::QuoteCreateParams::Line::Action::AddItem::Trial)).void
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
        class RemoveDiscount < ::Stripe::RequestParams
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
        class RemoveItem < ::Stripe::RequestParams
          # ID of a price to remove.
          sig { returns(String) }
          def price; end
          sig { params(_price: String).returns(String) }
          def price=(_price); end
          sig { params(price: String).void }
          def initialize(price: nil); end
        end
        class SetDiscount < ::Stripe::RequestParams
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
        class SetItem < ::Stripe::RequestParams
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
                returns(T.nilable(::Stripe::QuoteCreateParams::Line::Action::SetItem::Discount::DiscountEnd::Duration))
               }
              def duration; end
              sig {
                params(_duration: T.nilable(::Stripe::QuoteCreateParams::Line::Action::SetItem::Discount::DiscountEnd::Duration)).returns(T.nilable(::Stripe::QuoteCreateParams::Line::Action::SetItem::Discount::DiscountEnd::Duration))
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
                params(duration: T.nilable(::Stripe::QuoteCreateParams::Line::Action::SetItem::Discount::DiscountEnd::Duration), timestamp: T.nilable(Integer), type: String).void
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
              returns(T.nilable(::Stripe::QuoteCreateParams::Line::Action::SetItem::Discount::DiscountEnd))
             }
            def discount_end; end
            sig {
              params(_discount_end: T.nilable(::Stripe::QuoteCreateParams::Line::Action::SetItem::Discount::DiscountEnd)).returns(T.nilable(::Stripe::QuoteCreateParams::Line::Action::SetItem::Discount::DiscountEnd))
             }
            def discount_end=(_discount_end); end
            # ID of the promotion code to create a new discount for.
            sig { returns(T.nilable(String)) }
            def promotion_code; end
            sig { params(_promotion_code: T.nilable(String)).returns(T.nilable(String)) }
            def promotion_code=(_promotion_code); end
            sig {
              params(coupon: T.nilable(String), discount: T.nilable(String), discount_end: T.nilable(::Stripe::QuoteCreateParams::Line::Action::SetItem::Discount::DiscountEnd), promotion_code: T.nilable(String)).void
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
            returns(T.nilable(T::Array[::Stripe::QuoteCreateParams::Line::Action::SetItem::Discount]))
           }
          def discounts; end
          sig {
            params(_discounts: T.nilable(T::Array[::Stripe::QuoteCreateParams::Line::Action::SetItem::Discount])).returns(T.nilable(T::Array[::Stripe::QuoteCreateParams::Line::Action::SetItem::Discount]))
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
          sig { returns(T.nilable(::Stripe::QuoteCreateParams::Line::Action::SetItem::Trial)) }
          def trial; end
          sig {
            params(_trial: T.nilable(::Stripe::QuoteCreateParams::Line::Action::SetItem::Trial)).returns(T.nilable(::Stripe::QuoteCreateParams::Line::Action::SetItem::Trial))
           }
          def trial=(_trial); end
          sig {
            params(discounts: T.nilable(T::Array[::Stripe::QuoteCreateParams::Line::Action::SetItem::Discount]), metadata: T.nilable(T::Hash[String, String]), price: String, quantity: T.nilable(Integer), tax_rates: T.nilable(T::Array[String]), trial: T.nilable(::Stripe::QuoteCreateParams::Line::Action::SetItem::Trial)).void
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
        sig { returns(T.nilable(::Stripe::QuoteCreateParams::Line::Action::AddDiscount)) }
        def add_discount; end
        sig {
          params(_add_discount: T.nilable(::Stripe::QuoteCreateParams::Line::Action::AddDiscount)).returns(T.nilable(::Stripe::QuoteCreateParams::Line::Action::AddDiscount))
         }
        def add_discount=(_add_discount); end
        # Details for the `add_item` type.
        sig { returns(T.nilable(::Stripe::QuoteCreateParams::Line::Action::AddItem)) }
        def add_item; end
        sig {
          params(_add_item: T.nilable(::Stripe::QuoteCreateParams::Line::Action::AddItem)).returns(T.nilable(::Stripe::QuoteCreateParams::Line::Action::AddItem))
         }
        def add_item=(_add_item); end
        # Details for the `add_metadata` type: specify a hash of key-value pairs.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def add_metadata; end
        sig {
          params(_add_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
         }
        def add_metadata=(_add_metadata); end
        # Details for the `remove_discount` type.
        sig { returns(T.nilable(::Stripe::QuoteCreateParams::Line::Action::RemoveDiscount)) }
        def remove_discount; end
        sig {
          params(_remove_discount: T.nilable(::Stripe::QuoteCreateParams::Line::Action::RemoveDiscount)).returns(T.nilable(::Stripe::QuoteCreateParams::Line::Action::RemoveDiscount))
         }
        def remove_discount=(_remove_discount); end
        # Details for the `remove_item` type.
        sig { returns(T.nilable(::Stripe::QuoteCreateParams::Line::Action::RemoveItem)) }
        def remove_item; end
        sig {
          params(_remove_item: T.nilable(::Stripe::QuoteCreateParams::Line::Action::RemoveItem)).returns(T.nilable(::Stripe::QuoteCreateParams::Line::Action::RemoveItem))
         }
        def remove_item=(_remove_item); end
        # Details for the `remove_metadata` type: specify an array of metadata keys.
        sig { returns(T.nilable(T::Array[String])) }
        def remove_metadata; end
        sig {
          params(_remove_metadata: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
         }
        def remove_metadata=(_remove_metadata); end
        # Details for the `set_discounts` type.
        sig { returns(T.nilable(T::Array[::Stripe::QuoteCreateParams::Line::Action::SetDiscount])) }
        def set_discounts; end
        sig {
          params(_set_discounts: T.nilable(T::Array[::Stripe::QuoteCreateParams::Line::Action::SetDiscount])).returns(T.nilable(T::Array[::Stripe::QuoteCreateParams::Line::Action::SetDiscount]))
         }
        def set_discounts=(_set_discounts); end
        # Details for the `set_items` type.
        sig { returns(T.nilable(T::Array[::Stripe::QuoteCreateParams::Line::Action::SetItem])) }
        def set_items; end
        sig {
          params(_set_items: T.nilable(T::Array[::Stripe::QuoteCreateParams::Line::Action::SetItem])).returns(T.nilable(T::Array[::Stripe::QuoteCreateParams::Line::Action::SetItem]))
         }
        def set_items=(_set_items); end
        # Details for the `set_metadata` type: specify an array of key-value pairs.
        sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
        def set_metadata; end
        sig {
          params(_set_metadata: T.nilable(T.any(String, T::Hash[String, String]))).returns(T.nilable(T.any(String, T::Hash[String, String])))
         }
        def set_metadata=(_set_metadata); end
        # The type of action the quote line performs.
        sig { returns(String) }
        def type; end
        sig { params(_type: String).returns(String) }
        def type=(_type); end
        sig {
          params(add_discount: T.nilable(::Stripe::QuoteCreateParams::Line::Action::AddDiscount), add_item: T.nilable(::Stripe::QuoteCreateParams::Line::Action::AddItem), add_metadata: T.nilable(T::Hash[String, String]), remove_discount: T.nilable(::Stripe::QuoteCreateParams::Line::Action::RemoveDiscount), remove_item: T.nilable(::Stripe::QuoteCreateParams::Line::Action::RemoveItem), remove_metadata: T.nilable(T::Array[String]), set_discounts: T.nilable(T::Array[::Stripe::QuoteCreateParams::Line::Action::SetDiscount]), set_items: T.nilable(T::Array[::Stripe::QuoteCreateParams::Line::Action::SetItem]), set_metadata: T.nilable(T.any(String, T::Hash[String, String])), type: String).void
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
      class AppliesTo < ::Stripe::RequestParams
        # A custom string that identifies a new subscription schedule being created upon quote acceptance. All quote lines with the same `new_reference` field will be applied to the creation of a new subscription schedule.
        sig { returns(T.nilable(String)) }
        def new_reference; end
        sig { params(_new_reference: T.nilable(String)).returns(T.nilable(String)) }
        def new_reference=(_new_reference); end
        # The ID of the schedule the line applies to.
        sig { returns(T.nilable(String)) }
        def subscription_schedule; end
        sig { params(_subscription_schedule: T.nilable(String)).returns(T.nilable(String)) }
        def subscription_schedule=(_subscription_schedule); end
        # Describes whether the quote line is affecting a new schedule or an existing schedule.
        sig { returns(String) }
        def type; end
        sig { params(_type: String).returns(String) }
        def type=(_type); end
        sig {
          params(new_reference: T.nilable(String), subscription_schedule: T.nilable(String), type: String).void
         }
        def initialize(new_reference: nil, subscription_schedule: nil, type: nil); end
      end
      class CancelSubscriptionSchedule < ::Stripe::RequestParams
        # Timestamp helper to cancel the underlying schedule on the accompanying line's start date. Must be set to `line_starts_at`.
        sig { returns(String) }
        def cancel_at; end
        sig { params(_cancel_at: String).returns(String) }
        def cancel_at=(_cancel_at); end
        # If the subscription schedule is `active`, indicates if a final invoice will be generated that contains any un-invoiced metered usage and new/pending proration invoice items. Boolean that defaults to `true`.
        sig { returns(T.nilable(T::Boolean)) }
        def invoice_now; end
        sig { params(_invoice_now: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def invoice_now=(_invoice_now); end
        # If the subscription schedule is `active`, indicates if the cancellation should be prorated. Boolean that defaults to `true`.
        sig { returns(T.nilable(T::Boolean)) }
        def prorate; end
        sig { params(_prorate: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def prorate=(_prorate); end
        sig {
          params(cancel_at: String, invoice_now: T.nilable(T::Boolean), prorate: T.nilable(T::Boolean)).void
         }
        def initialize(cancel_at: nil, invoice_now: nil, prorate: nil); end
      end
      class EndsAt < ::Stripe::RequestParams
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
        sig { returns(T.nilable(::Stripe::QuoteCreateParams::Line::EndsAt::DiscountEnd)) }
        def discount_end; end
        sig {
          params(_discount_end: T.nilable(::Stripe::QuoteCreateParams::Line::EndsAt::DiscountEnd)).returns(T.nilable(::Stripe::QuoteCreateParams::Line::EndsAt::DiscountEnd))
         }
        def discount_end=(_discount_end); end
        # Time span for the quote line starting from the `starts_at` date.
        sig { returns(T.nilable(::Stripe::QuoteCreateParams::Line::EndsAt::Duration)) }
        def duration; end
        sig {
          params(_duration: T.nilable(::Stripe::QuoteCreateParams::Line::EndsAt::Duration)).returns(T.nilable(::Stripe::QuoteCreateParams::Line::EndsAt::Duration))
         }
        def duration=(_duration); end
        # A precise Unix timestamp.
        sig { returns(T.nilable(Integer)) }
        def timestamp; end
        sig { params(_timestamp: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def timestamp=(_timestamp); end
        # Select a way to pass in `ends_at`.
        sig { returns(String) }
        def type; end
        sig { params(_type: String).returns(String) }
        def type=(_type); end
        sig {
          params(discount_end: T.nilable(::Stripe::QuoteCreateParams::Line::EndsAt::DiscountEnd), duration: T.nilable(::Stripe::QuoteCreateParams::Line::EndsAt::Duration), timestamp: T.nilable(Integer), type: String).void
         }
        def initialize(discount_end: nil, duration: nil, timestamp: nil, type: nil); end
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
        sig { returns(T.nilable(::Stripe::QuoteCreateParams::Line::SetPauseCollection::Set)) }
        def set; end
        sig {
          params(_set: T.nilable(::Stripe::QuoteCreateParams::Line::SetPauseCollection::Set)).returns(T.nilable(::Stripe::QuoteCreateParams::Line::SetPauseCollection::Set))
         }
        def set=(_set); end
        # Determines the type of the pause_collection amendment.
        sig { returns(String) }
        def type; end
        sig { params(_type: String).returns(String) }
        def type=(_type); end
        sig {
          params(set: T.nilable(::Stripe::QuoteCreateParams::Line::SetPauseCollection::Set), type: String).void
         }
        def initialize(set: nil, type: nil); end
      end
      class StartsAt < ::Stripe::RequestParams
        class DiscountEnd < ::Stripe::RequestParams
          # The ID of a specific discount.
          sig { returns(String) }
          def discount; end
          sig { params(_discount: String).returns(String) }
          def discount=(_discount); end
          sig { params(discount: String).void }
          def initialize(discount: nil); end
        end
        class LineEndsAt < ::Stripe::RequestParams
          # The position of the previous quote line in the `lines` array after which this line should begin. Indexes start from 0 and must be less than the index of the current line in the array.
          sig { returns(T.nilable(Integer)) }
          def index; end
          sig { params(_index: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def index=(_index); end
          sig { params(index: T.nilable(Integer)).void }
          def initialize(index: nil); end
        end
        # Use the `end` time of a given discount.
        sig { returns(T.nilable(::Stripe::QuoteCreateParams::Line::StartsAt::DiscountEnd)) }
        def discount_end; end
        sig {
          params(_discount_end: T.nilable(::Stripe::QuoteCreateParams::Line::StartsAt::DiscountEnd)).returns(T.nilable(::Stripe::QuoteCreateParams::Line::StartsAt::DiscountEnd))
         }
        def discount_end=(_discount_end); end
        # The timestamp the given line ends at.
        sig { returns(T.nilable(::Stripe::QuoteCreateParams::Line::StartsAt::LineEndsAt)) }
        def line_ends_at; end
        sig {
          params(_line_ends_at: T.nilable(::Stripe::QuoteCreateParams::Line::StartsAt::LineEndsAt)).returns(T.nilable(::Stripe::QuoteCreateParams::Line::StartsAt::LineEndsAt))
         }
        def line_ends_at=(_line_ends_at); end
        # A precise Unix timestamp.
        sig { returns(T.nilable(Integer)) }
        def timestamp; end
        sig { params(_timestamp: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def timestamp=(_timestamp); end
        # Select a way to pass in `starts_at`.
        sig { returns(String) }
        def type; end
        sig { params(_type: String).returns(String) }
        def type=(_type); end
        sig {
          params(discount_end: T.nilable(::Stripe::QuoteCreateParams::Line::StartsAt::DiscountEnd), line_ends_at: T.nilable(::Stripe::QuoteCreateParams::Line::StartsAt::LineEndsAt), timestamp: T.nilable(Integer), type: String).void
         }
        def initialize(discount_end: nil, line_ends_at: nil, timestamp: nil, type: nil); end
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
        sig { returns(T.nilable(::Stripe::QuoteCreateParams::Line::TrialSettings::EndBehavior)) }
        def end_behavior; end
        sig {
          params(_end_behavior: T.nilable(::Stripe::QuoteCreateParams::Line::TrialSettings::EndBehavior)).returns(T.nilable(::Stripe::QuoteCreateParams::Line::TrialSettings::EndBehavior))
         }
        def end_behavior=(_end_behavior); end
        sig {
          params(end_behavior: T.nilable(::Stripe::QuoteCreateParams::Line::TrialSettings::EndBehavior)).void
         }
        def initialize(end_behavior: nil); end
      end
      # An array of operations the quote line performs.
      sig { returns(T.nilable(T::Array[::Stripe::QuoteCreateParams::Line::Action])) }
      def actions; end
      sig {
        params(_actions: T.nilable(T::Array[::Stripe::QuoteCreateParams::Line::Action])).returns(T.nilable(T::Array[::Stripe::QuoteCreateParams::Line::Action]))
       }
      def actions=(_actions); end
      # Details to identify the subscription schedule the quote line applies to.
      sig { returns(T.nilable(::Stripe::QuoteCreateParams::Line::AppliesTo)) }
      def applies_to; end
      sig {
        params(_applies_to: T.nilable(::Stripe::QuoteCreateParams::Line::AppliesTo)).returns(T.nilable(::Stripe::QuoteCreateParams::Line::AppliesTo))
       }
      def applies_to=(_applies_to); end
      # For point-in-time quote lines (having no `ends_at` timestamp), this attribute lets you set or remove whether the subscription's billing cycle anchor is reset at the Quote Line `starts_at` timestamp.For time-span based quote lines (having both `starts_at` and `ends_at`), the only valid value is `automatic`, which removes any previously configured billing cycle anchor resets during the window of time spanning the quote line.
      sig { returns(T.nilable(String)) }
      def billing_cycle_anchor; end
      sig { params(_billing_cycle_anchor: T.nilable(String)).returns(T.nilable(String)) }
      def billing_cycle_anchor=(_billing_cycle_anchor); end
      # A point-in-time operation that cancels an existing subscription schedule at the line's starts_at timestamp. Currently only compatible with `quote_acceptance_date` for `starts_at`. When using cancel_subscription_schedule, the subscription schedule on the quote remains unalterable, except for modifications to the metadata, collection_method or invoice_settings.
      sig { returns(T.nilable(::Stripe::QuoteCreateParams::Line::CancelSubscriptionSchedule)) }
      def cancel_subscription_schedule; end
      sig {
        params(_cancel_subscription_schedule: T.nilable(::Stripe::QuoteCreateParams::Line::CancelSubscriptionSchedule)).returns(T.nilable(::Stripe::QuoteCreateParams::Line::CancelSubscriptionSchedule))
       }
      def cancel_subscription_schedule=(_cancel_subscription_schedule); end
      # Details to identify the end of the time range modified by the proposed change. If not supplied, the quote line is considered a point-in-time operation that only affects the exact timestamp at `starts_at`, and a restricted set of attributes is supported on the quote line.
      sig { returns(T.nilable(::Stripe::QuoteCreateParams::Line::EndsAt)) }
      def ends_at; end
      sig {
        params(_ends_at: T.nilable(::Stripe::QuoteCreateParams::Line::EndsAt)).returns(T.nilable(::Stripe::QuoteCreateParams::Line::EndsAt))
       }
      def ends_at=(_ends_at); end
      # Changes to how Stripe handles prorations during the quote line's time span. Affects if and how prorations are created when a future phase starts.
      sig { returns(T.nilable(String)) }
      def proration_behavior; end
      sig { params(_proration_behavior: T.nilable(String)).returns(T.nilable(String)) }
      def proration_behavior=(_proration_behavior); end
      # Defines how to pause collection for the underlying subscription throughout the duration of the amendment.
      sig { returns(T.nilable(::Stripe::QuoteCreateParams::Line::SetPauseCollection)) }
      def set_pause_collection; end
      sig {
        params(_set_pause_collection: T.nilable(::Stripe::QuoteCreateParams::Line::SetPauseCollection)).returns(T.nilable(::Stripe::QuoteCreateParams::Line::SetPauseCollection))
       }
      def set_pause_collection=(_set_pause_collection); end
      # Timestamp helper to end the underlying schedule early, based on the acompanying line's start or end date.
      sig { returns(T.nilable(String)) }
      def set_schedule_end; end
      sig { params(_set_schedule_end: T.nilable(String)).returns(T.nilable(String)) }
      def set_schedule_end=(_set_schedule_end); end
      # Details to identify the earliest timestamp where the proposed change should take effect.
      sig { returns(T.nilable(::Stripe::QuoteCreateParams::Line::StartsAt)) }
      def starts_at; end
      sig {
        params(_starts_at: T.nilable(::Stripe::QuoteCreateParams::Line::StartsAt)).returns(T.nilable(::Stripe::QuoteCreateParams::Line::StartsAt))
       }
      def starts_at=(_starts_at); end
      # Settings related to subscription trials.
      sig { returns(T.nilable(::Stripe::QuoteCreateParams::Line::TrialSettings)) }
      def trial_settings; end
      sig {
        params(_trial_settings: T.nilable(::Stripe::QuoteCreateParams::Line::TrialSettings)).returns(T.nilable(::Stripe::QuoteCreateParams::Line::TrialSettings))
       }
      def trial_settings=(_trial_settings); end
      sig {
        params(actions: T.nilable(T::Array[::Stripe::QuoteCreateParams::Line::Action]), applies_to: T.nilable(::Stripe::QuoteCreateParams::Line::AppliesTo), billing_cycle_anchor: T.nilable(String), cancel_subscription_schedule: T.nilable(::Stripe::QuoteCreateParams::Line::CancelSubscriptionSchedule), ends_at: T.nilable(::Stripe::QuoteCreateParams::Line::EndsAt), proration_behavior: T.nilable(String), set_pause_collection: T.nilable(::Stripe::QuoteCreateParams::Line::SetPauseCollection), set_schedule_end: T.nilable(String), starts_at: T.nilable(::Stripe::QuoteCreateParams::Line::StartsAt), trial_settings: T.nilable(::Stripe::QuoteCreateParams::Line::TrialSettings)).void
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
    class LineItem < ::Stripe::RequestParams
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
            returns(T.nilable(::Stripe::QuoteCreateParams::LineItem::Discount::DiscountEnd::Duration))
           }
          def duration; end
          sig {
            params(_duration: T.nilable(::Stripe::QuoteCreateParams::LineItem::Discount::DiscountEnd::Duration)).returns(T.nilable(::Stripe::QuoteCreateParams::LineItem::Discount::DiscountEnd::Duration))
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
            params(duration: T.nilable(::Stripe::QuoteCreateParams::LineItem::Discount::DiscountEnd::Duration), timestamp: T.nilable(Integer), type: String).void
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
        sig { returns(T.nilable(::Stripe::QuoteCreateParams::LineItem::Discount::DiscountEnd)) }
        def discount_end; end
        sig {
          params(_discount_end: T.nilable(::Stripe::QuoteCreateParams::LineItem::Discount::DiscountEnd)).returns(T.nilable(::Stripe::QuoteCreateParams::LineItem::Discount::DiscountEnd))
         }
        def discount_end=(_discount_end); end
        # ID of the promotion code to create a new discount for.
        sig { returns(T.nilable(String)) }
        def promotion_code; end
        sig { params(_promotion_code: T.nilable(String)).returns(T.nilable(String)) }
        def promotion_code=(_promotion_code); end
        sig {
          params(coupon: T.nilable(String), discount: T.nilable(String), discount_end: T.nilable(::Stripe::QuoteCreateParams::LineItem::Discount::DiscountEnd), promotion_code: T.nilable(String)).void
         }
        def initialize(coupon: nil, discount: nil, discount_end: nil, promotion_code: nil); end
      end
      class PriceData < ::Stripe::RequestParams
        class Recurring < ::Stripe::RequestParams
          # Specifies billing frequency. Either `day`, `week`, `month` or `year`.
          sig { returns(String) }
          def interval; end
          sig { params(_interval: String).returns(String) }
          def interval=(_interval); end
          # The number of intervals between subscription billings. For example, `interval=month` and `interval_count=3` bills every 3 months. Maximum of three years interval allowed (3 years, 36 months, or 156 weeks).
          sig { returns(T.nilable(Integer)) }
          def interval_count; end
          sig { params(_interval_count: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def interval_count=(_interval_count); end
          sig { params(interval: String, interval_count: T.nilable(Integer)).void }
          def initialize(interval: nil, interval_count: nil); end
        end
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        sig { returns(String) }
        def currency; end
        sig { params(_currency: String).returns(String) }
        def currency=(_currency); end
        # The ID of the [Product](https://docs.stripe.com/api/products) that this [Price](https://docs.stripe.com/api/prices) will belong to.
        sig { returns(String) }
        def product; end
        sig { params(_product: String).returns(String) }
        def product=(_product); end
        # The recurring components of a price such as `interval` and `interval_count`.
        sig { returns(T.nilable(::Stripe::QuoteCreateParams::LineItem::PriceData::Recurring)) }
        def recurring; end
        sig {
          params(_recurring: T.nilable(::Stripe::QuoteCreateParams::LineItem::PriceData::Recurring)).returns(T.nilable(::Stripe::QuoteCreateParams::LineItem::PriceData::Recurring))
         }
        def recurring=(_recurring); end
        # Only required if a [default tax behavior](https://docs.stripe.com/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
        sig { returns(T.nilable(String)) }
        def tax_behavior; end
        sig { params(_tax_behavior: T.nilable(String)).returns(T.nilable(String)) }
        def tax_behavior=(_tax_behavior); end
        # A positive integer in cents (or local equivalent) (or 0 for a free price) representing how much to charge.
        sig { returns(T.nilable(Integer)) }
        def unit_amount; end
        sig { params(_unit_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def unit_amount=(_unit_amount); end
        # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
        sig { returns(T.nilable(String)) }
        def unit_amount_decimal; end
        sig { params(_unit_amount_decimal: T.nilable(String)).returns(T.nilable(String)) }
        def unit_amount_decimal=(_unit_amount_decimal); end
        sig {
          params(currency: String, product: String, recurring: T.nilable(::Stripe::QuoteCreateParams::LineItem::PriceData::Recurring), tax_behavior: T.nilable(String), unit_amount: T.nilable(Integer), unit_amount_decimal: T.nilable(String)).void
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
        returns(T.nilable(T.any(String, T::Array[::Stripe::QuoteCreateParams::LineItem::Discount])))
       }
      def discounts; end
      sig {
        params(_discounts: T.nilable(T.any(String, T::Array[::Stripe::QuoteCreateParams::LineItem::Discount]))).returns(T.nilable(T.any(String, T::Array[::Stripe::QuoteCreateParams::LineItem::Discount])))
       }
      def discounts=(_discounts); end
      # The ID of the price object. One of `price` or `price_data` is required.
      sig { returns(T.nilable(String)) }
      def price; end
      sig { params(_price: T.nilable(String)).returns(T.nilable(String)) }
      def price=(_price); end
      # Data used to generate a new [Price](https://docs.stripe.com/api/prices) object inline. One of `price` or `price_data` is required.
      sig { returns(T.nilable(::Stripe::QuoteCreateParams::LineItem::PriceData)) }
      def price_data; end
      sig {
        params(_price_data: T.nilable(::Stripe::QuoteCreateParams::LineItem::PriceData)).returns(T.nilable(::Stripe::QuoteCreateParams::LineItem::PriceData))
       }
      def price_data=(_price_data); end
      # The quantity of the line item.
      sig { returns(T.nilable(Integer)) }
      def quantity; end
      sig { params(_quantity: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def quantity=(_quantity); end
      # The tax rates which apply to the line item. When set, the `default_tax_rates` on the quote do not apply to this line item.
      sig { returns(T.nilable(T.any(String, T::Array[String]))) }
      def tax_rates; end
      sig {
        params(_tax_rates: T.nilable(T.any(String, T::Array[String]))).returns(T.nilable(T.any(String, T::Array[String])))
       }
      def tax_rates=(_tax_rates); end
      sig {
        params(discounts: T.nilable(T.any(String, T::Array[::Stripe::QuoteCreateParams::LineItem::Discount])), price: T.nilable(String), price_data: T.nilable(::Stripe::QuoteCreateParams::LineItem::PriceData), quantity: T.nilable(Integer), tax_rates: T.nilable(T.any(String, T::Array[String]))).void
       }
      def initialize(
        discounts: nil,
        price: nil,
        price_data: nil,
        quantity: nil,
        tax_rates: nil
      ); end
    end
    class SubscriptionData < ::Stripe::RequestParams
      class BillOnAcceptance < ::Stripe::RequestParams
        class BillFrom < ::Stripe::RequestParams
          class LineStartsAt < ::Stripe::RequestParams
            # The ID of a quote line.
            sig { returns(T.nilable(String)) }
            def id; end
            sig { params(_id: T.nilable(String)).returns(T.nilable(String)) }
            def id=(_id); end
            # The position of the previous quote line in the `lines` array after which this line should begin. Indexes start from 0 and must be less than the index of the current line in the array.
            sig { returns(T.nilable(Integer)) }
            def index; end
            sig { params(_index: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def index=(_index); end
            sig { params(id: T.nilable(String), index: T.nilable(Integer)).void }
            def initialize(id: nil, index: nil); end
          end
          # Details of a Quote line to start the bill period from.
          sig {
            returns(T.nilable(::Stripe::QuoteCreateParams::SubscriptionData::BillOnAcceptance::BillFrom::LineStartsAt))
           }
          def line_starts_at; end
          sig {
            params(_line_starts_at: T.nilable(::Stripe::QuoteCreateParams::SubscriptionData::BillOnAcceptance::BillFrom::LineStartsAt)).returns(T.nilable(::Stripe::QuoteCreateParams::SubscriptionData::BillOnAcceptance::BillFrom::LineStartsAt))
           }
          def line_starts_at=(_line_starts_at); end
          # A precise Unix timestamp.
          sig { returns(T.nilable(Integer)) }
          def timestamp; end
          sig { params(_timestamp: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def timestamp=(_timestamp); end
          # The type of method to specify the `bill_from` time.
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          sig {
            params(line_starts_at: T.nilable(::Stripe::QuoteCreateParams::SubscriptionData::BillOnAcceptance::BillFrom::LineStartsAt), timestamp: T.nilable(Integer), type: String).void
           }
          def initialize(line_starts_at: nil, timestamp: nil, type: nil); end
        end
        class BillUntil < ::Stripe::RequestParams
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
          class LineEndsAt < ::Stripe::RequestParams
            # The ID of a quote line.
            sig { returns(T.nilable(String)) }
            def id; end
            sig { params(_id: T.nilable(String)).returns(T.nilable(String)) }
            def id=(_id); end
            # The position of the previous quote line in the `lines` array after which this line should begin. Indexes start from 0 and must be less than the index of the current line in the array.
            sig { returns(T.nilable(Integer)) }
            def index; end
            sig { params(_index: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def index=(_index); end
            sig { params(id: T.nilable(String), index: T.nilable(Integer)).void }
            def initialize(id: nil, index: nil); end
          end
          # Details of the duration over which to bill.
          sig {
            returns(T.nilable(::Stripe::QuoteCreateParams::SubscriptionData::BillOnAcceptance::BillUntil::Duration))
           }
          def duration; end
          sig {
            params(_duration: T.nilable(::Stripe::QuoteCreateParams::SubscriptionData::BillOnAcceptance::BillUntil::Duration)).returns(T.nilable(::Stripe::QuoteCreateParams::SubscriptionData::BillOnAcceptance::BillUntil::Duration))
           }
          def duration=(_duration); end
          # Details of a Quote line item from which to bill until.
          sig {
            returns(T.nilable(::Stripe::QuoteCreateParams::SubscriptionData::BillOnAcceptance::BillUntil::LineEndsAt))
           }
          def line_ends_at; end
          sig {
            params(_line_ends_at: T.nilable(::Stripe::QuoteCreateParams::SubscriptionData::BillOnAcceptance::BillUntil::LineEndsAt)).returns(T.nilable(::Stripe::QuoteCreateParams::SubscriptionData::BillOnAcceptance::BillUntil::LineEndsAt))
           }
          def line_ends_at=(_line_ends_at); end
          # A precise Unix timestamp.
          sig { returns(T.nilable(Integer)) }
          def timestamp; end
          sig { params(_timestamp: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def timestamp=(_timestamp); end
          # The type of method to specify the `bill_until` time.
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          sig {
            params(duration: T.nilable(::Stripe::QuoteCreateParams::SubscriptionData::BillOnAcceptance::BillUntil::Duration), line_ends_at: T.nilable(::Stripe::QuoteCreateParams::SubscriptionData::BillOnAcceptance::BillUntil::LineEndsAt), timestamp: T.nilable(Integer), type: String).void
           }
          def initialize(duration: nil, line_ends_at: nil, timestamp: nil, type: nil); end
        end
        # The start of the period to bill from when the Quote is accepted.
        sig {
          returns(T.nilable(::Stripe::QuoteCreateParams::SubscriptionData::BillOnAcceptance::BillFrom))
         }
        def bill_from; end
        sig {
          params(_bill_from: T.nilable(::Stripe::QuoteCreateParams::SubscriptionData::BillOnAcceptance::BillFrom)).returns(T.nilable(::Stripe::QuoteCreateParams::SubscriptionData::BillOnAcceptance::BillFrom))
         }
        def bill_from=(_bill_from); end
        # The end of the period to bill until when the Quote is accepted.
        sig {
          returns(T.nilable(::Stripe::QuoteCreateParams::SubscriptionData::BillOnAcceptance::BillUntil))
         }
        def bill_until; end
        sig {
          params(_bill_until: T.nilable(::Stripe::QuoteCreateParams::SubscriptionData::BillOnAcceptance::BillUntil)).returns(T.nilable(::Stripe::QuoteCreateParams::SubscriptionData::BillOnAcceptance::BillUntil))
         }
        def bill_until=(_bill_until); end
        sig {
          params(bill_from: T.nilable(::Stripe::QuoteCreateParams::SubscriptionData::BillOnAcceptance::BillFrom), bill_until: T.nilable(::Stripe::QuoteCreateParams::SubscriptionData::BillOnAcceptance::BillUntil)).void
         }
        def initialize(bill_from: nil, bill_until: nil); end
      end
      class BillingMode < ::Stripe::RequestParams
        class Flexible < ::Stripe::RequestParams
          # Controls how invoices and invoice items display proration amounts and discount amounts.
          sig { returns(T.nilable(String)) }
          def proration_discounts; end
          sig { params(_proration_discounts: T.nilable(String)).returns(T.nilable(String)) }
          def proration_discounts=(_proration_discounts); end
          sig { params(proration_discounts: T.nilable(String)).void }
          def initialize(proration_discounts: nil); end
        end
        # Configure behavior for flexible billing mode.
        sig {
          returns(T.nilable(::Stripe::QuoteCreateParams::SubscriptionData::BillingMode::Flexible))
         }
        def flexible; end
        sig {
          params(_flexible: T.nilable(::Stripe::QuoteCreateParams::SubscriptionData::BillingMode::Flexible)).returns(T.nilable(::Stripe::QuoteCreateParams::SubscriptionData::BillingMode::Flexible))
         }
        def flexible=(_flexible); end
        # Controls the calculation and orchestration of prorations and invoices for subscriptions. If no value is passed, the default is `flexible`.
        sig { returns(String) }
        def type; end
        sig { params(_type: String).returns(String) }
        def type=(_type); end
        sig {
          params(flexible: T.nilable(::Stripe::QuoteCreateParams::SubscriptionData::BillingMode::Flexible), type: String).void
         }
        def initialize(flexible: nil, type: nil); end
      end
      class Prebilling < ::Stripe::RequestParams
        # This is used to determine the number of billing cycles to prebill.
        sig { returns(Integer) }
        def iterations; end
        sig { params(_iterations: Integer).returns(Integer) }
        def iterations=(_iterations); end
        sig { params(iterations: Integer).void }
        def initialize(iterations: nil); end
      end
      # Describes the period to bill for upon accepting the quote.
      sig { returns(T.nilable(::Stripe::QuoteCreateParams::SubscriptionData::BillOnAcceptance)) }
      def bill_on_acceptance; end
      sig {
        params(_bill_on_acceptance: T.nilable(::Stripe::QuoteCreateParams::SubscriptionData::BillOnAcceptance)).returns(T.nilable(::Stripe::QuoteCreateParams::SubscriptionData::BillOnAcceptance))
       }
      def bill_on_acceptance=(_bill_on_acceptance); end
      # Configures when the subscription schedule generates prorations for phase transitions. Possible values are `prorate_on_next_phase` or `prorate_up_front` with the default being `prorate_on_next_phase`. `prorate_on_next_phase` will apply phase changes and generate prorations at transition time. `prorate_up_front` will bill for all phases within the current billing cycle up front.
      sig { returns(T.nilable(String)) }
      def billing_behavior; end
      sig { params(_billing_behavior: T.nilable(String)).returns(T.nilable(String)) }
      def billing_behavior=(_billing_behavior); end
      # When specified as `reset`, the subscription will always start a new billing period when the quote is accepted.
      sig { returns(T.nilable(String)) }
      def billing_cycle_anchor; end
      sig { params(_billing_cycle_anchor: T.nilable(String)).returns(T.nilable(String)) }
      def billing_cycle_anchor=(_billing_cycle_anchor); end
      # Controls how prorations and invoices for subscriptions are calculated and orchestrated.
      sig { returns(T.nilable(::Stripe::QuoteCreateParams::SubscriptionData::BillingMode)) }
      def billing_mode; end
      sig {
        params(_billing_mode: T.nilable(::Stripe::QuoteCreateParams::SubscriptionData::BillingMode)).returns(T.nilable(::Stripe::QuoteCreateParams::SubscriptionData::BillingMode))
       }
      def billing_mode=(_billing_mode); end
      # The subscription's description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
      sig { returns(T.nilable(String)) }
      def description; end
      sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
      def description=(_description); end
      # When creating a new subscription, the date of which the subscription schedule will start after the quote is accepted. When updating a subscription, the date of which the subscription will be updated using a subscription schedule. The special value `current_period_end` can be provided to update a subscription at the end of its current period. The `effective_date` is ignored if it is in the past when the quote is accepted.
      sig { returns(T.nilable(T.any(String, T.any(String, Integer)))) }
      def effective_date; end
      sig {
        params(_effective_date: T.nilable(T.any(String, T.any(String, Integer)))).returns(T.nilable(T.any(String, T.any(String, Integer))))
       }
      def effective_date=(_effective_date); end
      # Behavior of the subscription schedule and underlying subscription when it ends.
      sig { returns(T.nilable(String)) }
      def end_behavior; end
      sig { params(_end_behavior: T.nilable(String)).returns(T.nilable(String)) }
      def end_behavior=(_end_behavior); end
      # The id of a subscription that the quote will update. By default, the quote will contain the state of the subscription (such as line items, collection method and billing thresholds) unless overridden.
      sig { returns(T.nilable(String)) }
      def from_subscription; end
      sig { params(_from_subscription: T.nilable(String)).returns(T.nilable(String)) }
      def from_subscription=(_from_subscription); end
      # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that will set metadata on the subscription or subscription schedule when the quote is accepted. If a recurring price is included in `line_items`, this field will be passed to the resulting subscription's `metadata` field. If `subscription_data.effective_date` is used, this field will be passed to the resulting subscription schedule's `phases.metadata` field. Unlike object-level metadata, this field is declarative. Updates will clear prior values.
      sig { returns(T.nilable(T::Hash[String, String])) }
      def metadata; end
      sig {
        params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
       }
      def metadata=(_metadata); end
      # If specified, the invoicing for the given billing cycle iterations will be processed when the quote is accepted. Cannot be used with `effective_date`.
      sig {
        returns(T.nilable(T.any(String, ::Stripe::QuoteCreateParams::SubscriptionData::Prebilling)))
       }
      def prebilling; end
      sig {
        params(_prebilling: T.nilable(T.any(String, ::Stripe::QuoteCreateParams::SubscriptionData::Prebilling))).returns(T.nilable(T.any(String, ::Stripe::QuoteCreateParams::SubscriptionData::Prebilling)))
       }
      def prebilling=(_prebilling); end
      # Determines how to handle [prorations](https://docs.stripe.com/subscriptions/billing-cycle#prorations). When creating a subscription, valid values are `create_prorations` or `none`.
      #
      # When updating a subscription, valid values are `create_prorations`, `none`, or `always_invoice`.
      #
      # Passing `create_prorations` will cause proration invoice items to be created when applicable. These proration items will only be invoiced immediately under [certain conditions](https://docs.stripe.com/subscriptions/upgrading-downgrading#immediate-payment). In order to always invoice immediately for prorations, pass `always_invoice`.
      #
      # Prorations can be disabled by passing `none`.
      sig { returns(T.nilable(String)) }
      def proration_behavior; end
      sig { params(_proration_behavior: T.nilable(String)).returns(T.nilable(String)) }
      def proration_behavior=(_proration_behavior); end
      # Integer representing the number of trial period days before the customer is charged for the first time.
      sig { returns(T.nilable(T.any(String, Integer))) }
      def trial_period_days; end
      sig {
        params(_trial_period_days: T.nilable(T.any(String, Integer))).returns(T.nilable(T.any(String, Integer)))
       }
      def trial_period_days=(_trial_period_days); end
      sig {
        params(bill_on_acceptance: T.nilable(::Stripe::QuoteCreateParams::SubscriptionData::BillOnAcceptance), billing_behavior: T.nilable(String), billing_cycle_anchor: T.nilable(String), billing_mode: T.nilable(::Stripe::QuoteCreateParams::SubscriptionData::BillingMode), description: T.nilable(String), effective_date: T.nilable(T.any(String, T.any(String, Integer))), end_behavior: T.nilable(String), from_subscription: T.nilable(String), metadata: T.nilable(T::Hash[String, String]), prebilling: T.nilable(T.any(String, ::Stripe::QuoteCreateParams::SubscriptionData::Prebilling)), proration_behavior: T.nilable(String), trial_period_days: T.nilable(T.any(String, Integer))).void
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
    class SubscriptionDataOverride < ::Stripe::RequestParams
      class AppliesTo < ::Stripe::RequestParams
        # A custom string that identifies a new subscription schedule being created upon quote acceptance. All quote lines with the same `new_reference` field will be applied to the creation of a new subscription schedule.
        sig { returns(T.nilable(String)) }
        def new_reference; end
        sig { params(_new_reference: T.nilable(String)).returns(T.nilable(String)) }
        def new_reference=(_new_reference); end
        # The ID of the schedule the line applies to.
        sig { returns(T.nilable(String)) }
        def subscription_schedule; end
        sig { params(_subscription_schedule: T.nilable(String)).returns(T.nilable(String)) }
        def subscription_schedule=(_subscription_schedule); end
        # Describes whether the quote line is affecting a new schedule or an existing schedule.
        sig { returns(String) }
        def type; end
        sig { params(_type: String).returns(String) }
        def type=(_type); end
        sig {
          params(new_reference: T.nilable(String), subscription_schedule: T.nilable(String), type: String).void
         }
        def initialize(new_reference: nil, subscription_schedule: nil, type: nil); end
      end
      class BillOnAcceptance < ::Stripe::RequestParams
        class BillFrom < ::Stripe::RequestParams
          class LineStartsAt < ::Stripe::RequestParams
            # The ID of a quote line.
            sig { returns(T.nilable(String)) }
            def id; end
            sig { params(_id: T.nilable(String)).returns(T.nilable(String)) }
            def id=(_id); end
            # The position of the previous quote line in the `lines` array after which this line should begin. Indexes start from 0 and must be less than the index of the current line in the array.
            sig { returns(T.nilable(Integer)) }
            def index; end
            sig { params(_index: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def index=(_index); end
            sig { params(id: T.nilable(String), index: T.nilable(Integer)).void }
            def initialize(id: nil, index: nil); end
          end
          # Details of a Quote line to start the bill period from.
          sig {
            returns(T.nilable(::Stripe::QuoteCreateParams::SubscriptionDataOverride::BillOnAcceptance::BillFrom::LineStartsAt))
           }
          def line_starts_at; end
          sig {
            params(_line_starts_at: T.nilable(::Stripe::QuoteCreateParams::SubscriptionDataOverride::BillOnAcceptance::BillFrom::LineStartsAt)).returns(T.nilable(::Stripe::QuoteCreateParams::SubscriptionDataOverride::BillOnAcceptance::BillFrom::LineStartsAt))
           }
          def line_starts_at=(_line_starts_at); end
          # A precise Unix timestamp.
          sig { returns(T.nilable(Integer)) }
          def timestamp; end
          sig { params(_timestamp: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def timestamp=(_timestamp); end
          # The type of method to specify the `bill_from` time.
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          sig {
            params(line_starts_at: T.nilable(::Stripe::QuoteCreateParams::SubscriptionDataOverride::BillOnAcceptance::BillFrom::LineStartsAt), timestamp: T.nilable(Integer), type: String).void
           }
          def initialize(line_starts_at: nil, timestamp: nil, type: nil); end
        end
        class BillUntil < ::Stripe::RequestParams
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
          class LineEndsAt < ::Stripe::RequestParams
            # The ID of a quote line.
            sig { returns(T.nilable(String)) }
            def id; end
            sig { params(_id: T.nilable(String)).returns(T.nilable(String)) }
            def id=(_id); end
            # The position of the previous quote line in the `lines` array after which this line should begin. Indexes start from 0 and must be less than the index of the current line in the array.
            sig { returns(T.nilable(Integer)) }
            def index; end
            sig { params(_index: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def index=(_index); end
            sig { params(id: T.nilable(String), index: T.nilable(Integer)).void }
            def initialize(id: nil, index: nil); end
          end
          # Details of the duration over which to bill.
          sig {
            returns(T.nilable(::Stripe::QuoteCreateParams::SubscriptionDataOverride::BillOnAcceptance::BillUntil::Duration))
           }
          def duration; end
          sig {
            params(_duration: T.nilable(::Stripe::QuoteCreateParams::SubscriptionDataOverride::BillOnAcceptance::BillUntil::Duration)).returns(T.nilable(::Stripe::QuoteCreateParams::SubscriptionDataOverride::BillOnAcceptance::BillUntil::Duration))
           }
          def duration=(_duration); end
          # Details of a Quote line item from which to bill until.
          sig {
            returns(T.nilable(::Stripe::QuoteCreateParams::SubscriptionDataOverride::BillOnAcceptance::BillUntil::LineEndsAt))
           }
          def line_ends_at; end
          sig {
            params(_line_ends_at: T.nilable(::Stripe::QuoteCreateParams::SubscriptionDataOverride::BillOnAcceptance::BillUntil::LineEndsAt)).returns(T.nilable(::Stripe::QuoteCreateParams::SubscriptionDataOverride::BillOnAcceptance::BillUntil::LineEndsAt))
           }
          def line_ends_at=(_line_ends_at); end
          # A precise Unix timestamp.
          sig { returns(T.nilable(Integer)) }
          def timestamp; end
          sig { params(_timestamp: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def timestamp=(_timestamp); end
          # The type of method to specify the `bill_until` time.
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          sig {
            params(duration: T.nilable(::Stripe::QuoteCreateParams::SubscriptionDataOverride::BillOnAcceptance::BillUntil::Duration), line_ends_at: T.nilable(::Stripe::QuoteCreateParams::SubscriptionDataOverride::BillOnAcceptance::BillUntil::LineEndsAt), timestamp: T.nilable(Integer), type: String).void
           }
          def initialize(duration: nil, line_ends_at: nil, timestamp: nil, type: nil); end
        end
        # The start of the period to bill from when the Quote is accepted.
        sig {
          returns(T.nilable(::Stripe::QuoteCreateParams::SubscriptionDataOverride::BillOnAcceptance::BillFrom))
         }
        def bill_from; end
        sig {
          params(_bill_from: T.nilable(::Stripe::QuoteCreateParams::SubscriptionDataOverride::BillOnAcceptance::BillFrom)).returns(T.nilable(::Stripe::QuoteCreateParams::SubscriptionDataOverride::BillOnAcceptance::BillFrom))
         }
        def bill_from=(_bill_from); end
        # The end of the period to bill until when the Quote is accepted.
        sig {
          returns(T.nilable(::Stripe::QuoteCreateParams::SubscriptionDataOverride::BillOnAcceptance::BillUntil))
         }
        def bill_until; end
        sig {
          params(_bill_until: T.nilable(::Stripe::QuoteCreateParams::SubscriptionDataOverride::BillOnAcceptance::BillUntil)).returns(T.nilable(::Stripe::QuoteCreateParams::SubscriptionDataOverride::BillOnAcceptance::BillUntil))
         }
        def bill_until=(_bill_until); end
        sig {
          params(bill_from: T.nilable(::Stripe::QuoteCreateParams::SubscriptionDataOverride::BillOnAcceptance::BillFrom), bill_until: T.nilable(::Stripe::QuoteCreateParams::SubscriptionDataOverride::BillOnAcceptance::BillUntil)).void
         }
        def initialize(bill_from: nil, bill_until: nil); end
      end
      # Whether the override applies to an existing Subscription Schedule or a new Subscription Schedule.
      sig { returns(::Stripe::QuoteCreateParams::SubscriptionDataOverride::AppliesTo) }
      def applies_to; end
      sig {
        params(_applies_to: ::Stripe::QuoteCreateParams::SubscriptionDataOverride::AppliesTo).returns(::Stripe::QuoteCreateParams::SubscriptionDataOverride::AppliesTo)
       }
      def applies_to=(_applies_to); end
      # Describes the period to bill for upon accepting the quote.
      sig {
        returns(T.nilable(::Stripe::QuoteCreateParams::SubscriptionDataOverride::BillOnAcceptance))
       }
      def bill_on_acceptance; end
      sig {
        params(_bill_on_acceptance: T.nilable(::Stripe::QuoteCreateParams::SubscriptionDataOverride::BillOnAcceptance)).returns(T.nilable(::Stripe::QuoteCreateParams::SubscriptionDataOverride::BillOnAcceptance))
       }
      def bill_on_acceptance=(_bill_on_acceptance); end
      # Configures when the subscription schedule generates prorations for phase transitions. Possible values are `prorate_on_next_phase` or `prorate_up_front` with the default being `prorate_on_next_phase`. `prorate_on_next_phase` will apply phase changes and generate prorations at transition time. `prorate_up_front` will bill for all phases within the current billing cycle up front.
      sig { returns(T.nilable(String)) }
      def billing_behavior; end
      sig { params(_billing_behavior: T.nilable(String)).returns(T.nilable(String)) }
      def billing_behavior=(_billing_behavior); end
      # The customer the Subscription Data override applies to. This is only relevant when `applies_to.type=new_reference`.
      sig { returns(T.nilable(String)) }
      def customer; end
      sig { params(_customer: T.nilable(String)).returns(T.nilable(String)) }
      def customer=(_customer); end
      # The subscription's description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
      sig { returns(T.nilable(String)) }
      def description; end
      sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
      def description=(_description); end
      # Behavior of the subscription schedule and underlying subscription when it ends.
      sig { returns(T.nilable(String)) }
      def end_behavior; end
      sig { params(_end_behavior: T.nilable(String)).returns(T.nilable(String)) }
      def end_behavior=(_end_behavior); end
      # Determines how to handle [prorations](https://docs.stripe.com/subscriptions/billing-cycle#prorations). When creating a subscription, valid values are `create_prorations` or `none`.
      #
      # When updating a subscription, valid values are `create_prorations`, `none`, or `always_invoice`.
      #
      # Passing `create_prorations` will cause proration invoice items to be created when applicable. These proration items will only be invoiced immediately under [certain conditions](https://docs.stripe.com/subscriptions/upgrading-downgrading#immediate-payment). In order to always invoice immediately for prorations, pass `always_invoice`.
      #
      # Prorations can be disabled by passing `none`.
      sig { returns(T.nilable(String)) }
      def proration_behavior; end
      sig { params(_proration_behavior: T.nilable(String)).returns(T.nilable(String)) }
      def proration_behavior=(_proration_behavior); end
      sig {
        params(applies_to: ::Stripe::QuoteCreateParams::SubscriptionDataOverride::AppliesTo, bill_on_acceptance: T.nilable(::Stripe::QuoteCreateParams::SubscriptionDataOverride::BillOnAcceptance), billing_behavior: T.nilable(String), customer: T.nilable(String), description: T.nilable(String), end_behavior: T.nilable(String), proration_behavior: T.nilable(String)).void
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
    class TransferData < ::Stripe::RequestParams
      # The amount that will be transferred automatically when the invoice is paid. If no amount is set, the full amount is transferred. There cannot be any line items with recurring prices when using this field.
      sig { returns(T.nilable(Integer)) }
      def amount; end
      sig { params(_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def amount=(_amount); end
      # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the destination account. By default, the entire amount is transferred to the destination. There must be at least 1 line item with a recurring price to use this field.
      sig { returns(T.nilable(Float)) }
      def amount_percent; end
      sig { params(_amount_percent: T.nilable(Float)).returns(T.nilable(Float)) }
      def amount_percent=(_amount_percent); end
      # ID of an existing, connected Stripe account.
      sig { returns(String) }
      def destination; end
      sig { params(_destination: String).returns(String) }
      def destination=(_destination); end
      sig {
        params(amount: T.nilable(Integer), amount_percent: T.nilable(Float), destination: String).void
       }
      def initialize(amount: nil, amount_percent: nil, destination: nil); end
    end
    # Set to true to allow quote lines to have `starts_at` in the past if collection is paused between `starts_at` and now.
    sig { returns(T.nilable(T::Boolean)) }
    def allow_backdated_lines; end
    sig { params(_allow_backdated_lines: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
    def allow_backdated_lines=(_allow_backdated_lines); end
    # The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. There cannot be any line items with recurring prices when using this field.
    sig { returns(T.nilable(T.any(String, Integer))) }
    def application_fee_amount; end
    sig {
      params(_application_fee_amount: T.nilable(T.any(String, Integer))).returns(T.nilable(T.any(String, Integer)))
     }
    def application_fee_amount=(_application_fee_amount); end
    # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account. There must be at least 1 line item with a recurring price to use this field.
    sig { returns(T.nilable(T.any(String, Float))) }
    def application_fee_percent; end
    sig {
      params(_application_fee_percent: T.nilable(T.any(String, Float))).returns(T.nilable(T.any(String, Float)))
     }
    def application_fee_percent=(_application_fee_percent); end
    # Settings for automatic tax lookup for this quote and resulting invoices and subscriptions.
    sig { returns(T.nilable(::Stripe::QuoteCreateParams::AutomaticTax)) }
    def automatic_tax; end
    sig {
      params(_automatic_tax: T.nilable(::Stripe::QuoteCreateParams::AutomaticTax)).returns(T.nilable(::Stripe::QuoteCreateParams::AutomaticTax))
     }
    def automatic_tax=(_automatic_tax); end
    # Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay invoices at the end of the subscription cycle or at invoice finalization using the default payment method attached to the subscription or customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions and mark the subscription as `active`. Defaults to `charge_automatically`.
    sig { returns(T.nilable(String)) }
    def collection_method; end
    sig { params(_collection_method: T.nilable(String)).returns(T.nilable(String)) }
    def collection_method=(_collection_method); end
    # The customer for which this quote belongs to. A customer is required before finalizing the quote. Once specified, it cannot be changed.
    sig { returns(T.nilable(String)) }
    def customer; end
    sig { params(_customer: T.nilable(String)).returns(T.nilable(String)) }
    def customer=(_customer); end
    # The account for which this quote belongs to. A customer or account is required before finalizing the quote. Once specified, it cannot be changed.
    sig { returns(T.nilable(String)) }
    def customer_account; end
    sig { params(_customer_account: T.nilable(String)).returns(T.nilable(String)) }
    def customer_account=(_customer_account); end
    # The tax rates that will apply to any line item that does not have `tax_rates` set.
    sig { returns(T.nilable(T.any(String, T::Array[String]))) }
    def default_tax_rates; end
    sig {
      params(_default_tax_rates: T.nilable(T.any(String, T::Array[String]))).returns(T.nilable(T.any(String, T::Array[String])))
     }
    def default_tax_rates=(_default_tax_rates); end
    # A description that will be displayed on the quote PDF. If no value is passed, the default description configured in your [quote template settings](https://dashboard.stripe.com/settings/billing/quote) will be used.
    sig { returns(T.nilable(String)) }
    def description; end
    sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
    def description=(_description); end
    # The discounts applied to the quote.
    sig { returns(T.nilable(T.any(String, T::Array[::Stripe::QuoteCreateParams::Discount]))) }
    def discounts; end
    sig {
      params(_discounts: T.nilable(T.any(String, T::Array[::Stripe::QuoteCreateParams::Discount]))).returns(T.nilable(T.any(String, T::Array[::Stripe::QuoteCreateParams::Discount])))
     }
    def discounts=(_discounts); end
    # Specifies which fields in the response should be expanded.
    sig { returns(T.nilable(T::Array[String])) }
    def expand; end
    sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
    def expand=(_expand); end
    # A future timestamp on which the quote will be canceled if in `open` or `draft` status. Measured in seconds since the Unix epoch. If no value is passed, the default expiration date configured in your [quote template settings](https://dashboard.stripe.com/settings/billing/quote) will be used.
    sig { returns(T.nilable(Integer)) }
    def expires_at; end
    sig { params(_expires_at: T.nilable(Integer)).returns(T.nilable(Integer)) }
    def expires_at=(_expires_at); end
    # A footer that will be displayed on the quote PDF. If no value is passed, the default footer configured in your [quote template settings](https://dashboard.stripe.com/settings/billing/quote) will be used.
    sig { returns(T.nilable(String)) }
    def footer; end
    sig { params(_footer: T.nilable(String)).returns(T.nilable(String)) }
    def footer=(_footer); end
    # Clone an existing quote. The new quote will be created in `status=draft`. When using this parameter, you cannot specify any other parameters except for `expires_at`.
    sig { returns(T.nilable(::Stripe::QuoteCreateParams::FromQuote)) }
    def from_quote; end
    sig {
      params(_from_quote: T.nilable(::Stripe::QuoteCreateParams::FromQuote)).returns(T.nilable(::Stripe::QuoteCreateParams::FromQuote))
     }
    def from_quote=(_from_quote); end
    # A header that will be displayed on the quote PDF. If no value is passed, the default header configured in your [quote template settings](https://dashboard.stripe.com/settings/billing/quote) will be used.
    sig { returns(T.nilable(String)) }
    def header; end
    sig { params(_header: T.nilable(String)).returns(T.nilable(String)) }
    def header=(_header); end
    # All invoices will be billed using the specified settings.
    sig { returns(T.nilable(::Stripe::QuoteCreateParams::InvoiceSettings)) }
    def invoice_settings; end
    sig {
      params(_invoice_settings: T.nilable(::Stripe::QuoteCreateParams::InvoiceSettings)).returns(T.nilable(::Stripe::QuoteCreateParams::InvoiceSettings))
     }
    def invoice_settings=(_invoice_settings); end
    # A list of line items the customer is being quoted for. Each line item includes information about the product, the quantity, and the resulting cost.
    sig { returns(T.nilable(T::Array[::Stripe::QuoteCreateParams::LineItem])) }
    def line_items; end
    sig {
      params(_line_items: T.nilable(T::Array[::Stripe::QuoteCreateParams::LineItem])).returns(T.nilable(T::Array[::Stripe::QuoteCreateParams::LineItem]))
     }
    def line_items=(_line_items); end
    # A list of [quote lines](https://docs.stripe.com/api/quote_lines) on the quote. These lines describe changes, in the order provided, that will be used to create new subscription schedules or update existing subscription schedules when the quote is accepted.
    sig { returns(T.nilable(T::Array[::Stripe::QuoteCreateParams::Line])) }
    def lines; end
    sig {
      params(_lines: T.nilable(T::Array[::Stripe::QuoteCreateParams::Line])).returns(T.nilable(T::Array[::Stripe::QuoteCreateParams::Line]))
     }
    def lines=(_lines); end
    # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    sig { returns(T.nilable(T::Hash[String, String])) }
    def metadata; end
    sig {
      params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
     }
    def metadata=(_metadata); end
    # The account on behalf of which to charge.
    sig { returns(T.nilable(String)) }
    def on_behalf_of; end
    sig { params(_on_behalf_of: T.nilable(String)).returns(T.nilable(String)) }
    def on_behalf_of=(_on_behalf_of); end
    # When creating a subscription or subscription schedule, the specified configuration data will be used. There must be at least one line item with a recurring price for a subscription or subscription schedule to be created. A subscription schedule is created if `subscription_data[effective_date]` is present and in the future, otherwise a subscription is created.
    sig { returns(T.nilable(::Stripe::QuoteCreateParams::SubscriptionData)) }
    def subscription_data; end
    sig {
      params(_subscription_data: T.nilable(::Stripe::QuoteCreateParams::SubscriptionData)).returns(T.nilable(::Stripe::QuoteCreateParams::SubscriptionData))
     }
    def subscription_data=(_subscription_data); end
    # List representing overrides for `subscription_data` configurations for specific subscription schedules.
    sig { returns(T.nilable(T::Array[::Stripe::QuoteCreateParams::SubscriptionDataOverride])) }
    def subscription_data_overrides; end
    sig {
      params(_subscription_data_overrides: T.nilable(T::Array[::Stripe::QuoteCreateParams::SubscriptionDataOverride])).returns(T.nilable(T::Array[::Stripe::QuoteCreateParams::SubscriptionDataOverride]))
     }
    def subscription_data_overrides=(_subscription_data_overrides); end
    # ID of the test clock to attach to the quote.
    sig { returns(T.nilable(String)) }
    def test_clock; end
    sig { params(_test_clock: T.nilable(String)).returns(T.nilable(String)) }
    def test_clock=(_test_clock); end
    # The data with which to automatically create a Transfer for each of the invoices.
    sig { returns(T.nilable(T.any(String, ::Stripe::QuoteCreateParams::TransferData))) }
    def transfer_data; end
    sig {
      params(_transfer_data: T.nilable(T.any(String, ::Stripe::QuoteCreateParams::TransferData))).returns(T.nilable(T.any(String, ::Stripe::QuoteCreateParams::TransferData)))
     }
    def transfer_data=(_transfer_data); end
    sig {
      params(allow_backdated_lines: T.nilable(T::Boolean), application_fee_amount: T.nilable(T.any(String, Integer)), application_fee_percent: T.nilable(T.any(String, Float)), automatic_tax: T.nilable(::Stripe::QuoteCreateParams::AutomaticTax), collection_method: T.nilable(String), customer: T.nilable(String), customer_account: T.nilable(String), default_tax_rates: T.nilable(T.any(String, T::Array[String])), description: T.nilable(String), discounts: T.nilable(T.any(String, T::Array[::Stripe::QuoteCreateParams::Discount])), expand: T.nilable(T::Array[String]), expires_at: T.nilable(Integer), footer: T.nilable(String), from_quote: T.nilable(::Stripe::QuoteCreateParams::FromQuote), header: T.nilable(String), invoice_settings: T.nilable(::Stripe::QuoteCreateParams::InvoiceSettings), line_items: T.nilable(T::Array[::Stripe::QuoteCreateParams::LineItem]), lines: T.nilable(T::Array[::Stripe::QuoteCreateParams::Line]), metadata: T.nilable(T::Hash[String, String]), on_behalf_of: T.nilable(String), subscription_data: T.nilable(::Stripe::QuoteCreateParams::SubscriptionData), subscription_data_overrides: T.nilable(T::Array[::Stripe::QuoteCreateParams::SubscriptionDataOverride]), test_clock: T.nilable(String), transfer_data: T.nilable(T.any(String, ::Stripe::QuoteCreateParams::TransferData))).void
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
end