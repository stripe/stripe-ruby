# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # You can now model subscriptions more flexibly using the [Prices API](https://stripe.com/docs/api#prices). It replaces the Plans API and is backwards compatible to simplify your migration.
  #
  # Plans define the base price, currency, and billing cycle for recurring purchases of products.
  # [Products](https://stripe.com/docs/api#products) help you track inventory or provisioning, and plans help you track pricing. Different physical goods or levels of service should be represented by products, and pricing options should be represented by plans. This approach lets you change prices without having to change your provisioning scheme.
  #
  # For example, you might have a single "gold" product that has plans for $10/month, $100/year, €9/month, and €90/year.
  #
  # Related guides: [Set up a subscription](https://stripe.com/docs/billing/subscriptions/set-up-subscription) and more about [products and prices](https://stripe.com/docs/products-prices/overview).
  class Plan < APIResource
    class Tier < Stripe::StripeObject
      # Price for the entire tier.
      sig { returns(T.nilable(Integer)) }
      attr_reader :flat_amount
      # Same as `flat_amount`, but contains a decimal value with at most 12 decimal places.
      sig { returns(T.nilable(String)) }
      attr_reader :flat_amount_decimal
      # Per unit price for units relevant to the tier.
      sig { returns(T.nilable(Integer)) }
      attr_reader :unit_amount
      # Same as `unit_amount`, but contains a decimal value with at most 12 decimal places.
      sig { returns(T.nilable(String)) }
      attr_reader :unit_amount_decimal
      # Up to and including to this quantity will be contained in the tier.
      sig { returns(T.nilable(Integer)) }
      attr_reader :up_to
    end
    class TransformUsage < Stripe::StripeObject
      # Divide usage by this number.
      sig { returns(Integer) }
      attr_reader :divide_by
      # After division, either round the result `up` or `down`.
      sig { returns(String) }
      attr_reader :round
    end
    # Whether the plan can be used for new purchases.
    sig { returns(T::Boolean) }
    attr_reader :active

    # Specifies a usage aggregation strategy for plans of `usage_type=metered`. Allowed values are `sum` for summing up all usage during a period, `last_during_period` for using the last usage record reported within a period, `last_ever` for using the last usage record ever (across period bounds) or `max` which uses the usage record with the maximum reported usage during a period. Defaults to `sum`.
    sig { returns(T.nilable(String)) }
    attr_reader :aggregate_usage

    # The unit amount in cents (or local equivalent) to be charged, represented as a whole integer if possible. Only set if `billing_scheme=per_unit`.
    sig { returns(T.nilable(Integer)) }
    attr_reader :amount

    # The unit amount in cents (or local equivalent) to be charged, represented as a decimal string with at most 12 decimal places. Only set if `billing_scheme=per_unit`.
    sig { returns(T.nilable(String)) }
    attr_reader :amount_decimal

    # Describes how to compute the price per period. Either `per_unit` or `tiered`. `per_unit` indicates that the fixed amount (specified in `amount`) will be charged per unit in `quantity` (for plans with `usage_type=licensed`), or per unit of total usage (for plans with `usage_type=metered`). `tiered` indicates that the unit pricing will be computed using a tiering strategy as defined using the `tiers` and `tiers_mode` attributes.
    sig { returns(String) }
    attr_reader :billing_scheme

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    attr_reader :created

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    sig { returns(String) }
    attr_reader :currency

    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id

    # The frequency at which a subscription is billed. One of `day`, `week`, `month` or `year`.
    sig { returns(String) }
    attr_reader :interval

    # The number of intervals (specified in the `interval` attribute) between subscription billings. For example, `interval=month` and `interval_count=3` bills every 3 months.
    sig { returns(Integer) }
    attr_reader :interval_count

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    attr_reader :livemode

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    sig { returns(T.nilable(T::Hash[String, String])) }
    attr_reader :metadata

    # The meter tracking the usage of a metered price
    sig { returns(T.nilable(String)) }
    attr_reader :meter

    # A brief description of the plan, hidden from customers.
    sig { returns(T.nilable(String)) }
    attr_reader :nickname

    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object

    # The product whose pricing this plan determines.
    sig { returns(T.nilable(T.any(String, Stripe::Product))) }
    attr_reader :product

    # Each element represents a pricing tier. This parameter requires `billing_scheme` to be set to `tiered`. See also the documentation for `billing_scheme`.
    sig { returns(T::Array[Tier]) }
    attr_reader :tiers

    # Defines if the tiering price should be `graduated` or `volume` based. In `volume`-based tiering, the maximum quantity within a period determines the per unit price. In `graduated` tiering, pricing can change as the quantity grows.
    sig { returns(T.nilable(String)) }
    attr_reader :tiers_mode

    # Apply a transformation to the reported usage or set quantity before computing the amount billed. Cannot be combined with `tiers`.
    sig { returns(T.nilable(TransformUsage)) }
    attr_reader :transform_usage

    # Default number of trial days when subscribing a customer to this plan using [`trial_from_plan=true`](https://stripe.com/docs/api#create_subscription-trial_from_plan).
    sig { returns(T.nilable(Integer)) }
    attr_reader :trial_period_days

    # Configures how the quantity per period should be determined. Can be either `metered` or `licensed`. `licensed` automatically bills the `quantity` set when adding it to a subscription. `metered` aggregates the total usage based on usage records. Defaults to `licensed`.
    sig { returns(String) }
    attr_reader :usage_type

    # Always true for a deleted object
    sig { returns(T::Boolean) }
    attr_reader :deleted
  end
end