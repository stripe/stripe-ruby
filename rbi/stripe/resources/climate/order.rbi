# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Climate
    # Orders represent your intent to purchase a particular Climate product. When you create an order, the
    # payment is deducted from your merchant balance.
    class Order < APIResource
      class Beneficiary < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :public_name
      end
      class DeliveryDetail < Stripe::StripeObject
        class Location < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :city
          sig { returns(String) }
          attr_reader :country
          sig { returns(T.nilable(Float)) }
          attr_reader :latitude
          sig { returns(T.nilable(Float)) }
          attr_reader :longitude
          sig { returns(T.nilable(String)) }
          attr_reader :region
        end
        sig { returns(Integer) }
        attr_reader :delivered_at
        sig { returns(T.nilable(Location)) }
        attr_reader :location
        sig { returns(String) }
        attr_reader :metric_tons
        sig { returns(T.nilable(String)) }
        attr_reader :registry_url
        sig { returns(Stripe::Climate::Supplier) }
        attr_reader :supplier
      end
      sig { returns(Integer) }
      # Total amount of [Frontier](https://frontierclimate.com/)'s service fees in the currency's smallest unit.
      attr_reader :amount_fees
      sig { returns(Integer) }
      # Total amount of the carbon removal in the currency's smallest unit.
      attr_reader :amount_subtotal
      sig { returns(Integer) }
      # Total amount of the order including fees in the currency's smallest unit.
      attr_reader :amount_total
      sig { returns(Beneficiary) }
      # Attribute for field beneficiary
      attr_reader :beneficiary
      sig { returns(T.nilable(Integer)) }
      # Time at which the order was canceled. Measured in seconds since the Unix epoch.
      attr_reader :canceled_at
      sig { returns(T.nilable(String)) }
      # Reason for the cancellation of this order.
      attr_reader :cancellation_reason
      sig { returns(T.nilable(String)) }
      # For delivered orders, a URL to a delivery certificate for the order.
      attr_reader :certificate
      sig { returns(T.nilable(Integer)) }
      # Time at which the order was confirmed. Measured in seconds since the Unix epoch.
      attr_reader :confirmed_at
      sig { returns(Integer) }
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      sig { returns(String) }
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase, representing the currency for this order.
      attr_reader :currency
      sig { returns(T.nilable(Integer)) }
      # Time at which the order's expected_delivery_year was delayed. Measured in seconds since the Unix epoch.
      attr_reader :delayed_at
      sig { returns(T.nilable(Integer)) }
      # Time at which the order was delivered. Measured in seconds since the Unix epoch.
      attr_reader :delivered_at
      sig { returns(T::Array[DeliveryDetail]) }
      # Details about the delivery of carbon removal for this order.
      attr_reader :delivery_details
      sig { returns(Integer) }
      # The year this order is expected to be delivered.
      attr_reader :expected_delivery_year
      sig { returns(String) }
      # Unique identifier for the object.
      attr_reader :id
      sig { returns(T::Boolean) }
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      sig { returns(T::Hash[String, String]) }
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata
      sig { returns(String) }
      # Quantity of carbon removal that is included in this order.
      attr_reader :metric_tons
      sig { returns(String) }
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      sig { returns(T.any(String, Stripe::Climate::Product)) }
      # Unique ID for the Climate `Product` this order is purchasing.
      attr_reader :product
      sig { returns(T.nilable(Integer)) }
      # Time at which the order's product was substituted for a different product. Measured in seconds since the Unix epoch.
      attr_reader :product_substituted_at
      sig { returns(String) }
      # The current status of this order.
      attr_reader :status
    end
  end
end