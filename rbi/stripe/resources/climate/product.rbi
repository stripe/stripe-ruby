# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Climate
    # A Climate product represents a type of carbon removal unit available for reservation.
    # You can retrieve it to see the current price and availability.
    class Product < APIResource
      class CurrentPricesPerMetricTon < Stripe::StripeObject
        # Fees for one metric ton of carbon removal in the currency's smallest unit.
        sig { returns(Integer) }
        attr_reader :amount_fees
        # Subtotal for one metric ton of carbon removal (excluding fees) in the currency's smallest unit.
        sig { returns(Integer) }
        attr_reader :amount_subtotal
        # Total for one metric ton of carbon removal (including fees) in the currency's smallest unit.
        sig { returns(Integer) }
        attr_reader :amount_total
      end
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_reader :created

      # Current prices for a metric ton of carbon removal in a currency's smallest unit.
      sig { returns(T::Hash[String, CurrentPricesPerMetricTon]) }
      attr_reader :current_prices_per_metric_ton

      # The year in which the carbon removal is expected to be delivered.
      sig { returns(T.nilable(Integer)) }
      attr_reader :delivery_year

      # Unique identifier for the object. For convenience, Climate product IDs are human-readable strings
      # that start with `climsku_`. See [carbon removal inventory](https://stripe.com/docs/climate/orders/carbon-removal-inventory)
      # for a list of available carbon removal products.
      sig { returns(String) }
      attr_reader :id

      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode

      # The quantity of metric tons available for reservation.
      sig { returns(String) }
      attr_reader :metric_tons_available

      # The Climate product's name.
      sig { returns(String) }
      attr_reader :name

      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object

      # The carbon removal suppliers that fulfill orders for this Climate product.
      sig { returns(T::Array[Stripe::Climate::Supplier]) }
      attr_reader :suppliers
    end
  end
end