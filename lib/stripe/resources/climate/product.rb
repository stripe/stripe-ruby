# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Climate
    # A Climate product represents a type of carbon removal unit available for reservation.
    # You can retrieve it to see the current price and availability.
    class Product < APIResource
      extend Stripe::APIOperations::List

      OBJECT_NAME = "climate.product"
      def self.object_name
        "climate.product"
      end

      class CurrentPricesPerMetricTon < Stripe::StripeObject
        # Fees for one metric ton of carbon removal in the currency's smallest unit.
        attr_reader :amount_fees
        # Subtotal for one metric ton of carbon removal (excluding fees) in the currency's smallest unit.
        attr_reader :amount_subtotal
        # Total for one metric ton of carbon removal (including fees) in the currency's smallest unit.
        attr_reader :amount_total
      end

      class ListParams < Stripe::RequestParams
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        attr_accessor :limit
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        attr_accessor :starting_after

        def initialize(ending_before: nil, expand: nil, limit: nil, starting_after: nil)
          @ending_before = ending_before
          @expand = expand
          @limit = limit
          @starting_after = starting_after
        end
      end
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      # Current prices for a metric ton of carbon removal in a currency's smallest unit.
      attr_reader :current_prices_per_metric_ton
      # The year in which the carbon removal is expected to be delivered.
      attr_reader :delivery_year
      # Unique identifier for the object. For convenience, Climate product IDs are human-readable strings
      # that start with `climsku_`. See [carbon removal inventory](https://stripe.com/docs/climate/orders/carbon-removal-inventory)
      # for a list of available carbon removal products.
      attr_reader :id
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      # The quantity of metric tons available for reservation.
      attr_reader :metric_tons_available
      # The Climate product's name.
      attr_reader :name
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # The carbon removal suppliers that fulfill orders for this Climate product.
      attr_reader :suppliers

      # Lists all available Climate product objects.
      def self.list(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/climate/products",
          params: params,
          opts: opts
        )
      end
    end
  end
end
