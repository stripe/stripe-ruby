# File generated from our OpenAPI spec
# frozen_string_literal: true

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
        sig { returns(T.nilable(Integer)) }
        attr_reader :maximum
        sig { returns(T.nilable(Integer)) }
        attr_reader :minimum
        sig { returns(T.nilable(Integer)) }
        attr_reader :preset
      end
      class Tier < Stripe::StripeObject
        sig { returns(T.nilable(Integer)) }
        attr_reader :flat_amount
        sig { returns(T.nilable(String)) }
        attr_reader :flat_amount_decimal
        sig { returns(T.nilable(Integer)) }
        attr_reader :unit_amount
        sig { returns(T.nilable(String)) }
        attr_reader :unit_amount_decimal
        sig { returns(T.nilable(Integer)) }
        attr_reader :up_to
      end
      sig { returns(T.nilable(CustomUnitAmount)) }
      attr_reader :custom_unit_amount
      sig { returns(T.nilable(String)) }
      attr_reader :tax_behavior
      sig { returns(T::Array[Tier]) }
      attr_reader :tiers
      sig { returns(T.nilable(Integer)) }
      attr_reader :unit_amount
      sig { returns(T.nilable(String)) }
      attr_reader :unit_amount_decimal
    end
    class CustomUnitAmount < Stripe::StripeObject
      sig { returns(T.nilable(Integer)) }
      attr_reader :maximum
      sig { returns(T.nilable(Integer)) }
      attr_reader :minimum
      sig { returns(T.nilable(Integer)) }
      attr_reader :preset
    end
    class MigrateTo < Stripe::StripeObject
      sig { returns(String) }
      attr_reader :behavior
      sig { returns(Integer) }
      attr_reader :effective_after
      sig { returns(String) }
      attr_reader :price
    end
    class Recurring < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :aggregate_usage
      sig { returns(String) }
      attr_reader :interval
      sig { returns(Integer) }
      attr_reader :interval_count
      sig { returns(T.nilable(String)) }
      attr_reader :meter
      sig { returns(T.nilable(Integer)) }
      attr_reader :trial_period_days
      sig { returns(String) }
      attr_reader :usage_type
    end
    class Tier < Stripe::StripeObject
      sig { returns(T.nilable(Integer)) }
      attr_reader :flat_amount
      sig { returns(T.nilable(String)) }
      attr_reader :flat_amount_decimal
      sig { returns(T.nilable(Integer)) }
      attr_reader :unit_amount
      sig { returns(T.nilable(String)) }
      attr_reader :unit_amount_decimal
      sig { returns(T.nilable(Integer)) }
      attr_reader :up_to
    end
    class TransformQuantity < Stripe::StripeObject
      sig { returns(Integer) }
      attr_reader :divide_by
      sig { returns(String) }
      attr_reader :round
    end
    sig { returns(T::Boolean) }
    # Whether the price can be used for new purchases.
    attr_reader :active
    sig { returns(String) }
    # Describes how to compute the price per period. Either `per_unit` or `tiered`. `per_unit` indicates that the fixed amount (specified in `unit_amount` or `unit_amount_decimal`) will be charged per unit in `quantity` (for prices with `usage_type=licensed`), or per unit of total usage (for prices with `usage_type=metered`). `tiered` indicates that the unit pricing will be computed using a tiering strategy as defined using the `tiers` and `tiers_mode` attributes.
    attr_reader :billing_scheme
    sig { returns(Integer) }
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    sig { returns(String) }
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    attr_reader :currency
    sig { returns(T::Hash[String, CurrencyOptions]) }
    # Prices defined in each available currency option. Each key must be a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html) and a [supported currency](https://stripe.com/docs/currencies).
    attr_reader :currency_options
    sig { returns(T.nilable(CustomUnitAmount)) }
    # When set, provides configuration for the amount to be adjusted by the customer during Checkout Sessions and Payment Links.
    attr_reader :custom_unit_amount
    sig { returns(String) }
    # Unique identifier for the object.
    attr_reader :id
    sig { returns(T::Boolean) }
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    sig { returns(T.nilable(String)) }
    # A lookup key used to retrieve prices dynamically from a static string. This may be up to 200 characters.
    attr_reader :lookup_key
    sig { returns(T::Hash[String, String]) }
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    sig { returns(T.nilable(MigrateTo)) }
    # Subscriptions using this price will be migrated to use the new referenced price.
    attr_reader :migrate_to
    sig { returns(T.nilable(String)) }
    # A brief description of the price, hidden from customers.
    attr_reader :nickname
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    sig { returns(T.any(String, Stripe::Product)) }
    # The ID of the product this price is associated with.
    attr_reader :product
    sig { returns(T.nilable(Recurring)) }
    # The recurring components of a price such as `interval` and `usage_type`.
    attr_reader :recurring
    sig { returns(T.nilable(String)) }
    # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
    attr_reader :tax_behavior
    sig { returns(T::Array[Tier]) }
    # Each element represents a pricing tier. This parameter requires `billing_scheme` to be set to `tiered`. See also the documentation for `billing_scheme`.
    attr_reader :tiers
    sig { returns(T.nilable(String)) }
    # Defines if the tiering price should be `graduated` or `volume` based. In `volume`-based tiering, the maximum quantity within a period determines the per unit price. In `graduated` tiering, pricing can change as the quantity grows.
    attr_reader :tiers_mode
    sig { returns(T.nilable(TransformQuantity)) }
    # Apply a transformation to the reported usage or set quantity before computing the amount billed. Cannot be combined with `tiers`.
    attr_reader :transform_quantity
    sig { returns(String) }
    # One of `one_time` or `recurring` depending on whether the price is for a one-time purchase or a recurring (subscription) purchase.
    attr_reader :type
    sig { returns(T.nilable(Integer)) }
    # The unit amount in cents (or local equivalent) to be charged, represented as a whole integer if possible. Only set if `billing_scheme=per_unit`.
    attr_reader :unit_amount
    sig { returns(T.nilable(String)) }
    # The unit amount in cents (or local equivalent) to be charged, represented as a decimal string with at most 12 decimal places. Only set if `billing_scheme=per_unit`.
    attr_reader :unit_amount_decimal
    sig { returns(T::Boolean) }
    # Always true for a deleted object
    attr_reader :deleted
  end
end