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

      class AffiliateAttribution < ::Stripe::StripeObject
        class Source < ::Stripe::StripeObject
          # The platform of the attribution source.
          attr_reader :platform
          # The type of the attribution source.
          attr_reader :type
          # The URL of the attribution source.
          attr_reader :url

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Agent-scoped campaign identifier.
        attr_reader :campaign_id
        # Agent-scoped creative identifier.
        attr_reader :creative_id
        # Timestamp when the attribution token expires.
        attr_reader :expires_at
        # Agent-issued secret to validate the legitimacy of the source of this data.
        attr_reader :identification_token
        # Timestamp for when the attribution token was issued.
        attr_reader :issued_at
        # Identifier for the attribution agent / affiliate network namespace.
        attr_reader :provider
        # Agent-scoped affiliate/publisher identifier.
        attr_reader :publisher_id
        # Freeform key/value pairs for additional non-sensitive per-agent data.
        attr_reader :shared_metadata
        # Context about where the attribution originated.
        attr_reader :source
        # Agent-scoped sub-tracking identifier.
        attr_reader :sub_id
        # Whether this is the first or last touchpoint.
        attr_reader :touchpoint

        def self.inner_class_types
          @inner_class_types = { source: Source }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class BuyerConsents < ::Stripe::StripeObject
        class Marketing < ::Stripe::StripeObject
          class Option < ::Stripe::StripeObject
            # The marketing channel type.
            attr_reader :channel
            # The description of the marketing consent option.
            attr_reader :description
            # The privacy policy URL for this marketing channel.
            attr_reader :privacy_policy_url

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The available marketing consent options.
          attr_reader :options

          def self.inner_class_types
            @inner_class_types = { options: Option }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The marketing consent options.
        attr_reader :marketing

        def self.inner_class_types
          @inner_class_types = { marketing: Marketing }
        end

        def self.field_remappings
          @field_remappings = {}
        end
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
          # State, county, province, or region ([ISO 3166-2](https://en.wikipedia.org/wiki/ISO_3166-2)).
          attr_reader :state

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class FulfillmentOption < ::Stripe::StripeObject
          class Digital < ::Stripe::StripeObject
            class DigitalOption < ::Stripe::StripeObject
              # The description of the digital fulfillment option.
              attr_reader :description
              # The digital amount of the digital fulfillment option.
              attr_reader :digital_amount
              # The display name of the digital fulfillment option.
              attr_reader :display_name
              # The key of the digital fulfillment option.
              attr_reader :key
              # The line item keys associated with this digital fulfillment option.
              attr_reader :line_item_keys

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The digital options.
            attr_reader :digital_options

            def self.inner_class_types
              @inner_class_types = { digital_options: DigitalOption }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

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
              # The line item keys associated with this shipping option.
              attr_reader :line_item_keys
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
          # The digital fulfillment option.
          attr_reader :digital
          # The shipping option.
          attr_reader :shipping
          # The type of the fulfillment option.
          attr_reader :type

          def self.inner_class_types
            @inner_class_types = { digital: Digital, shipping: Shipping }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class SelectedFulfillmentOption < ::Stripe::StripeObject
          class Digital < ::Stripe::StripeObject
            # The digital option.
            attr_reader :digital_option

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

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
          # The digital fulfillment option.
          attr_reader :digital
          # The shipping option.
          attr_reader :shipping
          # The type of the selected fulfillment option.
          attr_reader :type

          def self.inner_class_types
            @inner_class_types = { digital: Digital, shipping: Shipping }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class SelectedFulfillmentOptionOverride < ::Stripe::StripeObject
          class Digital < ::Stripe::StripeObject
            # The digital option.
            attr_reader :digital_option

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

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
          # The digital fulfillment option.
          attr_reader :digital
          # The line items this fulfillment option applies to.
          attr_reader :line_item_keys
          # The shipping option.
          attr_reader :shipping
          # The type of the selected fulfillment option.
          attr_reader :type

          def self.inner_class_types
            @inner_class_types = { digital: Digital, shipping: Shipping }
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
        # The selected fulfillment option.
        attr_reader :selected_fulfillment_option
        # Per-item fulfillment option overrides.
        attr_reader :selected_fulfillment_option_overrides

        def self.inner_class_types
          @inner_class_types = {
            address: Address,
            fulfillment_options: FulfillmentOption,
            selected_fulfillment_option: SelectedFulfillmentOption,
            selected_fulfillment_option_overrides: SelectedFulfillmentOptionOverride,
          }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class LineItemDetail < ::Stripe::StripeObject
        class ProductDetails < ::Stripe::StripeObject
          class CustomAttribute < ::Stripe::StripeObject
            # The display name of the custom attribute.
            attr_reader :display_name
            # The value of the custom attribute.
            attr_reader :value

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class Disclosure < ::Stripe::StripeObject
            # The content of the disclosure.
            attr_reader :content
            # The content type of the disclosure.
            attr_reader :content_type
            # The type of disclosure.
            attr_reader :type

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Custom attributes for the product.
          attr_reader :custom_attributes
          # The description of the product.
          attr_reader :description
          # Disclosures for the product.
          attr_reader :disclosures
          # The images of the product.
          attr_reader :images
          # The title of the product.
          attr_reader :title

          def self.inner_class_types
            @inner_class_types = { custom_attributes: CustomAttribute, disclosures: Disclosure }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The total discount for this line item. If no discount were applied, defaults to 0.
        attr_reader :amount_discount
        # The total before any discounts or taxes are applied.
        attr_reader :amount_subtotal
        # The fulfillment type of the line item.
        attr_reader :fulfillment_type
        # The key of the line item.
        attr_reader :key
        # Attribute for field product_details
        attr_reader :product_details
        # The quantity of the line item.
        attr_reader :quantity
        # The SKU ID of the line item.
        attr_reader :sku_id
        # The per-unit amount of the item before any discounts or taxes are applied.
        attr_reader :unit_amount

        def self.inner_class_types
          @inner_class_types = { product_details: ProductDetails }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class OrderDetails < ::Stripe::StripeObject
        # The seller's order identifier.
        attr_reader :order_id
        # The URL to the order status.
        attr_reader :order_status_url

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class PaymentMethodOptions < ::Stripe::StripeObject
        class Card < ::Stripe::StripeObject
          # The card brands blocked by the agent.
          attr_reader :brands_blocked

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Card-specific payment method options.
        attr_reader :card
        # The computed displayable card brands.
        attr_reader :displayable_card_brands
        # The computed displayable payment method types.
        attr_reader :displayable_payment_method_types
        # The payment method types excluded by the agent.
        attr_reader :excluded_payment_method_types

        def self.inner_class_types
          @inner_class_types = { card: Card }
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
            # State, county, province, or region ([ISO 3166-2](https://en.wikipedia.org/wiki/ISO_3166-2)).
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

      class RiskDetails < ::Stripe::StripeObject
        class ClientDeviceMetadataDetails < ::Stripe::StripeObject
          # The radar session for the client device.
          attr_reader :radar_session
          # The referrer of the client device.
          attr_reader :referrer
          # The remote IP address of the client device.
          attr_reader :remote_ip
          # The time spent on the page by the client device.
          attr_reader :time_on_page_ms
          # The user agent of the client device.
          attr_reader :user_agent

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The risk metadata for the client device.
        attr_reader :client_device_metadata_details

        def self.inner_class_types
          @inner_class_types = { client_device_metadata_details: ClientDeviceMetadataDetails }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class SellerDetails < ::Stripe::StripeObject
        class MarketplaceSellerDetails < ::Stripe::StripeObject
          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The card brands supported by the seller.
        attr_reader :card_brands
        # The marketplace seller details.
        attr_reader :marketplace_seller_details
        # The network profile of the seller.
        attr_reader :network_profile
        # The payment method types supported by the seller.
        attr_reader :payment_method_types
        # The URL to the seller's privacy notice.
        attr_reader :privacy_notice_url
        # The URL to the seller's return policy.
        attr_reader :return_policy_url
        # The URL to the seller's store policy.
        attr_reader :store_policy_url
        # The URL to the seller's terms of service.
        attr_reader :terms_of_service_url

        def self.inner_class_types
          @inner_class_types = { marketplace_seller_details: MarketplaceSellerDetails }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class TotalDetails < ::Stripe::StripeObject
        class ApplicableFee < ::Stripe::StripeObject
          # The amount of the applicable fee.
          attr_reader :amount
          # The description of the applicable fee.
          attr_reader :description
          # The display name of the applicable fee.
          attr_reader :display_name

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The amount of order-level discounts applied to the cart. The total discount amount for this session can be computed by summing the cart discount and the item discounts.
        attr_reader :amount_cart_discount
        # The amount fulfillment of the total details.
        attr_reader :amount_fulfillment
        # The amount of item-level discounts applied to the cart. The total discount amount for this session can be computed by summing the cart discount and the item discounts.
        attr_reader :amount_items_discount
        # The amount tax of the total details.
        attr_reader :amount_tax
        # The applicable fees of the total details.
        attr_reader :applicable_fees

        def self.inner_class_types
          @inner_class_types = { applicable_fees: ApplicableFee }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Affiliate attribution data associated with this requested session.
      attr_reader :affiliate_attributions
      # The subtotal amount of the requested session.
      attr_reader :amount_subtotal
      # The total amount of the requested session.
      attr_reader :amount_total
      # The buyer consent options for this requested session, including marketing preferences.
      attr_reader :buyer_consents
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
      # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
      attr_reader :livemode
      # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # The details of the order.
      attr_reader :order_details
      # The payment method used for the requested session.
      attr_reader :payment_method
      # The payment method options for this requested session.
      attr_reader :payment_method_options
      # The preview of the payment method to be created when the requested session is confirmed.
      attr_reader :payment_method_preview
      # The risk details of the requested session.
      attr_reader :risk_details
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
          affiliate_attributions: AffiliateAttribution,
          buyer_consents: BuyerConsents,
          fulfillment_details: FulfillmentDetails,
          line_item_details: LineItemDetail,
          order_details: OrderDetails,
          payment_method_options: PaymentMethodOptions,
          payment_method_preview: PaymentMethodPreview,
          risk_details: RiskDetails,
          seller_details: SellerDetails,
          total_details: TotalDetails,
        }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end
  end
end
