# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # Subscription items allow you to create customer subscriptions with more than
  # one plan, making it easy to represent complex billing relationships.
  class SubscriptionItem < APIResource
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    attr_reader :created
    # The end time of this subscription item's current billing period.
    sig { returns(Integer) }
    attr_reader :current_period_end
    # The start time of this subscription item's current billing period.
    sig { returns(Integer) }
    attr_reader :current_period_start
    # The discounts applied to the subscription item. Subscription item discounts are applied before subscription discounts. Use `expand[]=discounts` to expand each discount.
    sig { returns(T::Array[T.any(String, Stripe::Discount)]) }
    attr_reader :discounts
    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    sig { returns(T::Hash[String, String]) }
    attr_reader :metadata
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object
    # You can now model subscriptions more flexibly using the [Prices API](https://stripe.com/docs/api#prices). It replaces the Plans API and is backwards compatible to simplify your migration.
    #
    # Plans define the base price, currency, and billing cycle for recurring purchases of products.
    # [Products](https://stripe.com/docs/api#products) help you track inventory or provisioning, and plans help you track pricing. Different physical goods or levels of service should be represented by products, and pricing options should be represented by plans. This approach lets you change prices without having to change your provisioning scheme.
    #
    # For example, you might have a single "gold" product that has plans for $10/month, $100/year, €9/month, and €90/year.
    #
    # Related guides: [Set up a subscription](https://stripe.com/docs/billing/subscriptions/set-up-subscription) and more about [products and prices](https://stripe.com/docs/products-prices/overview).
    sig { returns(Stripe::Plan) }
    attr_reader :plan
    # Prices define the unit cost, currency, and (optional) billing cycle for both recurring and one-time purchases of products.
    # [Products](https://stripe.com/docs/api#products) help you track inventory or provisioning, and prices help you track payment terms. Different physical goods or levels of service should be represented by products, and pricing options should be represented by prices. This approach lets you change prices without having to change your provisioning scheme.
    #
    # For example, you might have a single "gold" product that has prices for $10/month, $100/year, and €9 once.
    #
    # Related guides: [Set up a subscription](https://stripe.com/docs/billing/subscriptions/set-up-subscription), [create an invoice](https://stripe.com/docs/billing/invoices/create), and more about [products and prices](https://stripe.com/docs/products-prices/overview).
    sig { returns(Stripe::Price) }
    attr_reader :price
    # The [quantity](https://stripe.com/docs/subscriptions/quantities) of the plan to which the customer should be subscribed.
    sig { returns(Integer) }
    attr_reader :quantity
    # The `subscription` this `subscription_item` belongs to.
    sig { returns(String) }
    attr_reader :subscription
    # The tax rates which apply to this `subscription_item`. When set, the `default_tax_rates` on the subscription do not apply to this `subscription_item`.
    sig { returns(T.nilable(T::Array[Stripe::TaxRate])) }
    attr_reader :tax_rates
    # Always true for a deleted object
    sig { returns(T::Boolean) }
    attr_reader :deleted
    class DeleteParams < Stripe::RequestParams
      # Delete all usage for the given subscription item. Allowed only when the current plan's `usage_type` is `metered`.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :clear_usage
      # Determines how to handle [prorations](https://stripe.com/docs/billing/subscriptions/prorations) when the billing cycle changes (e.g., when switching plans, resetting `billing_cycle_anchor=now`, or starting a trial), or if an item's `quantity` changes. The default value is `create_prorations`.
      sig { returns(T.nilable(String)) }
      attr_accessor :proration_behavior
      # If set, the proration will be calculated as though the subscription was updated at the given time. This can be used to apply the same proration that was previewed with the [upcoming invoice](https://stripe.com/docs/api#retrieve_customer_invoice) endpoint.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :proration_date
      sig {
        params(clear_usage: T.nilable(T::Boolean), proration_behavior: T.nilable(String), proration_date: T.nilable(Integer)).void
       }
      def initialize(clear_usage: nil, proration_behavior: nil, proration_date: nil); end
    end
    class UpdateParams < Stripe::RequestParams
      class Discount < Stripe::RequestParams
        # ID of the coupon to create a new discount for.
        sig { returns(T.nilable(String)) }
        attr_accessor :coupon
        # ID of an existing discount on the object (or one of its ancestors) to reuse.
        sig { returns(T.nilable(String)) }
        attr_accessor :discount
        # ID of the promotion code to create a new discount for.
        sig { returns(T.nilable(String)) }
        attr_accessor :promotion_code
        sig {
          params(coupon: T.nilable(String), discount: T.nilable(String), promotion_code: T.nilable(String)).void
         }
        def initialize(coupon: nil, discount: nil, promotion_code: nil); end
      end
      class PriceData < Stripe::RequestParams
        class Recurring < Stripe::RequestParams
          # Specifies billing frequency. Either `day`, `week`, `month` or `year`.
          sig { returns(String) }
          attr_accessor :interval
          # The number of intervals between subscription billings. For example, `interval=month` and `interval_count=3` bills every 3 months. Maximum of three years interval allowed (3 years, 36 months, or 156 weeks).
          sig { returns(T.nilable(Integer)) }
          attr_accessor :interval_count
          sig { params(interval: String, interval_count: T.nilable(Integer)).void }
          def initialize(interval: nil, interval_count: nil); end
        end
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        sig { returns(String) }
        attr_accessor :currency
        # The ID of the [Product](https://docs.stripe.com/api/products) that this [Price](https://docs.stripe.com/api/prices) will belong to.
        sig { returns(String) }
        attr_accessor :product
        # The recurring components of a price such as `interval` and `interval_count`.
        sig { returns(::Stripe::SubscriptionItem::UpdateParams::PriceData::Recurring) }
        attr_accessor :recurring
        # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
        sig { returns(T.nilable(String)) }
        attr_accessor :tax_behavior
        # A positive integer in cents (or local equivalent) (or 0 for a free price) representing how much to charge.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :unit_amount
        # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
        sig { returns(T.nilable(String)) }
        attr_accessor :unit_amount_decimal
        sig {
          params(currency: String, product: String, recurring: ::Stripe::SubscriptionItem::UpdateParams::PriceData::Recurring, tax_behavior: T.nilable(String), unit_amount: T.nilable(Integer), unit_amount_decimal: T.nilable(String)).void
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
      # The coupons to redeem into discounts for the subscription item.
      sig {
        returns(T.nilable(T.nilable(T.any(String, T::Array[::Stripe::SubscriptionItem::UpdateParams::Discount]))))
       }
      attr_accessor :discounts
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T.nilable(T.any(String, T::Hash[String, String])))) }
      attr_accessor :metadata
      # Indicates if a customer is on or off-session while an invoice payment is attempted. Defaults to `false` (on-session).
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :off_session
      # Use `allow_incomplete` to transition the subscription to `status=past_due` if a payment is required but cannot be paid. This allows you to manage scenarios where additional user actions are needed to pay a subscription's invoice. For example, SCA regulation may require 3DS authentication to complete payment. See the [SCA Migration Guide](https://stripe.com/docs/billing/migration/strong-customer-authentication) for Billing to learn more. This is the default behavior.
      #
      # Use `default_incomplete` to transition the subscription to `status=past_due` when payment is required and await explicit confirmation of the invoice's payment intent. This allows simpler management of scenarios where additional user actions are needed to pay a subscription’s invoice. Such as failed payments, [SCA regulation](https://stripe.com/docs/billing/migration/strong-customer-authentication), or collecting a mandate for a bank debit payment method.
      #
      # Use `pending_if_incomplete` to update the subscription using [pending updates](https://stripe.com/docs/billing/subscriptions/pending-updates). When you use `pending_if_incomplete` you can only pass the parameters [supported by pending updates](https://stripe.com/docs/billing/pending-updates-reference#supported-attributes).
      #
      # Use `error_if_incomplete` if you want Stripe to return an HTTP 402 status code if a subscription's invoice cannot be paid. For example, if a payment method requires 3DS authentication due to SCA regulation and further user action is needed, this parameter does not update the subscription and returns an error instead. This was the default behavior for API versions prior to 2019-03-14. See the [changelog](https://stripe.com/docs/upgrades#2019-03-14) to learn more.
      sig { returns(T.nilable(String)) }
      attr_accessor :payment_behavior
      # The identifier of the new plan for this subscription item.
      sig { returns(T.nilable(String)) }
      attr_accessor :plan
      # The ID of the price object. One of `price` or `price_data` is required. When changing a subscription item's price, `quantity` is set to 1 unless a `quantity` parameter is provided.
      sig { returns(T.nilable(String)) }
      attr_accessor :price
      # Data used to generate a new [Price](https://stripe.com/docs/api/prices) object inline. One of `price` or `price_data` is required.
      sig { returns(T.nilable(::Stripe::SubscriptionItem::UpdateParams::PriceData)) }
      attr_accessor :price_data
      # Determines how to handle [prorations](https://stripe.com/docs/billing/subscriptions/prorations) when the billing cycle changes (e.g., when switching plans, resetting `billing_cycle_anchor=now`, or starting a trial), or if an item's `quantity` changes. The default value is `create_prorations`.
      sig { returns(T.nilable(String)) }
      attr_accessor :proration_behavior
      # If set, the proration will be calculated as though the subscription was updated at the given time. This can be used to apply the same proration that was previewed with the [upcoming invoice](https://stripe.com/docs/api#retrieve_customer_invoice) endpoint.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :proration_date
      # The quantity you'd like to apply to the subscription item you're creating.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :quantity
      # A list of [Tax Rate](https://stripe.com/docs/api/tax_rates) ids. These Tax Rates will override the [`default_tax_rates`](https://stripe.com/docs/api/subscriptions/create#create_subscription-default_tax_rates) on the Subscription. When updating, pass an empty string to remove previously-defined tax rates.
      sig { returns(T.nilable(T.nilable(T.any(String, T::Array[String])))) }
      attr_accessor :tax_rates
      sig {
        params(discounts: T.nilable(T.nilable(T.any(String, T::Array[::Stripe::SubscriptionItem::UpdateParams::Discount]))), expand: T.nilable(T::Array[String]), metadata: T.nilable(T.nilable(T.any(String, T::Hash[String, String]))), off_session: T.nilable(T::Boolean), payment_behavior: T.nilable(String), plan: T.nilable(String), price: T.nilable(String), price_data: T.nilable(::Stripe::SubscriptionItem::UpdateParams::PriceData), proration_behavior: T.nilable(String), proration_date: T.nilable(Integer), quantity: T.nilable(Integer), tax_rates: T.nilable(T.nilable(T.any(String, T::Array[String])))).void
       }
      def initialize(
        discounts: nil,
        expand: nil,
        metadata: nil,
        off_session: nil,
        payment_behavior: nil,
        plan: nil,
        price: nil,
        price_data: nil,
        proration_behavior: nil,
        proration_date: nil,
        quantity: nil,
        tax_rates: nil
      ); end
    end
    class ListParams < Stripe::RequestParams
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      sig { returns(T.nilable(String)) }
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :limit
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(T.nilable(String)) }
      attr_accessor :starting_after
      # The ID of the subscription whose items will be retrieved.
      sig { returns(String) }
      attr_accessor :subscription
      sig {
        params(ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String), subscription: String).void
       }
      def initialize(
        ending_before: nil,
        expand: nil,
        limit: nil,
        starting_after: nil,
        subscription: nil
      ); end
    end
    class CreateParams < Stripe::RequestParams
      class Discount < Stripe::RequestParams
        # ID of the coupon to create a new discount for.
        sig { returns(T.nilable(String)) }
        attr_accessor :coupon
        # ID of an existing discount on the object (or one of its ancestors) to reuse.
        sig { returns(T.nilable(String)) }
        attr_accessor :discount
        # ID of the promotion code to create a new discount for.
        sig { returns(T.nilable(String)) }
        attr_accessor :promotion_code
        sig {
          params(coupon: T.nilable(String), discount: T.nilable(String), promotion_code: T.nilable(String)).void
         }
        def initialize(coupon: nil, discount: nil, promotion_code: nil); end
      end
      class PriceData < Stripe::RequestParams
        class Recurring < Stripe::RequestParams
          # Specifies billing frequency. Either `day`, `week`, `month` or `year`.
          sig { returns(String) }
          attr_accessor :interval
          # The number of intervals between subscription billings. For example, `interval=month` and `interval_count=3` bills every 3 months. Maximum of three years interval allowed (3 years, 36 months, or 156 weeks).
          sig { returns(T.nilable(Integer)) }
          attr_accessor :interval_count
          sig { params(interval: String, interval_count: T.nilable(Integer)).void }
          def initialize(interval: nil, interval_count: nil); end
        end
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        sig { returns(String) }
        attr_accessor :currency
        # The ID of the [Product](https://docs.stripe.com/api/products) that this [Price](https://docs.stripe.com/api/prices) will belong to.
        sig { returns(String) }
        attr_accessor :product
        # The recurring components of a price such as `interval` and `interval_count`.
        sig { returns(::Stripe::SubscriptionItem::CreateParams::PriceData::Recurring) }
        attr_accessor :recurring
        # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
        sig { returns(T.nilable(String)) }
        attr_accessor :tax_behavior
        # A positive integer in cents (or local equivalent) (or 0 for a free price) representing how much to charge.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :unit_amount
        # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
        sig { returns(T.nilable(String)) }
        attr_accessor :unit_amount_decimal
        sig {
          params(currency: String, product: String, recurring: ::Stripe::SubscriptionItem::CreateParams::PriceData::Recurring, tax_behavior: T.nilable(String), unit_amount: T.nilable(Integer), unit_amount_decimal: T.nilable(String)).void
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
      # The coupons to redeem into discounts for the subscription item.
      sig {
        returns(T.nilable(T.nilable(T.any(String, T::Array[::Stripe::SubscriptionItem::CreateParams::Discount]))))
       }
      attr_accessor :discounts
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_accessor :metadata
      # Use `allow_incomplete` to transition the subscription to `status=past_due` if a payment is required but cannot be paid. This allows you to manage scenarios where additional user actions are needed to pay a subscription's invoice. For example, SCA regulation may require 3DS authentication to complete payment. See the [SCA Migration Guide](https://stripe.com/docs/billing/migration/strong-customer-authentication) for Billing to learn more. This is the default behavior.
      #
      # Use `default_incomplete` to transition the subscription to `status=past_due` when payment is required and await explicit confirmation of the invoice's payment intent. This allows simpler management of scenarios where additional user actions are needed to pay a subscription’s invoice. Such as failed payments, [SCA regulation](https://stripe.com/docs/billing/migration/strong-customer-authentication), or collecting a mandate for a bank debit payment method.
      #
      # Use `pending_if_incomplete` to update the subscription using [pending updates](https://stripe.com/docs/billing/subscriptions/pending-updates). When you use `pending_if_incomplete` you can only pass the parameters [supported by pending updates](https://stripe.com/docs/billing/pending-updates-reference#supported-attributes).
      #
      # Use `error_if_incomplete` if you want Stripe to return an HTTP 402 status code if a subscription's invoice cannot be paid. For example, if a payment method requires 3DS authentication due to SCA regulation and further user action is needed, this parameter does not update the subscription and returns an error instead. This was the default behavior for API versions prior to 2019-03-14. See the [changelog](https://stripe.com/docs/upgrades#2019-03-14) to learn more.
      sig { returns(T.nilable(String)) }
      attr_accessor :payment_behavior
      # The identifier of the plan to add to the subscription.
      sig { returns(T.nilable(String)) }
      attr_accessor :plan
      # The ID of the price object.
      sig { returns(T.nilable(String)) }
      attr_accessor :price
      # Data used to generate a new [Price](https://stripe.com/docs/api/prices) object inline.
      sig { returns(T.nilable(::Stripe::SubscriptionItem::CreateParams::PriceData)) }
      attr_accessor :price_data
      # Determines how to handle [prorations](https://stripe.com/docs/billing/subscriptions/prorations) when the billing cycle changes (e.g., when switching plans, resetting `billing_cycle_anchor=now`, or starting a trial), or if an item's `quantity` changes. The default value is `create_prorations`.
      sig { returns(T.nilable(String)) }
      attr_accessor :proration_behavior
      # If set, the proration will be calculated as though the subscription was updated at the given time. This can be used to apply the same proration that was previewed with the [upcoming invoice](https://stripe.com/docs/api#retrieve_customer_invoice) endpoint.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :proration_date
      # The quantity you'd like to apply to the subscription item you're creating.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :quantity
      # The identifier of the subscription to modify.
      sig { returns(String) }
      attr_accessor :subscription
      # A list of [Tax Rate](https://stripe.com/docs/api/tax_rates) ids. These Tax Rates will override the [`default_tax_rates`](https://stripe.com/docs/api/subscriptions/create#create_subscription-default_tax_rates) on the Subscription. When updating, pass an empty string to remove previously-defined tax rates.
      sig { returns(T.nilable(T.nilable(T.any(String, T::Array[String])))) }
      attr_accessor :tax_rates
      sig {
        params(discounts: T.nilable(T.nilable(T.any(String, T::Array[::Stripe::SubscriptionItem::CreateParams::Discount]))), expand: T.nilable(T::Array[String]), metadata: T.nilable(T::Hash[String, String]), payment_behavior: T.nilable(String), plan: T.nilable(String), price: T.nilable(String), price_data: T.nilable(::Stripe::SubscriptionItem::CreateParams::PriceData), proration_behavior: T.nilable(String), proration_date: T.nilable(Integer), quantity: T.nilable(Integer), subscription: String, tax_rates: T.nilable(T.nilable(T.any(String, T::Array[String])))).void
       }
      def initialize(
        discounts: nil,
        expand: nil,
        metadata: nil,
        payment_behavior: nil,
        plan: nil,
        price: nil,
        price_data: nil,
        proration_behavior: nil,
        proration_date: nil,
        quantity: nil,
        subscription: nil,
        tax_rates: nil
      ); end
    end
    # Adds a new item to an existing subscription. No existing items will be changed or replaced.
    sig {
      params(params: T.any(::Stripe::SubscriptionItem::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::SubscriptionItem)
     }
    def self.create(params = {}, opts = {}); end

    # Deletes an item from the subscription. Removing a subscription item from a subscription will not cancel the subscription.
    sig {
      params(item: String, params: T.any(::Stripe::SubscriptionItem::DeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::SubscriptionItem)
     }
    def self.delete(item, params = {}, opts = {}); end

    # Deletes an item from the subscription. Removing a subscription item from a subscription will not cancel the subscription.
    sig {
      params(params: T.any(::Stripe::SubscriptionItem::DeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::SubscriptionItem)
     }
    def delete(params = {}, opts = {}); end

    # Returns a list of your subscription items for a given subscription.
    sig {
      params(params: T.any(::Stripe::SubscriptionItem::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def self.list(params = {}, opts = {}); end

    # Updates the plan or quantity of an item on a current subscription.
    sig {
      params(item: String, params: T.any(::Stripe::SubscriptionItem::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::SubscriptionItem)
     }
    def self.update(item, params = {}, opts = {}); end
  end
end