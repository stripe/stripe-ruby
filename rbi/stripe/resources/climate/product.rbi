# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Climate
    # A Climate product represents a type of carbon removal unit available for reservation.
    # You can retrieve it to see the current price and availability.
    class Product < APIResource
      class CurrentPricesPerMetricTon < Stripe::StripeObject
        sig { returns(Integer) }
        attr_reader :amount_fees
        sig { returns(Integer) }
        attr_reader :amount_subtotal
        sig { returns(Integer) }
        attr_reader :amount_total
      end
      sig { returns(Integer) }
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      sig { returns(T::Hash[String, CurrentPricesPerMetricTon]) }
      # Current prices for a metric ton of carbon removal in a currency's smallest unit.
      attr_reader :current_prices_per_metric_ton
      sig { returns(T.nilable(Integer)) }
      # The year in which the carbon removal is expected to be delivered.
      attr_reader :delivery_year
      sig { returns(String) }
      # Unique identifier for the object. For convenience, Climate product IDs are human-readable strings
      # that start with `climsku_`. See [carbon removal inventory](https://stripe.com/docs/climate/orders/carbon-removal-inventory)
      # for a list of available carbon removal products.
      attr_reader :id
      sig { returns(T::Boolean) }
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      sig { returns(String) }
      # The quantity of metric tons available for reservation.
      attr_reader :metric_tons_available
      sig { returns(String) }
      # The Climate product's name.
      attr_reader :name
      sig { returns(String) }
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      sig { returns(T::Array[Stripe::Climate::Supplier]) }
      # The carbon removal suppliers that fulfill orders for this Climate product.
      attr_reader :suppliers
    end
  end
end