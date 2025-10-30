# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module DelegatedCheckout
    # A requested session is a session that has been requested by a customer.
    class RequestedSession < APIResource
      extend Stripe::APIOperations::Create
      include Stripe::APIOperations::Save

      OBJECT_NAME = "delegated_checkout.requested_session"
      def self.object_name
        "delegated_checkout.requested_session"
      end

      class FulfillmentDetails < ::Stripe::StripeObject
        class Address < ::Stripe::StripeObject
          # City, district, suburb, town, or village.
          attr_reader :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          attr_reader :country
          # Address line 1, such as the street, PO Box, or company name.
          attr_reader :line1
          # Address line 2, such as the apartment, suite, unit, or building.
          attr_reader :line2
          # ZIP or postal code.
          attr_reader :postal_code
          # State, county, province, or region.
          attr_reader :state

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
              attr_reader :description
              # The display name of the shipping option.
              attr_reader :display_name
              # The earliest delivery time of the shipping option.
              attr_reader :earliest_delivery_time
              # The key of the shipping option.
              attr_reader :key
              # The latest delivery time of the shipping option.
              attr_reader :latest_delivery_time
              # The shipping amount of the shipping option.
              attr_reader :shipping_amount

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The shipping options.
            attr_reader :shipping_options

            def self.inner_class_types
              @inner_class_types = { shipping_options: ShippingOption }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The shipping option.
          attr_reader :shipping
          # The type of the fulfillment option.
          attr_reader :type

          def self.inner_class_types
            @inner_class_types = { shipping: Shipping }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class SelectedFulfillmentOption < ::Stripe::StripeObject
          class Shipping < ::Stripe::StripeObject
            # The shipping option.
            attr_reader :shipping_option

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The shipping option.
          attr_reader :shipping
          # The type of the selected fulfillment option.
          attr_reader :type

          def self.inner_class_types
            @inner_class_types = { shipping: Shipping }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The fulfillment address.
        attr_reader :address
        # The email address for the fulfillment details.
        attr_reader :email
        # The fulfillment options.
        attr_reader :fulfillment_options
        # The name for the fulfillment details.
        attr_reader :name
        # The phone number for the fulfillment details.
        attr_reader :phone
        # The fulfillment option.
        attr_reader :selected_fulfillment_option

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
        attr_reader :description
        # The images of the line item.
        attr_reader :images
        # The key of the line item.
        attr_reader :key
        # The name of the line item.
        attr_reader :name
        # The quantity of the line item.
        attr_reader :quantity
        # The SKU ID of the line item.
        attr_reader :sku_id
        # The unit amount of the line item.
        attr_reader :unit_amount

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class OrderDetails < ::Stripe::StripeObject
        # The URL to the order status.
        attr_reader :order_status_url
        # The seller's order identifier.
        attr_reader :order_id

        def self.inner_class_types
          @inner_class_types = {}
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
        # The amount discount of the total details.
        attr_reader :amount_discount
        # The amount fulfillment of the total details.
        attr_reader :amount_fulfillment
        # The amount tax of the total details.
        attr_reader :amount_tax

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
            attr_reader :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            attr_reader :country
            # Address line 1, such as the street, PO Box, or company name.
            attr_reader :line1
            # Address line 2, such as the apartment, suite, unit, or building.
            attr_reader :line2
            # ZIP or postal code.
            attr_reader :postal_code
            # State, county, province, or region.
            attr_reader :state

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The billing address.
          attr_reader :address
          # The email address for the billing details.
          attr_reader :email
          # The name for the billing details.
          attr_reader :name
          # The phone number for the billing details.
          attr_reader :phone

          def self.inner_class_types
            @inner_class_types = { address: Address }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class Card < ::Stripe::StripeObject
          # The expiry month of the card.
          attr_reader :exp_month
          # The expiry year of the card.
          attr_reader :exp_year
          # The last 4 digits of the card number.
          attr_reader :last4

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The billing details of the payment method.
        attr_reader :billing_details
        # The card details of the payment method.
        attr_reader :card
        # The type of the payment method.
        attr_reader :type

        def self.inner_class_types
          @inner_class_types = { billing_details: BillingDetails, card: Card }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
      # The subtotal amount of the requested session.
      attr_reader :amount_subtotal
      # The total amount of the requested session.
      attr_reader :amount_total
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created_at
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_reader :currency
      # The customer for this requested session.
      attr_reader :customer
      # Time at which the requested session expires. Measured in seconds since the Unix epoch.
      attr_reader :expires_at
      # The details of the fulfillment.
      attr_reader :fulfillment_details
      # Unique identifier for the object.
      attr_reader :id
      # The line items to be purchased.
      attr_reader :line_item_details
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # The details of the order.
      attr_reader :order_details
      # The payment method used for the requested session.
      attr_reader :payment_method
      # Attribute for field seller_details
      attr_reader :seller_details
      # Whether or not the payment method should be saved for future use.
      attr_reader :setup_future_usage
      # The metadata shared with the seller.
      attr_reader :shared_metadata
      # The SPT used for payment.
      attr_reader :shared_payment_issued_token
      # The status of the requested session.
      attr_reader :status
      # Attribute for field total_details
      attr_reader :total_details
      # Time at which the object was last updated. Measured in seconds since the Unix epoch.
      attr_reader :updated_at
      # The preview of the payment method to be created when the requested session is confirmed.
      attr_reader :payment_method_preview

      # Confirms a requested session
      def confirm(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/delegated_checkout/requested_sessions/%<requested_session>s/confirm", { requested_session: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # Confirms a requested session
      def self.confirm(requested_session, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/delegated_checkout/requested_sessions/%<requested_session>s/confirm", { requested_session: CGI.escape(requested_session) }),
          params: params,
          opts: opts
        )
      end

      # Creates a requested session
      def self.create(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/delegated_checkout/requested_sessions",
          params: params,
          opts: opts
        )
      end

      # Expires a requested session
      def expire(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/delegated_checkout/requested_sessions/%<requested_session>s/expire", { requested_session: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # Expires a requested session
      def self.expire(requested_session, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/delegated_checkout/requested_sessions/%<requested_session>s/expire", { requested_session: CGI.escape(requested_session) }),
          params: params,
          opts: opts
        )
      end

      # Updates a requested session
      def self.update(requested_session, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/delegated_checkout/requested_sessions/%<requested_session>s", { requested_session: CGI.escape(requested_session) }),
          params: params,
          opts: opts
        )
      end

      def self.inner_class_types
        @inner_class_types = {
          fulfillment_details: FulfillmentDetails,
          line_item_details: LineItemDetail,
          order_details: OrderDetails,
          seller_details: SellerDetails,
          total_details: TotalDetails,
          payment_method_preview: PaymentMethodPreview,
        }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end
  end
end
