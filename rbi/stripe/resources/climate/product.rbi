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
        sig {
          params(ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String)).void
         }
        def initialize(ending_before: nil, expand: nil, limit: nil, starting_after: nil); end
      end
      # Lists all available Climate product objects.
      sig {
        params(params: T.any(::Stripe::Climate::Product::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def self.list(params = {}, opts = {}); end
    end
  end
end