# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # Subscription items allow you to create customer subscriptions with more than
  # one plan, making it easy to represent complex billing relationships.
  class SubscriptionItem < APIResource
    class BillingThresholds < Stripe::StripeObject
      sig { returns(T.nilable(Integer)) }
      attr_reader :usage_gte
    end
    class Trial < Stripe::StripeObject
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :converts_to
      sig { returns(String) }
      attr_reader :type
    end
    sig { returns(T.nilable(BillingThresholds)) }
    # Define thresholds at which an invoice will be sent, and the related subscription advanced to a new billing period
    attr_reader :billing_thresholds
    sig { returns(Integer) }
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    sig { returns(T::Array[T.any(String, Stripe::Discount)]) }
    # The discounts applied to the subscription item. Subscription item discounts are applied before subscription discounts. Use `expand[]=discounts` to expand each discount.
    attr_reader :discounts
    sig { returns(String) }
    # Unique identifier for the object.
    attr_reader :id
    sig { returns(T::Hash[String, String]) }
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    sig { returns(Stripe::Plan) }
    # You can now model subscriptions more flexibly using the [Prices API](https://stripe.com/docs/api#prices). It replaces the Plans API and is backwards compatible to simplify your migration.
    #
    # Plans define the base price, currency, and billing cycle for recurring purchases of products.
    # [Products](https://stripe.com/docs/api#products) help you track inventory or provisioning, and plans help you track pricing. Different physical goods or levels of service should be represented by products, and pricing options should be represented by plans. This approach lets you change prices without having to change your provisioning scheme.
    #
    # For example, you might have a single "gold" product that has plans for $10/month, $100/year, €9/month, and €90/year.
    #
    # Related guides: [Set up a subscription](https://stripe.com/docs/billing/subscriptions/set-up-subscription) and more about [products and prices](https://stripe.com/docs/products-prices/overview).
    attr_reader :plan
    sig { returns(Stripe::Price) }
    # Prices define the unit cost, currency, and (optional) billing cycle for both recurring and one-time purchases of products.
    # [Products](https://stripe.com/docs/api#products) help you track inventory or provisioning, and prices help you track payment terms. Different physical goods or levels of service should be represented by products, and pricing options should be represented by prices. This approach lets you change prices without having to change your provisioning scheme.
    #
    # For example, you might have a single "gold" product that has prices for $10/month, $100/year, and €9 once.
    #
    # Related guides: [Set up a subscription](https://stripe.com/docs/billing/subscriptions/set-up-subscription), [create an invoice](https://stripe.com/docs/billing/invoices/create), and more about [products and prices](https://stripe.com/docs/products-prices/overview).
    attr_reader :price
    sig { returns(Integer) }
    # The [quantity](https://stripe.com/docs/subscriptions/quantities) of the plan to which the customer should be subscribed.
    attr_reader :quantity
    sig { returns(String) }
    # The `subscription` this `subscription_item` belongs to.
    attr_reader :subscription
    sig { returns(T.nilable(T::Array[Stripe::TaxRate])) }
    # The tax rates which apply to this `subscription_item`. When set, the `default_tax_rates` on the subscription do not apply to this `subscription_item`.
    attr_reader :tax_rates
    sig { returns(T.nilable(Trial)) }
    # Options that configure the trial on the subscription item.
    attr_reader :trial
    sig { returns(T::Boolean) }
    # Always true for a deleted object
    attr_reader :deleted
  end
end