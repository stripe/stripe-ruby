# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # Subscription items allow you to create customer subscriptions with more than
  # one plan, making it easy to represent complex billing relationships.
  class SubscriptionItem < APIResource
    class BillingThresholds < Stripe::StripeObject
      # Usage threshold that triggers the subscription to create an invoice
      sig { returns(T.nilable(Integer)) }
      attr_reader :usage_gte
    end
    class Trial < Stripe::StripeObject
      # List of price IDs which, if present on the subscription following a paid trial, constitute opting-in to the paid trial.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :converts_to
      # Determines the type of trial for this item.
      sig { returns(String) }
      attr_reader :type
    end
    # Define thresholds at which an invoice will be sent, and the related subscription advanced to a new billing period
    sig { returns(T.nilable(BillingThresholds)) }
    attr_reader :billing_thresholds

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    attr_reader :created

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

    # Options that configure the trial on the subscription item.
    sig { returns(T.nilable(Trial)) }
    attr_reader :trial

    # Always true for a deleted object
    sig { returns(T::Boolean) }
    attr_reader :deleted
  end
end