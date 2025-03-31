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

      class ListParams < Stripe::RequestParams
        # Only return configurations that are active or inactive (e.g., pass `true` to only list active configurations).
        attr_accessor :active
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # Only return the default or non-default configurations (e.g., pass `true` to only list the default configuration).
        attr_accessor :is_default
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        attr_accessor :limit
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        attr_accessor :starting_after

        def initialize(
          active: nil,
          ending_before: nil,
          expand: nil,
          is_default: nil,
          limit: nil,
          starting_after: nil
        )
          @active = active
          @ending_before = ending_before
          @expand = expand
          @is_default = is_default
          @limit = limit
          @starting_after = starting_after
        end
      end

      class CreateParams < Stripe::RequestParams
        class BusinessProfile < Stripe::RequestParams
          # The messaging shown to customers in the portal.
          attr_accessor :headline
          # A link to the business’s publicly available privacy policy.
          attr_accessor :privacy_policy_url
          # A link to the business’s publicly available terms of service.
          attr_accessor :terms_of_service_url

          def initialize(headline: nil, privacy_policy_url: nil, terms_of_service_url: nil)
            @headline = headline
            @privacy_policy_url = privacy_policy_url
            @terms_of_service_url = terms_of_service_url
          end
        end

        class Features < Stripe::RequestParams
          class CustomerUpdate < Stripe::RequestParams
            # The types of customer updates that are supported. When empty, customers are not updateable.
            attr_accessor :allowed_updates
            # Whether the feature is enabled.
            attr_accessor :enabled

            def initialize(allowed_updates: nil, enabled: nil)
              @allowed_updates = allowed_updates
              @enabled = enabled
            end
          end

          class InvoiceHistory < Stripe::RequestParams
            # Whether the feature is enabled.
            attr_accessor :enabled

            def initialize(enabled: nil)
              @enabled = enabled
            end
          end

          class PaymentMethodUpdate < Stripe::RequestParams
            # Whether the feature is enabled.
            attr_accessor :enabled

            def initialize(enabled: nil)
              @enabled = enabled
            end
          end

          class SubscriptionCancel < Stripe::RequestParams
            class CancellationReason < Stripe::RequestParams
              # Whether the feature is enabled.
              attr_accessor :enabled
              # Which cancellation reasons will be given as options to the customer.
              attr_accessor :options

              def initialize(enabled: nil, options: nil)
                @enabled = enabled
                @options = options
              end
            end
            # Whether the cancellation reasons will be collected in the portal and which options are exposed to the customer
            attr_accessor :cancellation_reason
            # Whether the feature is enabled.
            attr_accessor :enabled
            # Whether to cancel subscriptions immediately or at the end of the billing period.
            attr_accessor :mode
            # Whether to create prorations when canceling subscriptions. Possible values are `none` and `create_prorations`, which is only compatible with `mode=immediately`. Passing `always_invoice` will result in an error. No prorations are generated when canceling a subscription at the end of its natural billing period.
            attr_accessor :proration_behavior

            def initialize(
              cancellation_reason: nil,
              enabled: nil,
              mode: nil,
              proration_behavior: nil
            )
              @cancellation_reason = cancellation_reason
              @enabled = enabled
              @mode = mode
              @proration_behavior = proration_behavior
            end
          end

          class SubscriptionUpdate < Stripe::RequestParams
            class Product < Stripe::RequestParams
              # The list of price IDs for the product that a subscription can be updated to.
              attr_accessor :prices
              # The product id.
              attr_accessor :product

              def initialize(prices: nil, product: nil)
                @prices = prices
                @product = product
              end
            end

            class ScheduleAtPeriodEnd < Stripe::RequestParams
              class Condition < Stripe::RequestParams
                # The type of condition.
                attr_accessor :type

                def initialize(type: nil)
                  @type = type
                end
              end
              # List of conditions. When any condition is true, the update will be scheduled at the end of the current period.
              attr_accessor :conditions

              def initialize(conditions: nil)
                @conditions = conditions
              end
            end
            # The types of subscription updates that are supported. When empty, subscriptions are not updateable.
            attr_accessor :default_allowed_updates
            # Whether the feature is enabled.
            attr_accessor :enabled
            # The list of up to 10 products that support subscription updates.
            attr_accessor :products
            # Determines how to handle prorations resulting from subscription updates. Valid values are `none`, `create_prorations`, and `always_invoice`.
            attr_accessor :proration_behavior
            # Setting to control when an update should be scheduled at the end of the period instead of applying immediately.
            attr_accessor :schedule_at_period_end

            def initialize(
              default_allowed_updates: nil,
              enabled: nil,
              products: nil,
              proration_behavior: nil,
              schedule_at_period_end: nil
            )
              @default_allowed_updates = default_allowed_updates
              @enabled = enabled
              @products = products
              @proration_behavior = proration_behavior
              @schedule_at_period_end = schedule_at_period_end
            end
          end
          # Information about updating the customer details in the portal.
          attr_accessor :customer_update
          # Information about showing the billing history in the portal.
          attr_accessor :invoice_history
          # Information about updating payment methods in the portal.
          attr_accessor :payment_method_update
          # Information about canceling subscriptions in the portal.
          attr_accessor :subscription_cancel
          # Information about updating subscriptions in the portal.
          attr_accessor :subscription_update

          def initialize(
            customer_update: nil,
            invoice_history: nil,
            payment_method_update: nil,
            subscription_cancel: nil,
            subscription_update: nil
          )
            @customer_update = customer_update
            @invoice_history = invoice_history
            @payment_method_update = payment_method_update
            @subscription_cancel = subscription_cancel
            @subscription_update = subscription_update
          end
        end

        class LoginPage < Stripe::RequestParams
          # Set to `true` to generate a shareable URL [`login_page.url`](https://stripe.com/docs/api/customer_portal/configuration#portal_configuration_object-login_page-url) that will take your customers to a hosted login page for the customer portal.
          attr_accessor :enabled

          def initialize(enabled: nil)
            @enabled = enabled
          end
        end
        # The business information shown to customers in the portal.
        attr_accessor :business_profile
        # The default URL to redirect customers to when they click on the portal's link to return to your website. This can be [overriden](https://stripe.com/docs/api/customer_portal/sessions/create#create_portal_session-return_url) when creating the session.
        attr_accessor :default_return_url
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # Information about the features available in the portal.
        attr_accessor :features
        # The hosted login page for this configuration. Learn more about the portal login page in our [integration docs](https://stripe.com/docs/billing/subscriptions/integrating-customer-portal#share).
        attr_accessor :login_page
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        attr_accessor :metadata

        def initialize(
          business_profile: nil,
          default_return_url: nil,
          expand: nil,
          features: nil,
          login_page: nil,
          metadata: nil
        )
          @business_profile = business_profile
          @default_return_url = default_return_url
          @expand = expand
          @features = features
          @login_page = login_page
          @metadata = metadata
        end
      end

      class UpdateParams < Stripe::RequestParams
        class BusinessProfile < Stripe::RequestParams
          # The messaging shown to customers in the portal.
          attr_accessor :headline
          # A link to the business’s publicly available privacy policy.
          attr_accessor :privacy_policy_url
          # A link to the business’s publicly available terms of service.
          attr_accessor :terms_of_service_url

          def initialize(headline: nil, privacy_policy_url: nil, terms_of_service_url: nil)
            @headline = headline
            @privacy_policy_url = privacy_policy_url
            @terms_of_service_url = terms_of_service_url
          end
        end

        class Features < Stripe::RequestParams
          class CustomerUpdate < Stripe::RequestParams
            # The types of customer updates that are supported. When empty, customers are not updateable.
            attr_accessor :allowed_updates
            # Whether the feature is enabled.
            attr_accessor :enabled

            def initialize(allowed_updates: nil, enabled: nil)
              @allowed_updates = allowed_updates
              @enabled = enabled
            end
          end

          class InvoiceHistory < Stripe::RequestParams
            # Whether the feature is enabled.
            attr_accessor :enabled

            def initialize(enabled: nil)
              @enabled = enabled
            end
          end

          class PaymentMethodUpdate < Stripe::RequestParams
            # Whether the feature is enabled.
            attr_accessor :enabled

            def initialize(enabled: nil)
              @enabled = enabled
            end
          end

          class SubscriptionCancel < Stripe::RequestParams
            class CancellationReason < Stripe::RequestParams
              # Whether the feature is enabled.
              attr_accessor :enabled
              # Which cancellation reasons will be given as options to the customer.
              attr_accessor :options

              def initialize(enabled: nil, options: nil)
                @enabled = enabled
                @options = options
              end
            end
            # Whether the cancellation reasons will be collected in the portal and which options are exposed to the customer
            attr_accessor :cancellation_reason
            # Whether the feature is enabled.
            attr_accessor :enabled
            # Whether to cancel subscriptions immediately or at the end of the billing period.
            attr_accessor :mode
            # Whether to create prorations when canceling subscriptions. Possible values are `none` and `create_prorations`, which is only compatible with `mode=immediately`. Passing `always_invoice` will result in an error. No prorations are generated when canceling a subscription at the end of its natural billing period.
            attr_accessor :proration_behavior

            def initialize(
              cancellation_reason: nil,
              enabled: nil,
              mode: nil,
              proration_behavior: nil
            )
              @cancellation_reason = cancellation_reason
              @enabled = enabled
              @mode = mode
              @proration_behavior = proration_behavior
            end
          end

          class SubscriptionUpdate < Stripe::RequestParams
            class Product < Stripe::RequestParams
              # The list of price IDs for the product that a subscription can be updated to.
              attr_accessor :prices
              # The product id.
              attr_accessor :product

              def initialize(prices: nil, product: nil)
                @prices = prices
                @product = product
              end
            end

            class ScheduleAtPeriodEnd < Stripe::RequestParams
              class Condition < Stripe::RequestParams
                # The type of condition.
                attr_accessor :type

                def initialize(type: nil)
                  @type = type
                end
              end
              # List of conditions. When any condition is true, the update will be scheduled at the end of the current period.
              attr_accessor :conditions

              def initialize(conditions: nil)
                @conditions = conditions
              end
            end
            # The types of subscription updates that are supported. When empty, subscriptions are not updateable.
            attr_accessor :default_allowed_updates
            # Whether the feature is enabled.
            attr_accessor :enabled
            # The list of up to 10 products that support subscription updates.
            attr_accessor :products
            # Determines how to handle prorations resulting from subscription updates. Valid values are `none`, `create_prorations`, and `always_invoice`.
            attr_accessor :proration_behavior
            # Setting to control when an update should be scheduled at the end of the period instead of applying immediately.
            attr_accessor :schedule_at_period_end

            def initialize(
              default_allowed_updates: nil,
              enabled: nil,
              products: nil,
              proration_behavior: nil,
              schedule_at_period_end: nil
            )
              @default_allowed_updates = default_allowed_updates
              @enabled = enabled
              @products = products
              @proration_behavior = proration_behavior
              @schedule_at_period_end = schedule_at_period_end
            end
          end
          # Information about updating the customer details in the portal.
          attr_accessor :customer_update
          # Information about showing the billing history in the portal.
          attr_accessor :invoice_history
          # Information about updating payment methods in the portal.
          attr_accessor :payment_method_update
          # Information about canceling subscriptions in the portal.
          attr_accessor :subscription_cancel
          # Information about updating subscriptions in the portal.
          attr_accessor :subscription_update

          def initialize(
            customer_update: nil,
            invoice_history: nil,
            payment_method_update: nil,
            subscription_cancel: nil,
            subscription_update: nil
          )
            @customer_update = customer_update
            @invoice_history = invoice_history
            @payment_method_update = payment_method_update
            @subscription_cancel = subscription_cancel
            @subscription_update = subscription_update
          end
        end

        class LoginPage < Stripe::RequestParams
          # Set to `true` to generate a shareable URL [`login_page.url`](https://stripe.com/docs/api/customer_portal/configuration#portal_configuration_object-login_page-url) that will take your customers to a hosted login page for the customer portal.
          #
          # Set to `false` to deactivate the `login_page.url`.
          attr_accessor :enabled

          def initialize(enabled: nil)
            @enabled = enabled
          end
        end
        # Whether the configuration is active and can be used to create portal sessions.
        attr_accessor :active
        # The business information shown to customers in the portal.
        attr_accessor :business_profile
        # The default URL to redirect customers to when they click on the portal's link to return to your website. This can be [overriden](https://stripe.com/docs/api/customer_portal/sessions/create#create_portal_session-return_url) when creating the session.
        attr_accessor :default_return_url
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # Information about the features available in the portal.
        attr_accessor :features
        # The hosted login page for this configuration. Learn more about the portal login page in our [integration docs](https://stripe.com/docs/billing/subscriptions/integrating-customer-portal#share).
        attr_accessor :login_page
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        attr_accessor :metadata

        def initialize(
          active: nil,
          business_profile: nil,
          default_return_url: nil,
          expand: nil,
          features: nil,
          login_page: nil,
          metadata: nil
        )
          @active = active
          @business_profile = business_profile
          @default_return_url = default_return_url
          @expand = expand
          @features = features
          @login_page = login_page
          @metadata = metadata
        end
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
      def self.update(configuration, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/billing_portal/configurations/%<configuration>s", { configuration: CGI.escape(configuration) }),
          params: params,
          opts: opts
        )
      end
    end
  end
end
