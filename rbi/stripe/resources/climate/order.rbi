# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Climate
    # Orders represent your intent to purchase a particular Climate product. When you create an order, the
    # payment is deducted from your merchant balance.
    class Order < APIResource
      class Beneficiary < Stripe::StripeObject
        # Publicly displayable name for the end beneficiary of carbon removal.
        sig { returns(String) }
        attr_reader :public_name
      end
      class DeliveryDetail < Stripe::StripeObject
        class Location < Stripe::StripeObject
          # The city where the supplier is located.
          sig { returns(T.nilable(String)) }
          attr_reader :city
          # Two-letter ISO code representing the country where the supplier is located.
          sig { returns(String) }
          attr_reader :country
          # The geographic latitude where the supplier is located.
          sig { returns(T.nilable(Float)) }
          attr_reader :latitude
          # The geographic longitude where the supplier is located.
          sig { returns(T.nilable(Float)) }
          attr_reader :longitude
          # The state/county/province/region where the supplier is located.
          sig { returns(T.nilable(String)) }
          attr_reader :region
        end
        # Time at which the delivery occurred. Measured in seconds since the Unix epoch.
        sig { returns(Integer) }
        attr_reader :delivered_at
        # Specific location of this delivery.
        sig { returns(T.nilable(Location)) }
        attr_reader :location
        # Quantity of carbon removal supplied by this delivery.
        sig { returns(String) }
        attr_reader :metric_tons
        # Once retired, a URL to the registry entry for the tons from this delivery.
        sig { returns(T.nilable(String)) }
        attr_reader :registry_url
        # A supplier of carbon removal.
        sig { returns(Stripe::Climate::Supplier) }
        attr_reader :supplier
      end
      # Total amount of [Frontier](https://frontierclimate.com/)'s service fees in the currency's smallest unit.
      sig { returns(Integer) }
      attr_reader :amount_fees
      # Total amount of the carbon removal in the currency's smallest unit.
      sig { returns(Integer) }
      attr_reader :amount_subtotal
      # Total amount of the order including fees in the currency's smallest unit.
      sig { returns(Integer) }
      attr_reader :amount_total
      # Attribute for field beneficiary
      sig { returns(Beneficiary) }
      attr_reader :beneficiary
      # Time at which the order was canceled. Measured in seconds since the Unix epoch.
      sig { returns(T.nilable(Integer)) }
      attr_reader :canceled_at
      # Reason for the cancellation of this order.
      sig { returns(T.nilable(String)) }
      attr_reader :cancellation_reason
      # For delivered orders, a URL to a delivery certificate for the order.
      sig { returns(T.nilable(String)) }
      attr_reader :certificate
      # Time at which the order was confirmed. Measured in seconds since the Unix epoch.
      sig { returns(T.nilable(Integer)) }
      attr_reader :confirmed_at
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_reader :created
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase, representing the currency for this order.
      sig { returns(String) }
      attr_reader :currency
      # Time at which the order's expected_delivery_year was delayed. Measured in seconds since the Unix epoch.
      sig { returns(T.nilable(Integer)) }
      attr_reader :delayed_at
      # Time at which the order was delivered. Measured in seconds since the Unix epoch.
      sig { returns(T.nilable(Integer)) }
      attr_reader :delivered_at
      # Details about the delivery of carbon removal for this order.
      sig { returns(T::Array[DeliveryDetail]) }
      attr_reader :delivery_details
      # The year this order is expected to be delivered.
      sig { returns(Integer) }
      attr_reader :expected_delivery_year
      # Unique identifier for the object.
      sig { returns(String) }
      attr_reader :id
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      sig { returns(T::Hash[String, String]) }
      attr_reader :metadata
      # Quantity of carbon removal that is included in this order.
      sig { returns(String) }
      attr_reader :metric_tons
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object
      # Unique ID for the Climate `Product` this order is purchasing.
      sig { returns(T.any(String, Stripe::Climate::Product)) }
      attr_reader :product
      # Time at which the order's product was substituted for a different product. Measured in seconds since the Unix epoch.
      sig { returns(T.nilable(Integer)) }
      attr_reader :product_substituted_at
      # The current status of this order.
      sig { returns(String) }
      attr_reader :status
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
      class CreateParams < Stripe::RequestParams
        class Beneficiary < Stripe::RequestParams
          # Publicly displayable name for the end beneficiary of carbon removal.
          sig { returns(String) }
          attr_accessor :public_name
          sig { params(public_name: String).void }
          def initialize(public_name: nil); end
        end
        # Requested amount of carbon removal units. Either this or `metric_tons` must be specified.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :amount
        # Publicly sharable reference for the end beneficiary of carbon removal. Assumed to be the Stripe account if not set.
        sig { returns(T.nilable(::Stripe::Climate::Order::CreateParams::Beneficiary)) }
        attr_accessor :beneficiary
        # Request currency for the order as a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a supported [settlement currency for your account](https://stripe.com/docs/currencies). If omitted, the account's default currency will be used.
        sig { returns(T.nilable(String)) }
        attr_accessor :currency
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_accessor :metadata
        # Requested number of tons for the order. Either this or `amount` must be specified.
        sig { returns(T.nilable(String)) }
        attr_accessor :metric_tons
        # Unique identifier of the Climate product.
        sig { returns(String) }
        attr_accessor :product
        sig {
          params(amount: T.nilable(Integer), beneficiary: T.nilable(::Stripe::Climate::Order::CreateParams::Beneficiary), currency: T.nilable(String), expand: T.nilable(T::Array[String]), metadata: T.nilable(T::Hash[String, String]), metric_tons: T.nilable(String), product: String).void
         }
        def initialize(
          amount: nil,
          beneficiary: nil,
          currency: nil,
          expand: nil,
          metadata: nil,
          metric_tons: nil,
          product: nil
        ); end
      end
      class UpdateParams < Stripe::RequestParams
        class Beneficiary < Stripe::RequestParams
          # Publicly displayable name for the end beneficiary of carbon removal.
          sig { returns(String) }
          attr_accessor :public_name
          sig { params(public_name: String).void }
          def initialize(public_name: nil); end
        end
        # Publicly sharable reference for the end beneficiary of carbon removal. Assumed to be the Stripe account if not set.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::Climate::Order::UpdateParams::Beneficiary)))
         }
        attr_accessor :beneficiary
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_accessor :metadata
        sig {
          params(beneficiary: T.nilable(T.any(String, ::Stripe::Climate::Order::UpdateParams::Beneficiary)), expand: T.nilable(T::Array[String]), metadata: T.nilable(T::Hash[String, String])).void
         }
        def initialize(beneficiary: nil, expand: nil, metadata: nil); end
      end
      class CancelParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      # Cancels a Climate order. You can cancel an order within 24 hours of creation. Stripe refunds the
      # reservation amount_subtotal, but not the amount_fees for user-triggered cancellations. Frontier
      # might cancel reservations if suppliers fail to deliver. If Frontier cancels the reservation, Stripe
      # provides 90 days advance notice and refunds the amount_total.
      sig {
        params(params: T.any(::Stripe::Climate::Order::CancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Climate::Order)
       }
      def cancel(params = {}, opts = {}); end

      # Cancels a Climate order. You can cancel an order within 24 hours of creation. Stripe refunds the
      # reservation amount_subtotal, but not the amount_fees for user-triggered cancellations. Frontier
      # might cancel reservations if suppliers fail to deliver. If Frontier cancels the reservation, Stripe
      # provides 90 days advance notice and refunds the amount_total.
      sig {
        params(order: String, params: T.any(::Stripe::Climate::Order::CancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Climate::Order)
       }
      def self.cancel(order, params = {}, opts = {}); end

      # Creates a Climate order object for a given Climate product. The order will be processed immediately
      # after creation and payment will be deducted your Stripe balance.
      sig {
        params(params: T.any(::Stripe::Climate::Order::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Climate::Order)
       }
      def self.create(params = {}, opts = {}); end

      # Lists all Climate order objects. The orders are returned sorted by creation date, with the
      # most recently created orders appearing first.
      sig {
        params(params: T.any(::Stripe::Climate::Order::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def self.list(params = {}, opts = {}); end

      # Updates the specified order by setting the values of the parameters passed.
      sig {
        params(order: String, params: T.any(::Stripe::Climate::Order::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Climate::Order)
       }
      def self.update(order, params = {}, opts = {}); end
    end
  end
end