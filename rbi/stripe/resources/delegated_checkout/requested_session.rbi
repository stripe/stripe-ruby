# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module DelegatedCheckout
    # A requested session is a session that has been requested by a customer.
    class RequestedSession < APIResource
      class FulfillmentDetails < ::Stripe::StripeObject
        class Address < ::Stripe::StripeObject
          # City, district, suburb, town, or village.
          sig { returns(T.nilable(String)) }
          def city; end
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(T.nilable(String)) }
          def country; end
          # Address line 1, such as the street, PO Box, or company name.
          sig { returns(T.nilable(String)) }
          def line1; end
          # Address line 2, such as the apartment, suite, unit, or building.
          sig { returns(T.nilable(String)) }
          def line2; end
          # ZIP or postal code.
          sig { returns(T.nilable(String)) }
          def postal_code; end
          # State, county, province, or region.
          sig { returns(T.nilable(String)) }
          def state; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class FulfillmentOption < ::Stripe::StripeObject
          class Shipping < ::Stripe::StripeObject
            class ShippingOption < ::Stripe::StripeObject
              # The description of the shipping option.
              sig { returns(T.nilable(String)) }
              def description; end
              # The display name of the shipping option.
              sig { returns(String) }
              def display_name; end
              # The earliest delivery time of the shipping option.
              sig { returns(T.nilable(Integer)) }
              def earliest_delivery_time; end
              # The key of the shipping option.
              sig { returns(String) }
              def key; end
              # The latest delivery time of the shipping option.
              sig { returns(T.nilable(Integer)) }
              def latest_delivery_time; end
              # The shipping amount of the shipping option.
              sig { returns(Integer) }
              def shipping_amount; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The shipping options.
            sig { returns(T.nilable(T::Array[ShippingOption])) }
            def shipping_options; end
            def self.inner_class_types
              @inner_class_types = {shipping_options: ShippingOption}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The shipping option.
          sig { returns(T.nilable(Shipping)) }
          def shipping; end
          # The type of the fulfillment option.
          sig { returns(String) }
          def type; end
          def self.inner_class_types
            @inner_class_types = {shipping: Shipping}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class SelectedFulfillmentOption < ::Stripe::StripeObject
          class Shipping < ::Stripe::StripeObject
            # The shipping option.
            sig { returns(T.nilable(String)) }
            def shipping_option; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The shipping option.
          sig { returns(T.nilable(Shipping)) }
          def shipping; end
          # The type of the selected fulfillment option.
          sig { returns(String) }
          def type; end
          def self.inner_class_types
            @inner_class_types = {shipping: Shipping}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The fulfillment address.
        sig { returns(T.nilable(Address)) }
        def address; end
        # The email address for the fulfillment details.
        sig { returns(T.nilable(String)) }
        def email; end
        # The fulfillment options.
        sig { returns(T.nilable(T::Array[FulfillmentOption])) }
        def fulfillment_options; end
        # The name for the fulfillment details.
        sig { returns(T.nilable(String)) }
        def name; end
        # The phone number for the fulfillment details.
        sig { returns(T.nilable(String)) }
        def phone; end
        # The fulfillment option.
        sig { returns(T.nilable(SelectedFulfillmentOption)) }
        def selected_fulfillment_option; end
        def self.inner_class_types
          @inner_class_types = {
            address: Address,
            fulfillment_options: FulfillmentOption,
            selected_fulfillment_option: SelectedFulfillmentOption,
          }
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class LineItemDetail < ::Stripe::StripeObject
        # The description of the line item.
        sig { returns(T.nilable(String)) }
        def description; end
        # The images of the line item.
        sig { returns(T.nilable(T::Array[String])) }
        def images; end
        # The key of the line item.
        sig { returns(String) }
        def key; end
        # The name of the line item.
        sig { returns(String) }
        def name; end
        # The quantity of the line item.
        sig { returns(Integer) }
        def quantity; end
        # The SKU ID of the line item.
        sig { returns(String) }
        def sku_id; end
        # The per-unit amount of the item before any discounts or taxes are applied.
        sig { returns(Integer) }
        def unit_amount; end
        # The total discount for this line item. If no discount were applied, defaults to 0.
        sig { returns(Integer) }
        def amount_discount; end
        # The total before any discounts or taxes are applied.
        sig { returns(Integer) }
        def amount_subtotal; end
        # The total after discounts but before taxes are applied.
        sig { returns(Integer) }
        def amount_subtotal_after_discount; end
        # The total after discounts and taxes.
        sig { returns(Integer) }
        def amount_total; end
        # The per-unit amount of the item after discounts but before taxes are applied.
        sig { returns(Integer) }
        def unit_amount_after_discount; end
        # The per-unit discount amount. If no discount were applied, defaults to 0.
        sig { returns(Integer) }
        def unit_discount; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class OrderDetails < ::Stripe::StripeObject
        # The seller's order identifier.
        sig { returns(T.nilable(String)) }
        def order_id; end
        # The URL to the order status.
        sig { returns(T.nilable(String)) }
        def order_status_url; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class PaymentMethodPreview < ::Stripe::StripeObject
        class BillingDetails < ::Stripe::StripeObject
          class Address < ::Stripe::StripeObject
            # City, district, suburb, town, or village.
            sig { returns(String) }
            def city; end
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(String) }
            def country; end
            # Address line 1, such as the street, PO Box, or company name.
            sig { returns(String) }
            def line1; end
            # Address line 2, such as the apartment, suite, unit, or building.
            sig { returns(T.nilable(String)) }
            def line2; end
            # ZIP or postal code.
            sig { returns(String) }
            def postal_code; end
            # State, county, province, or region.
            sig { returns(String) }
            def state; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The billing address.
          sig { returns(T.nilable(Address)) }
          def address; end
          # The email address for the billing details.
          sig { returns(T.nilable(String)) }
          def email; end
          # The name for the billing details.
          sig { returns(T.nilable(String)) }
          def name; end
          # The phone number for the billing details.
          sig { returns(T.nilable(String)) }
          def phone; end
          def self.inner_class_types
            @inner_class_types = {address: Address}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class Card < ::Stripe::StripeObject
          # The expiry month of the card.
          sig { returns(Integer) }
          def exp_month; end
          # The expiry year of the card.
          sig { returns(Integer) }
          def exp_year; end
          # The last 4 digits of the card number.
          sig { returns(String) }
          def last4; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The billing details of the payment method.
        sig { returns(T.nilable(BillingDetails)) }
        def billing_details; end
        # The card details of the payment method.
        sig { returns(T.nilable(Card)) }
        def card; end
        # The type of the payment method.
        sig { returns(String) }
        def type; end
        def self.inner_class_types
          @inner_class_types = {billing_details: BillingDetails, card: Card}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class SellerDetails < ::Stripe::StripeObject
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class TotalDetails < ::Stripe::StripeObject
        class ApplicableFee < ::Stripe::StripeObject
          # The amount of the applicable fee.
          sig { returns(Integer) }
          def amount; end
          # The description of the applicable fee.
          sig { returns(T.nilable(String)) }
          def description; end
          # The display name of the applicable fee.
          sig { returns(String) }
          def display_name; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The amount discount of the total details.
        sig { returns(T.nilable(Integer)) }
        def amount_discount; end
        # The amount fulfillment of the total details.
        sig { returns(T.nilable(Integer)) }
        def amount_fulfillment; end
        # The amount tax of the total details.
        sig { returns(T.nilable(Integer)) }
        def amount_tax; end
        # Total of all items after discounts but before taxes are applied.
        sig { returns(T.nilable(Integer)) }
        def amount_subtotal_after_discount; end
        # The applicable fees of the total details.
        sig { returns(T.nilable(T::Array[ApplicableFee])) }
        def applicable_fees; end
        def self.inner_class_types
          @inner_class_types = {applicable_fees: ApplicableFee}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # The subtotal amount of the requested session.
      sig { returns(Integer) }
      def amount_subtotal; end
      # The total amount of the requested session.
      sig { returns(Integer) }
      def amount_total; end
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      def created_at; end
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(String) }
      def currency; end
      # The customer for this requested session.
      sig { returns(T.nilable(String)) }
      def customer; end
      # Time at which the requested session expires. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      def expires_at; end
      # The details of the fulfillment.
      sig { returns(T.nilable(FulfillmentDetails)) }
      def fulfillment_details; end
      # Unique identifier for the object.
      sig { returns(String) }
      def id; end
      # The line items to be purchased.
      sig { returns(T::Array[LineItemDetail]) }
      def line_item_details; end
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      def livemode; end
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      sig { returns(T.nilable(T::Hash[String, String])) }
      def metadata; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
      # The details of the order.
      sig { returns(T.nilable(OrderDetails)) }
      def order_details; end
      # The payment method used for the requested session.
      sig { returns(T.nilable(String)) }
      def payment_method; end
      # The preview of the payment method to be created when the requested session is confirmed.
      sig { returns(T.nilable(PaymentMethodPreview)) }
      def payment_method_preview; end
      # Attribute for field seller_details
      sig { returns(SellerDetails) }
      def seller_details; end
      # Whether or not the payment method should be saved for future use.
      sig { returns(T.nilable(String)) }
      def setup_future_usage; end
      # The metadata shared with the seller.
      sig { returns(T.nilable(T::Hash[String, String])) }
      def shared_metadata; end
      # The SPT used for payment.
      sig { returns(T.nilable(String)) }
      def shared_payment_issued_token; end
      # The status of the requested session.
      sig { returns(String) }
      def status; end
      # Attribute for field total_details
      sig { returns(TotalDetails) }
      def total_details; end
      # Time at which the object was last updated. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      def updated_at; end
      # Confirms a requested session
      sig {
        params(params: T.any(::Stripe::DelegatedCheckout::RequestedSessionConfirmParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::DelegatedCheckout::RequestedSession)
       }
      def confirm(params = {}, opts = {}); end

      # Confirms a requested session
      sig {
        params(requested_session: String, params: T.any(::Stripe::DelegatedCheckout::RequestedSessionConfirmParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::DelegatedCheckout::RequestedSession)
       }
      def self.confirm(requested_session, params = {}, opts = {}); end

      # Creates a requested session
      sig {
        params(params: T.any(::Stripe::DelegatedCheckout::RequestedSessionCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::DelegatedCheckout::RequestedSession)
       }
      def self.create(params = {}, opts = {}); end

      # Expires a requested session
      sig {
        params(params: T.any(::Stripe::DelegatedCheckout::RequestedSessionExpireParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::DelegatedCheckout::RequestedSession)
       }
      def expire(params = {}, opts = {}); end

      # Expires a requested session
      sig {
        params(requested_session: String, params: T.any(::Stripe::DelegatedCheckout::RequestedSessionExpireParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::DelegatedCheckout::RequestedSession)
       }
      def self.expire(requested_session, params = {}, opts = {}); end

      # Updates a requested session
      sig {
        params(requested_session: String, params: T.any(::Stripe::DelegatedCheckout::RequestedSessionUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::DelegatedCheckout::RequestedSession)
       }
      def self.update(requested_session, params = {}, opts = {}); end
    end
  end
end