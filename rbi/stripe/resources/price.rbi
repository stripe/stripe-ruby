# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # Prices define the unit cost, currency, and (optional) billing cycle for both recurring and one-time purchases of products.
  # [Products](https://stripe.com/docs/api#products) help you track inventory or provisioning, and prices help you track payment terms. Different physical goods or levels of service should be represented by products, and pricing options should be represented by prices. This approach lets you change prices without having to change your provisioning scheme.
  #
  # For example, you might have a single "gold" product that has prices for $10/month, $100/year, and €9 once.
  #
  # Related guides: [Set up a subscription](https://stripe.com/docs/billing/subscriptions/set-up-subscription), [create an invoice](https://stripe.com/docs/billing/invoices/create), and more about [products and prices](https://stripe.com/docs/products-prices/overview).
  class Price < APIResource
    class CurrencyOptions < Stripe::StripeObject
      class CustomUnitAmount < Stripe::StripeObject
        # The maximum unit amount the customer can specify for this item.
        sig { returns(T.nilable(Integer)) }
        attr_reader :maximum
        # The minimum unit amount the customer can specify for this item. Must be at least the minimum charge amount.
        sig { returns(T.nilable(Integer)) }
        attr_reader :minimum
        # The starting unit amount which can be updated by the customer.
        sig { returns(T.nilable(Integer)) }
        attr_reader :preset
      end
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
      # When set, provides configuration for the amount to be adjusted by the customer during Checkout Sessions and Payment Links.
      sig { returns(T.nilable(CustomUnitAmount)) }
      attr_reader :custom_unit_amount
      # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
      sig { returns(T.nilable(String)) }
      attr_reader :tax_behavior
      # Each element represents a pricing tier. This parameter requires `billing_scheme` to be set to `tiered`. See also the documentation for `billing_scheme`.
      sig { returns(T::Array[Tier]) }
      attr_reader :tiers
      # The unit amount in cents (or local equivalent) to be charged, represented as a whole integer if possible. Only set if `billing_scheme=per_unit`.
      sig { returns(T.nilable(Integer)) }
      attr_reader :unit_amount
      # The unit amount in cents (or local equivalent) to be charged, represented as a decimal string with at most 12 decimal places. Only set if `billing_scheme=per_unit`.
      sig { returns(T.nilable(String)) }
      attr_reader :unit_amount_decimal
    end
    class CustomUnitAmount < Stripe::StripeObject
      # The maximum unit amount the customer can specify for this item.
      sig { returns(T.nilable(Integer)) }
      attr_reader :maximum
      # The minimum unit amount the customer can specify for this item. Must be at least the minimum charge amount.
      sig { returns(T.nilable(Integer)) }
      attr_reader :minimum
      # The starting unit amount which can be updated by the customer.
      sig { returns(T.nilable(Integer)) }
      attr_reader :preset
    end
    class MigrateTo < Stripe::StripeObject
      # The behavior controlling at what point in the subscription lifecycle to migrate the price
      sig { returns(String) }
      attr_reader :behavior
      # The unix timestamp after at which subscriptions will start to migrate to the new price.
      sig { returns(Integer) }
      attr_reader :effective_after
      # The id of the price being migrated to
      sig { returns(String) }
      attr_reader :price
    end
    class Recurring < Stripe::StripeObject
      # Specifies a usage aggregation strategy for prices of `usage_type=metered`. Defaults to `sum`.
      sig { returns(T.nilable(String)) }
      attr_reader :aggregate_usage
      # The frequency at which a subscription is billed. One of `day`, `week`, `month` or `year`.
      sig { returns(String) }
      attr_reader :interval
      # The number of intervals (specified in the `interval` attribute) between subscription billings. For example, `interval=month` and `interval_count=3` bills every 3 months.
      sig { returns(Integer) }
      attr_reader :interval_count
      # The meter tracking the usage of a metered price
      sig { returns(T.nilable(String)) }
      attr_reader :meter
      # Default number of trial days when subscribing a customer to this price using [`trial_from_plan=true`](https://stripe.com/docs/api#create_subscription-trial_from_plan).
      sig { returns(T.nilable(Integer)) }
      attr_reader :trial_period_days
      # Configures how the quantity per period should be determined. Can be either `metered` or `licensed`. `licensed` automatically bills the `quantity` set when adding it to a subscription. `metered` aggregates the total usage based on usage records. Defaults to `licensed`.
      sig { returns(String) }
      attr_reader :usage_type
    end
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
    class TransformQuantity < Stripe::StripeObject
      # Divide usage by this number.
      sig { returns(Integer) }
      attr_reader :divide_by
      # After division, either round the result `up` or `down`.
      sig { returns(String) }
      attr_reader :round
    end
    # Whether the price can be used for new purchases.
    sig { returns(T::Boolean) }
    attr_reader :active

    # Describes how to compute the price per period. Either `per_unit` or `tiered`. `per_unit` indicates that the fixed amount (specified in `unit_amount` or `unit_amount_decimal`) will be charged per unit in `quantity` (for prices with `usage_type=licensed`), or per unit of total usage (for prices with `usage_type=metered`). `tiered` indicates that the unit pricing will be computed using a tiering strategy as defined using the `tiers` and `tiers_mode` attributes.
    sig { returns(String) }
    attr_reader :billing_scheme

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    attr_reader :created

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    sig { returns(String) }
    attr_reader :currency

    # Prices defined in each available currency option. Each key must be a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html) and a [supported currency](https://stripe.com/docs/currencies).
    sig { returns(T::Hash[String, CurrencyOptions]) }
    attr_reader :currency_options

    # When set, provides configuration for the amount to be adjusted by the customer during Checkout Sessions and Payment Links.
    sig { returns(T.nilable(CustomUnitAmount)) }
    attr_reader :custom_unit_amount

    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    attr_reader :livemode

    # A lookup key used to retrieve prices dynamically from a static string. This may be up to 200 characters.
    sig { returns(T.nilable(String)) }
    attr_reader :lookup_key

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    sig { returns(T::Hash[String, String]) }
    attr_reader :metadata

    # Subscriptions using this price will be migrated to use the new referenced price.
    sig { returns(T.nilable(MigrateTo)) }
    attr_reader :migrate_to

    # A brief description of the price, hidden from customers.
    sig { returns(T.nilable(String)) }
    attr_reader :nickname

    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object

    # The ID of the product this price is associated with.
    sig { returns(T.any(String, Stripe::Product)) }
    attr_reader :product

    # The recurring components of a price such as `interval` and `usage_type`.
    sig { returns(T.nilable(Recurring)) }
    attr_reader :recurring

    # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
    sig { returns(T.nilable(String)) }
    attr_reader :tax_behavior

    # Each element represents a pricing tier. This parameter requires `billing_scheme` to be set to `tiered`. See also the documentation for `billing_scheme`.
    sig { returns(T::Array[Tier]) }
    attr_reader :tiers

    # Defines if the tiering price should be `graduated` or `volume` based. In `volume`-based tiering, the maximum quantity within a period determines the per unit price. In `graduated` tiering, pricing can change as the quantity grows.
    sig { returns(T.nilable(String)) }
    attr_reader :tiers_mode

    # Apply a transformation to the reported usage or set quantity before computing the amount billed. Cannot be combined with `tiers`.
    sig { returns(T.nilable(TransformQuantity)) }
    attr_reader :transform_quantity

    # One of `one_time` or `recurring` depending on whether the price is for a one-time purchase or a recurring (subscription) purchase.
    sig { returns(String) }
    attr_reader :type

    # The unit amount in cents (or local equivalent) to be charged, represented as a whole integer if possible. Only set if `billing_scheme=per_unit`.
    sig { returns(T.nilable(Integer)) }
    attr_reader :unit_amount

    # The unit amount in cents (or local equivalent) to be charged, represented as a decimal string with at most 12 decimal places. Only set if `billing_scheme=per_unit`.
    sig { returns(T.nilable(String)) }
    attr_reader :unit_amount_decimal

    # Always true for a deleted object
    sig { returns(T::Boolean) }
    attr_reader :deleted
  end
end