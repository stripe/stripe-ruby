# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module BillingPortal
    # A portal configuration describes the functionality and behavior of a portal session.
    class Configuration < APIResource
      extend Stripe::APIOperations::Create
      extend Stripe::APIOperations::List
      include Stripe::APIOperations::Save

      OBJECT_NAME = "billing_portal.configuration"
      def self.object_name
        "billing_portal.configuration"
      end

      class BusinessProfile < Stripe::StripeObject
        attr_reader :headline, :privacy_policy_url, :terms_of_service_url
      end

      class Features < Stripe::StripeObject
        class CustomerUpdate < Stripe::StripeObject
          attr_reader :allowed_updates, :enabled
        end

        class InvoiceHistory < Stripe::StripeObject
          attr_reader :enabled
        end

        class PaymentMethodUpdate < Stripe::StripeObject
          attr_reader :enabled
        end

        class SubscriptionCancel < Stripe::StripeObject
          class CancellationReason < Stripe::StripeObject
            attr_reader :enabled, :options
          end
          attr_reader :cancellation_reason, :enabled, :mode, :proration_behavior
        end

        class SubscriptionUpdate < Stripe::StripeObject
          class Product < Stripe::StripeObject
            attr_reader :prices, :product
          end

          class ScheduleAtPeriodEnd < Stripe::StripeObject
            class Condition < Stripe::StripeObject
              attr_reader :type
            end
            attr_reader :conditions
          end
          attr_reader :default_allowed_updates, :enabled, :products, :proration_behavior, :schedule_at_period_end
        end
        attr_reader :customer_update, :invoice_history, :payment_method_update, :subscription_cancel, :subscription_update
      end

      class LoginPage < Stripe::StripeObject
        attr_reader :enabled, :url
      end
      # Whether the configuration is active and can be used to create portal sessions.
      attr_reader :active
      # ID of the Connect Application that created the configuration.
      attr_reader :application
      # Attribute for field business_profile
      attr_reader :business_profile
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      # The default URL to redirect customers to when they click on the portal's link to return to your website. This can be [overriden](https://stripe.com/docs/api/customer_portal/sessions/create#create_portal_session-return_url) when creating the session.
      attr_reader :default_return_url
      # Attribute for field features
      attr_reader :features
      # Unique identifier for the object.
      attr_reader :id
      # Whether the configuration is the default. If `true`, this configuration can be managed in the Dashboard and portal sessions will use this configuration unless it is overriden when creating the session.
      attr_reader :is_default
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      # Attribute for field login_page
      attr_reader :login_page
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # Time at which the object was last updated. Measured in seconds since the Unix epoch.
      attr_reader :updated

      # Creates a configuration that describes the functionality and behavior of a PortalSession
      def self.create(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/billing_portal/configurations",
          params: params,
          opts: opts
        )
      end

      # Returns a list of configurations that describe the functionality of the customer portal.
      def self.list(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/billing_portal/configurations",
          params: params,
          opts: opts
        )
      end

      # Updates a configuration that describes the functionality of the customer portal.
      def self.update(id, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/billing_portal/configurations/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts
        )
      end
    end
  end
end
