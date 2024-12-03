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
        # The messaging shown to customers in the portal.
        attr_reader :headline
        # A link to the business’s publicly available privacy policy.
        attr_reader :privacy_policy_url
        # A link to the business’s publicly available terms of service.
        attr_reader :terms_of_service_url
      end

      class Features < Stripe::StripeObject
        class CustomerUpdate < Stripe::StripeObject
          # The types of customer updates that are supported. When empty, customers are not updateable.
          attr_reader :allowed_updates
          # Whether the feature is enabled.
          attr_reader :enabled
        end

        class InvoiceHistory < Stripe::StripeObject
          # Whether the feature is enabled.
          attr_reader :enabled
        end

        class PaymentMethodUpdate < Stripe::StripeObject
          # Whether the feature is enabled.
          attr_reader :enabled
        end

        class SubscriptionCancel < Stripe::StripeObject
          class CancellationReason < Stripe::StripeObject
            # Whether the feature is enabled.
            attr_reader :enabled
            # Which cancellation reasons will be given as options to the customer.
            attr_reader :options
          end
          # Attribute for field cancellation_reason
          attr_reader :cancellation_reason
          # Whether the feature is enabled.
          attr_reader :enabled
          # Whether to cancel subscriptions immediately or at the end of the billing period.
          attr_reader :mode
          # Whether to create prorations when canceling subscriptions. Possible values are `none` and `create_prorations`.
          attr_reader :proration_behavior
        end

        class SubscriptionUpdate < Stripe::StripeObject
          class Product < Stripe::StripeObject
            # The list of price IDs which, when subscribed to, a subscription can be updated.
            attr_reader :prices
            # The product ID.
            attr_reader :product
          end

          class ScheduleAtPeriodEnd < Stripe::StripeObject
            class Condition < Stripe::StripeObject
              # The type of condition.
              attr_reader :type
            end
            # List of conditions. When any condition is true, an update will be scheduled at the end of the current period.
            attr_reader :conditions
          end
          # The types of subscription updates that are supported for items listed in the `products` attribute. When empty, subscriptions are not updateable.
          attr_reader :default_allowed_updates
          # Whether the feature is enabled.
          attr_reader :enabled
          # The list of up to 10 products that support subscription updates.
          attr_reader :products
          # Determines how to handle prorations resulting from subscription updates. Valid values are `none`, `create_prorations`, and `always_invoice`. Defaults to a value of `none` if you don't set it during creation.
          attr_reader :proration_behavior
          # Attribute for field schedule_at_period_end
          attr_reader :schedule_at_period_end
        end
        # Attribute for field customer_update
        attr_reader :customer_update
        # Attribute for field invoice_history
        attr_reader :invoice_history
        # Attribute for field payment_method_update
        attr_reader :payment_method_update
        # Attribute for field subscription_cancel
        attr_reader :subscription_cancel
        # Attribute for field subscription_update
        attr_reader :subscription_update
      end

      class LoginPage < Stripe::StripeObject
        # If `true`, a shareable `url` will be generated that will take your customers to a hosted login page for the customer portal.
        #
        # If `false`, the previously generated `url`, if any, will be deactivated.
        attr_reader :enabled
        # A shareable URL to the hosted portal login page. Your customers will be able to log in with their [email](https://stripe.com/docs/api/customers/object#customer_object-email) and receive a link to their customer portal.
        attr_reader :url
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
      def self.list(filters = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/billing_portal/configurations",
          params: filters,
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
