# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class SubscriptionItemCreateParams < ::Stripe::RequestParams
    class BillingThresholds < ::Stripe::RequestParams
      # Number of units that meets the billing threshold to advance the subscription to a new billing period (e.g., it takes 10 $5 units to meet a $50 [monetary threshold](https://docs.stripe.com/api/subscriptions/update#update_subscription-billing_thresholds-amount_gte))
      sig { returns(Integer) }
      def usage_gte; end
      sig { params(_usage_gte: Integer).returns(Integer) }
      def usage_gte=(_usage_gte); end
      sig { params(usage_gte: Integer).void }
      def initialize(usage_gte: nil); end
    end
    class CurrentTrial < ::Stripe::RequestParams
      # Unix timestamp representing the end of the trial offer period. Required when the trial offer has `duration.type=timestamp`. Cannot be specified when `duration.type=relative`.
      sig { returns(T.nilable(Integer)) }
      def trial_end; end
      sig { params(_trial_end: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def trial_end=(_trial_end); end
      # The ID of the trial offer to apply to the subscription item.
      sig { returns(String) }
      def trial_offer; end
      sig { params(_trial_offer: String).returns(String) }
      def trial_offer=(_trial_offer); end
      sig { params(trial_end: T.nilable(Integer), trial_offer: String).void }
      def initialize(trial_end: nil, trial_offer: nil); end
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
        sig { returns(T.nilable(SubscriptionItemCreateParams::Discount::DiscountEnd::Duration)) }
        def duration; end
        sig {
          params(_duration: T.nilable(SubscriptionItemCreateParams::Discount::DiscountEnd::Duration)).returns(T.nilable(SubscriptionItemCreateParams::Discount::DiscountEnd::Duration))
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
          params(duration: T.nilable(SubscriptionItemCreateParams::Discount::DiscountEnd::Duration), timestamp: T.nilable(Integer), type: String).void
         }
        def initialize(duration: nil, timestamp: nil, type: nil); end
      end
      class Settings < ::Stripe::RequestParams
        class ServicePeriodAnchorConfig < ::Stripe::RequestParams
          class Custom < ::Stripe::RequestParams
            # The day of the month the anchor should be. Ranges from 1 to 31.
            sig { returns(Integer) }
            def day_of_month; end
            sig { params(_day_of_month: Integer).returns(Integer) }
            def day_of_month=(_day_of_month); end
            # The hour of the day the anchor should be. Ranges from 0 to 23.
            sig { returns(T.nilable(Integer)) }
            def hour; end
            sig { params(_hour: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def hour=(_hour); end
            # The minute of the hour the anchor should be. Ranges from 0 to 59.
            sig { returns(T.nilable(Integer)) }
            def minute; end
            sig { params(_minute: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def minute=(_minute); end
            # The month to start full cycle periods. Ranges from 1 to 12.
            sig { returns(T.nilable(Integer)) }
            def month; end
            sig { params(_month: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def month=(_month); end
            # The second of the minute the anchor should be. Ranges from 0 to 59.
            sig { returns(T.nilable(Integer)) }
            def second; end
            sig { params(_second: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def second=(_second); end
            sig {
              params(day_of_month: Integer, hour: T.nilable(Integer), minute: T.nilable(Integer), month: T.nilable(Integer), second: T.nilable(Integer)).void
             }
            def initialize(day_of_month: nil, hour: nil, minute: nil, month: nil, second: nil); end
          end
          # Anchor the service period to a custom date. Type must be `custom` to specify.
          sig {
            returns(T.nilable(SubscriptionItemCreateParams::Discount::Settings::ServicePeriodAnchorConfig::Custom))
           }
          def custom; end
          sig {
            params(_custom: T.nilable(SubscriptionItemCreateParams::Discount::Settings::ServicePeriodAnchorConfig::Custom)).returns(T.nilable(SubscriptionItemCreateParams::Discount::Settings::ServicePeriodAnchorConfig::Custom))
           }
          def custom=(_custom); end
          # The type of service period anchor config. Defaults to `subscription_service_cycle_anchor` if omitted.
          sig { returns(T.nilable(String)) }
          def type; end
          sig { params(_type: T.nilable(String)).returns(T.nilable(String)) }
          def type=(_type); end
          sig {
            params(custom: T.nilable(SubscriptionItemCreateParams::Discount::Settings::ServicePeriodAnchorConfig::Custom), type: T.nilable(String)).void
           }
          def initialize(custom: nil, type: nil); end
        end
        # Configures service period cycle anchoring.
        sig {
          returns(T.nilable(SubscriptionItemCreateParams::Discount::Settings::ServicePeriodAnchorConfig))
         }
        def service_period_anchor_config; end
        sig {
          params(_service_period_anchor_config: T.nilable(SubscriptionItemCreateParams::Discount::Settings::ServicePeriodAnchorConfig)).returns(T.nilable(SubscriptionItemCreateParams::Discount::Settings::ServicePeriodAnchorConfig))
         }
        def service_period_anchor_config=(_service_period_anchor_config); end
        # The start date of the discount's service period when applying a coupon or promotion code with a service period duration. Defaults to `now` if omitted.
        sig { returns(T.nilable(String)) }
        def start_date; end
        sig { params(_start_date: T.nilable(String)).returns(T.nilable(String)) }
        def start_date=(_start_date); end
        sig {
          params(service_period_anchor_config: T.nilable(SubscriptionItemCreateParams::Discount::Settings::ServicePeriodAnchorConfig), start_date: T.nilable(String)).void
         }
        def initialize(service_period_anchor_config: nil, start_date: nil); end
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
      sig { returns(T.nilable(SubscriptionItemCreateParams::Discount::DiscountEnd)) }
      def discount_end; end
      sig {
        params(_discount_end: T.nilable(SubscriptionItemCreateParams::Discount::DiscountEnd)).returns(T.nilable(SubscriptionItemCreateParams::Discount::DiscountEnd))
       }
      def discount_end=(_discount_end); end
      # ID of the promotion code to create a new discount for.
      sig { returns(T.nilable(String)) }
      def promotion_code; end
      sig { params(_promotion_code: T.nilable(String)).returns(T.nilable(String)) }
      def promotion_code=(_promotion_code); end
      # Settings for discount application including service period anchoring.
      sig { returns(T.nilable(SubscriptionItemCreateParams::Discount::Settings)) }
      def settings; end
      sig {
        params(_settings: T.nilable(SubscriptionItemCreateParams::Discount::Settings)).returns(T.nilable(SubscriptionItemCreateParams::Discount::Settings))
       }
      def settings=(_settings); end
      sig {
        params(coupon: T.nilable(String), discount: T.nilable(String), discount_end: T.nilable(SubscriptionItemCreateParams::Discount::DiscountEnd), promotion_code: T.nilable(String), settings: T.nilable(SubscriptionItemCreateParams::Discount::Settings)).void
       }
      def initialize(
        coupon: nil,
        discount: nil,
        discount_end: nil,
        promotion_code: nil,
        settings: nil
      ); end
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
      sig { returns(SubscriptionItemCreateParams::PriceData::Recurring) }
      def recurring; end
      sig {
        params(_recurring: SubscriptionItemCreateParams::PriceData::Recurring).returns(SubscriptionItemCreateParams::PriceData::Recurring)
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
        params(currency: String, product: String, recurring: SubscriptionItemCreateParams::PriceData::Recurring, tax_behavior: T.nilable(String), unit_amount: T.nilable(Integer), unit_amount_decimal: T.nilable(String)).void
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
    class Trial < ::Stripe::RequestParams
      # List of price IDs which, if present on the subscription following a paid trial, constitute opting-in to the paid trial. Currently only supports at most 1 price ID.
      sig { returns(T.nilable(T::Array[String])) }
      def converts_to; end
      sig { params(_converts_to: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def converts_to=(_converts_to); end
      # Determines the type of trial for this item.
      sig { returns(String) }
      def type; end
      sig { params(_type: String).returns(String) }
      def type=(_type); end
      sig { params(converts_to: T.nilable(T::Array[String]), type: String).void }
      def initialize(converts_to: nil, type: nil); end
    end
    # Define thresholds at which an invoice will be sent, and the subscription advanced to a new billing period. Pass an empty string to remove previously-defined thresholds.
    sig { returns(T.nilable(T.any(String, SubscriptionItemCreateParams::BillingThresholds))) }
    def billing_thresholds; end
    sig {
      params(_billing_thresholds: T.nilable(T.any(String, SubscriptionItemCreateParams::BillingThresholds))).returns(T.nilable(T.any(String, SubscriptionItemCreateParams::BillingThresholds)))
     }
    def billing_thresholds=(_billing_thresholds); end
    # The trial offer to apply to this subscription item.
    sig { returns(T.nilable(SubscriptionItemCreateParams::CurrentTrial)) }
    def current_trial; end
    sig {
      params(_current_trial: T.nilable(SubscriptionItemCreateParams::CurrentTrial)).returns(T.nilable(SubscriptionItemCreateParams::CurrentTrial))
     }
    def current_trial=(_current_trial); end
    # The coupons to redeem into discounts for the subscription item.
    sig { returns(T.nilable(T.any(String, T::Array[SubscriptionItemCreateParams::Discount]))) }
    def discounts; end
    sig {
      params(_discounts: T.nilable(T.any(String, T::Array[SubscriptionItemCreateParams::Discount]))).returns(T.nilable(T.any(String, T::Array[SubscriptionItemCreateParams::Discount])))
     }
    def discounts=(_discounts); end
    # Specifies which fields in the response should be expanded.
    sig { returns(T.nilable(T::Array[String])) }
    def expand; end
    sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
    def expand=(_expand); end
    # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    sig { returns(T.nilable(T::Hash[String, String])) }
    def metadata; end
    sig {
      params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
     }
    def metadata=(_metadata); end
    # Use `allow_incomplete` to transition the subscription to `status=past_due` if a payment is required but cannot be paid. This allows you to manage scenarios where additional user actions are needed to pay a subscription's invoice. For example, SCA regulation may require 3DS authentication to complete payment. See the [SCA Migration Guide](https://docs.stripe.com/billing/migration/strong-customer-authentication) for Billing to learn more. This is the default behavior.
    #
    # Use `default_incomplete` to transition the subscription to `status=past_due` when payment is required and await explicit confirmation of the invoice's payment intent. This allows simpler management of scenarios where additional user actions are needed to pay a subscription’s invoice. Such as failed payments, [SCA regulation](https://docs.stripe.com/billing/migration/strong-customer-authentication), or collecting a mandate for a bank debit payment method.
    #
    # Use `pending_if_incomplete` to update the subscription using [pending updates](https://docs.stripe.com/billing/subscriptions/pending-updates). When you use `pending_if_incomplete` you can only pass the parameters [supported by pending updates](https://docs.stripe.com/billing/pending-updates-reference#supported-attributes).
    #
    # Use `error_if_incomplete` if you want Stripe to return an HTTP 402 status code if a subscription's invoice cannot be paid. For example, if a payment method requires 3DS authentication due to SCA regulation and further user action is needed, this parameter does not update the subscription and returns an error instead. This was the default behavior for API versions prior to 2019-03-14. See the [changelog](https://docs.stripe.com/changelog/2019-03-14) to learn more.
    sig { returns(T.nilable(String)) }
    def payment_behavior; end
    sig { params(_payment_behavior: T.nilable(String)).returns(T.nilable(String)) }
    def payment_behavior=(_payment_behavior); end
    # The identifier of the plan to add to the subscription.
    sig { returns(T.nilable(String)) }
    def plan; end
    sig { params(_plan: T.nilable(String)).returns(T.nilable(String)) }
    def plan=(_plan); end
    # The ID of the price object.
    sig { returns(T.nilable(String)) }
    def price; end
    sig { params(_price: T.nilable(String)).returns(T.nilable(String)) }
    def price=(_price); end
    # Data used to generate a new [Price](https://docs.stripe.com/api/prices) object inline.
    sig { returns(T.nilable(SubscriptionItemCreateParams::PriceData)) }
    def price_data; end
    sig {
      params(_price_data: T.nilable(SubscriptionItemCreateParams::PriceData)).returns(T.nilable(SubscriptionItemCreateParams::PriceData))
     }
    def price_data=(_price_data); end
    # Determines how to handle [prorations](https://docs.stripe.com/billing/subscriptions/prorations) when the billing cycle changes (e.g., when switching plans, resetting `billing_cycle_anchor=now`, or starting a trial), or if an item's `quantity` changes. The default value is `create_prorations`.
    sig { returns(T.nilable(String)) }
    def proration_behavior; end
    sig { params(_proration_behavior: T.nilable(String)).returns(T.nilable(String)) }
    def proration_behavior=(_proration_behavior); end
    # If set, the proration will be calculated as though the subscription was updated at the given time. This can be used to apply the same proration that was previewed with the [upcoming invoice](https://api.stripe.com#retrieve_customer_invoice) endpoint.
    sig { returns(T.nilable(Integer)) }
    def proration_date; end
    sig { params(_proration_date: T.nilable(Integer)).returns(T.nilable(Integer)) }
    def proration_date=(_proration_date); end
    # The quantity you'd like to apply to the subscription item you're creating.
    sig { returns(T.nilable(Integer)) }
    def quantity; end
    sig { params(_quantity: T.nilable(Integer)).returns(T.nilable(Integer)) }
    def quantity=(_quantity); end
    # The identifier of the subscription to modify.
    sig { returns(String) }
    def subscription; end
    sig { params(_subscription: String).returns(String) }
    def subscription=(_subscription); end
    # A list of [Tax Rate](https://docs.stripe.com/api/tax_rates) ids. These Tax Rates will override the [`default_tax_rates`](https://docs.stripe.com/api/subscriptions/create#create_subscription-default_tax_rates) on the Subscription. When updating, pass an empty string to remove previously-defined tax rates.
    sig { returns(T.nilable(T.any(String, T::Array[String]))) }
    def tax_rates; end
    sig {
      params(_tax_rates: T.nilable(T.any(String, T::Array[String]))).returns(T.nilable(T.any(String, T::Array[String])))
     }
    def tax_rates=(_tax_rates); end
    # Options that configure the trial on the subscription item.
    sig { returns(T.nilable(SubscriptionItemCreateParams::Trial)) }
    def trial; end
    sig {
      params(_trial: T.nilable(SubscriptionItemCreateParams::Trial)).returns(T.nilable(SubscriptionItemCreateParams::Trial))
     }
    def trial=(_trial); end
    sig {
      params(billing_thresholds: T.nilable(T.any(String, SubscriptionItemCreateParams::BillingThresholds)), current_trial: T.nilable(SubscriptionItemCreateParams::CurrentTrial), discounts: T.nilable(T.any(String, T::Array[SubscriptionItemCreateParams::Discount])), expand: T.nilable(T::Array[String]), metadata: T.nilable(T::Hash[String, String]), payment_behavior: T.nilable(String), plan: T.nilable(String), price: T.nilable(String), price_data: T.nilable(SubscriptionItemCreateParams::PriceData), proration_behavior: T.nilable(String), proration_date: T.nilable(Integer), quantity: T.nilable(Integer), subscription: String, tax_rates: T.nilable(T.any(String, T::Array[String])), trial: T.nilable(SubscriptionItemCreateParams::Trial)).void
     }
    def initialize(
      billing_thresholds: nil,
      current_trial: nil,
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
      tax_rates: nil,
      trial: nil
    ); end
  end
end