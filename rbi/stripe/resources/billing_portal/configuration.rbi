# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module BillingPortal
    # A portal configuration describes the functionality and behavior of a portal session.
    class Configuration < APIResource
      class BusinessProfile < Stripe::StripeObject
        # The messaging shown to customers in the portal.
        sig { returns(T.nilable(String)) }
        attr_reader :headline
        # A link to the business’s publicly available privacy policy.
        sig { returns(T.nilable(String)) }
        attr_reader :privacy_policy_url
        # A link to the business’s publicly available terms of service.
        sig { returns(T.nilable(String)) }
        attr_reader :terms_of_service_url
      end
      class Features < Stripe::StripeObject
        class CustomerUpdate < Stripe::StripeObject
          # The types of customer updates that are supported. When empty, customers are not updateable.
          sig { returns(T::Array[String]) }
          attr_reader :allowed_updates
          # Whether the feature is enabled.
          sig { returns(T::Boolean) }
          attr_reader :enabled
        end
        class InvoiceHistory < Stripe::StripeObject
          # Whether the feature is enabled.
          sig { returns(T::Boolean) }
          attr_reader :enabled
        end
        class PaymentMethodUpdate < Stripe::StripeObject
          # Whether the feature is enabled.
          sig { returns(T::Boolean) }
          attr_reader :enabled
        end
        class SubscriptionCancel < Stripe::StripeObject
          class CancellationReason < Stripe::StripeObject
            # Whether the feature is enabled.
            sig { returns(T::Boolean) }
            attr_reader :enabled
            # Which cancellation reasons will be given as options to the customer.
            sig { returns(T::Array[String]) }
            attr_reader :options
          end
          # Attribute for field cancellation_reason
          sig { returns(CancellationReason) }
          attr_reader :cancellation_reason
          # Whether the feature is enabled.
          sig { returns(T::Boolean) }
          attr_reader :enabled
          # Whether to cancel subscriptions immediately or at the end of the billing period.
          sig { returns(String) }
          attr_reader :mode
          # Whether to create prorations when canceling subscriptions. Possible values are `none` and `create_prorations`.
          sig { returns(String) }
          attr_reader :proration_behavior
        end
        class SubscriptionUpdate < Stripe::StripeObject
          class Product < Stripe::StripeObject
            class AdjustableQuantity < Stripe::StripeObject
              # If true, the quantity can be adjusted to any non-negative integer.
              sig { returns(T::Boolean) }
              attr_reader :enabled
              # The maximum quantity that can be set for the product.
              sig { returns(T.nilable(Integer)) }
              attr_reader :maximum
              # The minimum quantity that can be set for the product.
              sig { returns(Integer) }
              attr_reader :minimum
            end
            # Attribute for field adjustable_quantity
            sig { returns(AdjustableQuantity) }
            attr_reader :adjustable_quantity
            # The list of price IDs which, when subscribed to, a subscription can be updated.
            sig { returns(T::Array[String]) }
            attr_reader :prices
            # The product ID.
            sig { returns(String) }
            attr_reader :product
          end
          class ScheduleAtPeriodEnd < Stripe::StripeObject
            class Condition < Stripe::StripeObject
              # The type of condition.
              sig { returns(String) }
              attr_reader :type
            end
            # List of conditions. When any condition is true, an update will be scheduled at the end of the current period.
            sig { returns(T::Array[Condition]) }
            attr_reader :conditions
          end
          # The types of subscription updates that are supported for items listed in the `products` attribute. When empty, subscriptions are not updateable.
          sig { returns(T::Array[String]) }
          attr_reader :default_allowed_updates
          # Whether the feature is enabled.
          sig { returns(T::Boolean) }
          attr_reader :enabled
          # The list of up to 10 products that support subscription updates.
          sig { returns(T.nilable(T::Array[Product])) }
          attr_reader :products
          # Determines how to handle prorations resulting from subscription updates. Valid values are `none`, `create_prorations`, and `always_invoice`. Defaults to a value of `none` if you don't set it during creation.
          sig { returns(String) }
          attr_reader :proration_behavior
          # Attribute for field schedule_at_period_end
          sig { returns(ScheduleAtPeriodEnd) }
          attr_reader :schedule_at_period_end
        end
        # Attribute for field customer_update
        sig { returns(CustomerUpdate) }
        attr_reader :customer_update
        # Attribute for field invoice_history
        sig { returns(InvoiceHistory) }
        attr_reader :invoice_history
        # Attribute for field payment_method_update
        sig { returns(PaymentMethodUpdate) }
        attr_reader :payment_method_update
        # Attribute for field subscription_cancel
        sig { returns(SubscriptionCancel) }
        attr_reader :subscription_cancel
        # Attribute for field subscription_update
        sig { returns(SubscriptionUpdate) }
        attr_reader :subscription_update
      end
      class LoginPage < Stripe::StripeObject
        # If `true`, a shareable `url` will be generated that will take your customers to a hosted login page for the customer portal.
        #
        # If `false`, the previously generated `url`, if any, will be deactivated.
        sig { returns(T::Boolean) }
        attr_reader :enabled
        # A shareable URL to the hosted portal login page. Your customers will be able to log in with their [email](https://stripe.com/docs/api/customers/object#customer_object-email) and receive a link to their customer portal.
        sig { returns(T.nilable(String)) }
        attr_reader :url
      end
      # Whether the configuration is active and can be used to create portal sessions.
      sig { returns(T::Boolean) }
      attr_reader :active
      # ID of the Connect Application that created the configuration.
      sig { returns(T.nilable(T.any(String, Stripe::Application))) }
      attr_reader :application
      # Attribute for field business_profile
      sig { returns(BusinessProfile) }
      attr_reader :business_profile
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_reader :created
      # The default URL to redirect customers to when they click on the portal's link to return to your website. This can be [overriden](https://stripe.com/docs/api/customer_portal/sessions/create#create_portal_session-return_url) when creating the session.
      sig { returns(T.nilable(String)) }
      attr_reader :default_return_url
      # Attribute for field features
      sig { returns(Features) }
      attr_reader :features
      # Unique identifier for the object.
      sig { returns(String) }
      attr_reader :id
      # Whether the configuration is the default. If `true`, this configuration can be managed in the Dashboard and portal sessions will use this configuration unless it is overriden when creating the session.
      sig { returns(T::Boolean) }
      attr_reader :is_default
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode
      # Attribute for field login_page
      sig { returns(LoginPage) }
      attr_reader :login_page
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_reader :metadata
      # The name of the configuration.
      sig { returns(T.nilable(String)) }
      attr_reader :name
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object
      # Time at which the object was last updated. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_reader :updated
      class ListParams < Stripe::RequestParams
        # Only return configurations that are active or inactive (e.g., pass `true` to only list active configurations).
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :active
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        sig { returns(T.nilable(String)) }
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # Only return the default or non-default configurations (e.g., pass `true` to only list the default configuration).
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :is_default
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :limit
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        sig { returns(T.nilable(String)) }
        attr_accessor :starting_after
        sig {
          params(active: T.nilable(T::Boolean), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), is_default: T.nilable(T::Boolean), limit: T.nilable(Integer), starting_after: T.nilable(String)).void
         }
        def initialize(
          active: nil,
          ending_before: nil,
          expand: nil,
          is_default: nil,
          limit: nil,
          starting_after: nil
        ); end
      end
      class CreateParams < Stripe::RequestParams
        class BusinessProfile < Stripe::RequestParams
          # The messaging shown to customers in the portal.
          sig { returns(T.nilable(String)) }
          attr_accessor :headline
          # A link to the business’s publicly available privacy policy.
          sig { returns(T.nilable(String)) }
          attr_accessor :privacy_policy_url
          # A link to the business’s publicly available terms of service.
          sig { returns(T.nilable(String)) }
          attr_accessor :terms_of_service_url
          sig {
            params(headline: T.nilable(String), privacy_policy_url: T.nilable(String), terms_of_service_url: T.nilable(String)).void
           }
          def initialize(headline: nil, privacy_policy_url: nil, terms_of_service_url: nil); end
        end
        class Features < Stripe::RequestParams
          class CustomerUpdate < Stripe::RequestParams
            # The types of customer updates that are supported. When empty, customers are not updateable.
            sig { returns(T.nilable(T.any(String, T::Array[String]))) }
            attr_accessor :allowed_updates
            # Whether the feature is enabled.
            sig { returns(T::Boolean) }
            attr_accessor :enabled
            sig {
              params(allowed_updates: T.nilable(T.any(String, T::Array[String])), enabled: T::Boolean).void
             }
            def initialize(allowed_updates: nil, enabled: nil); end
          end
          class InvoiceHistory < Stripe::RequestParams
            # Whether the feature is enabled.
            sig { returns(T::Boolean) }
            attr_accessor :enabled
            sig { params(enabled: T::Boolean).void }
            def initialize(enabled: nil); end
          end
          class PaymentMethodUpdate < Stripe::RequestParams
            # Whether the feature is enabled.
            sig { returns(T::Boolean) }
            attr_accessor :enabled
            sig { params(enabled: T::Boolean).void }
            def initialize(enabled: nil); end
          end
          class SubscriptionCancel < Stripe::RequestParams
            class CancellationReason < Stripe::RequestParams
              # Whether the feature is enabled.
              sig { returns(T::Boolean) }
              attr_accessor :enabled
              # Which cancellation reasons will be given as options to the customer.
              sig { returns(T.any(String, T::Array[String])) }
              attr_accessor :options
              sig { params(enabled: T::Boolean, options: T.any(String, T::Array[String])).void }
              def initialize(enabled: nil, options: nil); end
            end
            # Whether the cancellation reasons will be collected in the portal and which options are exposed to the customer
            sig {
              returns(T.nilable(::Stripe::BillingPortal::Configuration::CreateParams::Features::SubscriptionCancel::CancellationReason))
             }
            attr_accessor :cancellation_reason
            # Whether the feature is enabled.
            sig { returns(T::Boolean) }
            attr_accessor :enabled
            # Whether to cancel subscriptions immediately or at the end of the billing period.
            sig { returns(T.nilable(String)) }
            attr_accessor :mode
            # Whether to create prorations when canceling subscriptions. Possible values are `none` and `create_prorations`, which is only compatible with `mode=immediately`. Passing `always_invoice` will result in an error. No prorations are generated when canceling a subscription at the end of its natural billing period.
            sig { returns(T.nilable(String)) }
            attr_accessor :proration_behavior
            sig {
              params(cancellation_reason: T.nilable(::Stripe::BillingPortal::Configuration::CreateParams::Features::SubscriptionCancel::CancellationReason), enabled: T::Boolean, mode: T.nilable(String), proration_behavior: T.nilable(String)).void
             }
            def initialize(
              cancellation_reason: nil,
              enabled: nil,
              mode: nil,
              proration_behavior: nil
            ); end
          end
          class SubscriptionUpdate < Stripe::RequestParams
            class Product < Stripe::RequestParams
              class AdjustableQuantity < Stripe::RequestParams
                # Set to true if the quantity can be adjusted to any non-negative integer.
                sig { returns(T::Boolean) }
                attr_accessor :enabled
                # The maximum quantity that can be set for the product.
                sig { returns(T.nilable(Integer)) }
                attr_accessor :maximum
                # The minimum quantity that can be set for the product.
                sig { returns(T.nilable(Integer)) }
                attr_accessor :minimum
                sig {
                  params(enabled: T::Boolean, maximum: T.nilable(Integer), minimum: T.nilable(Integer)).void
                 }
                def initialize(enabled: nil, maximum: nil, minimum: nil); end
              end
              # Control whether the quantity of the product can be adjusted.
              sig {
                returns(T.nilable(::Stripe::BillingPortal::Configuration::CreateParams::Features::SubscriptionUpdate::Product::AdjustableQuantity))
               }
              attr_accessor :adjustable_quantity
              # The list of price IDs for the product that a subscription can be updated to.
              sig { returns(T::Array[String]) }
              attr_accessor :prices
              # The product id.
              sig { returns(String) }
              attr_accessor :product
              sig {
                params(adjustable_quantity: T.nilable(::Stripe::BillingPortal::Configuration::CreateParams::Features::SubscriptionUpdate::Product::AdjustableQuantity), prices: T::Array[String], product: String).void
               }
              def initialize(adjustable_quantity: nil, prices: nil, product: nil); end
            end
            class ScheduleAtPeriodEnd < Stripe::RequestParams
              class Condition < Stripe::RequestParams
                # The type of condition.
                sig { returns(String) }
                attr_accessor :type
                sig { params(type: String).void }
                def initialize(type: nil); end
              end
              # List of conditions. When any condition is true, the update will be scheduled at the end of the current period.
              sig {
                returns(T.nilable(T::Array[::Stripe::BillingPortal::Configuration::CreateParams::Features::SubscriptionUpdate::ScheduleAtPeriodEnd::Condition]))
               }
              attr_accessor :conditions
              sig {
                params(conditions: T.nilable(T::Array[::Stripe::BillingPortal::Configuration::CreateParams::Features::SubscriptionUpdate::ScheduleAtPeriodEnd::Condition])).void
               }
              def initialize(conditions: nil); end
            end
            # The types of subscription updates that are supported. When empty, subscriptions are not updateable.
            sig { returns(T.nilable(T.any(String, T::Array[String]))) }
            attr_accessor :default_allowed_updates
            # Whether the feature is enabled.
            sig { returns(T::Boolean) }
            attr_accessor :enabled
            # The list of up to 10 products that support subscription updates.
            sig {
              returns(T.nilable(T.any(String, T::Array[::Stripe::BillingPortal::Configuration::CreateParams::Features::SubscriptionUpdate::Product])))
             }
            attr_accessor :products
            # Determines how to handle prorations resulting from subscription updates. Valid values are `none`, `create_prorations`, and `always_invoice`.
            sig { returns(T.nilable(String)) }
            attr_accessor :proration_behavior
            # Setting to control when an update should be scheduled at the end of the period instead of applying immediately.
            sig {
              returns(T.nilable(::Stripe::BillingPortal::Configuration::CreateParams::Features::SubscriptionUpdate::ScheduleAtPeriodEnd))
             }
            attr_accessor :schedule_at_period_end
            sig {
              params(default_allowed_updates: T.nilable(T.any(String, T::Array[String])), enabled: T::Boolean, products: T.nilable(T.any(String, T::Array[::Stripe::BillingPortal::Configuration::CreateParams::Features::SubscriptionUpdate::Product])), proration_behavior: T.nilable(String), schedule_at_period_end: T.nilable(::Stripe::BillingPortal::Configuration::CreateParams::Features::SubscriptionUpdate::ScheduleAtPeriodEnd)).void
             }
            def initialize(
              default_allowed_updates: nil,
              enabled: nil,
              products: nil,
              proration_behavior: nil,
              schedule_at_period_end: nil
            ); end
          end
          # Information about updating the customer details in the portal.
          sig {
            returns(T.nilable(::Stripe::BillingPortal::Configuration::CreateParams::Features::CustomerUpdate))
           }
          attr_accessor :customer_update
          # Information about showing the billing history in the portal.
          sig {
            returns(T.nilable(::Stripe::BillingPortal::Configuration::CreateParams::Features::InvoiceHistory))
           }
          attr_accessor :invoice_history
          # Information about updating payment methods in the portal.
          sig {
            returns(T.nilable(::Stripe::BillingPortal::Configuration::CreateParams::Features::PaymentMethodUpdate))
           }
          attr_accessor :payment_method_update
          # Information about canceling subscriptions in the portal.
          sig {
            returns(T.nilable(::Stripe::BillingPortal::Configuration::CreateParams::Features::SubscriptionCancel))
           }
          attr_accessor :subscription_cancel
          # Information about updating subscriptions in the portal.
          sig {
            returns(T.nilable(::Stripe::BillingPortal::Configuration::CreateParams::Features::SubscriptionUpdate))
           }
          attr_accessor :subscription_update
          sig {
            params(customer_update: T.nilable(::Stripe::BillingPortal::Configuration::CreateParams::Features::CustomerUpdate), invoice_history: T.nilable(::Stripe::BillingPortal::Configuration::CreateParams::Features::InvoiceHistory), payment_method_update: T.nilable(::Stripe::BillingPortal::Configuration::CreateParams::Features::PaymentMethodUpdate), subscription_cancel: T.nilable(::Stripe::BillingPortal::Configuration::CreateParams::Features::SubscriptionCancel), subscription_update: T.nilable(::Stripe::BillingPortal::Configuration::CreateParams::Features::SubscriptionUpdate)).void
           }
          def initialize(
            customer_update: nil,
            invoice_history: nil,
            payment_method_update: nil,
            subscription_cancel: nil,
            subscription_update: nil
          ); end
        end
        class LoginPage < Stripe::RequestParams
          # Set to `true` to generate a shareable URL [`login_page.url`](https://stripe.com/docs/api/customer_portal/configuration#portal_configuration_object-login_page-url) that will take your customers to a hosted login page for the customer portal.
          sig { returns(T::Boolean) }
          attr_accessor :enabled
          sig { params(enabled: T::Boolean).void }
          def initialize(enabled: nil); end
        end
        # The business information shown to customers in the portal.
        sig {
          returns(T.nilable(::Stripe::BillingPortal::Configuration::CreateParams::BusinessProfile))
         }
        attr_accessor :business_profile
        # The default URL to redirect customers to when they click on the portal's link to return to your website. This can be [overriden](https://stripe.com/docs/api/customer_portal/sessions/create#create_portal_session-return_url) when creating the session.
        sig { returns(T.nilable(String)) }
        attr_accessor :default_return_url
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # Information about the features available in the portal.
        sig { returns(::Stripe::BillingPortal::Configuration::CreateParams::Features) }
        attr_accessor :features
        # The hosted login page for this configuration. Learn more about the portal login page in our [integration docs](https://stripe.com/docs/billing/subscriptions/integrating-customer-portal#share).
        sig { returns(T.nilable(::Stripe::BillingPortal::Configuration::CreateParams::LoginPage)) }
        attr_accessor :login_page
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_accessor :metadata
        # The name of the configuration.
        sig { returns(T.nilable(String)) }
        attr_accessor :name
        sig {
          params(business_profile: T.nilable(::Stripe::BillingPortal::Configuration::CreateParams::BusinessProfile), default_return_url: T.nilable(String), expand: T.nilable(T::Array[String]), features: ::Stripe::BillingPortal::Configuration::CreateParams::Features, login_page: T.nilable(::Stripe::BillingPortal::Configuration::CreateParams::LoginPage), metadata: T.nilable(T::Hash[String, String]), name: T.nilable(String)).void
         }
        def initialize(
          business_profile: nil,
          default_return_url: nil,
          expand: nil,
          features: nil,
          login_page: nil,
          metadata: nil,
          name: nil
        ); end
      end
      class UpdateParams < Stripe::RequestParams
        class BusinessProfile < Stripe::RequestParams
          # The messaging shown to customers in the portal.
          sig { returns(T.nilable(String)) }
          attr_accessor :headline
          # A link to the business’s publicly available privacy policy.
          sig { returns(T.nilable(String)) }
          attr_accessor :privacy_policy_url
          # A link to the business’s publicly available terms of service.
          sig { returns(T.nilable(String)) }
          attr_accessor :terms_of_service_url
          sig {
            params(headline: T.nilable(String), privacy_policy_url: T.nilable(String), terms_of_service_url: T.nilable(String)).void
           }
          def initialize(headline: nil, privacy_policy_url: nil, terms_of_service_url: nil); end
        end
        class Features < Stripe::RequestParams
          class CustomerUpdate < Stripe::RequestParams
            # The types of customer updates that are supported. When empty, customers are not updateable.
            sig { returns(T.nilable(T.any(String, T::Array[String]))) }
            attr_accessor :allowed_updates
            # Whether the feature is enabled.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :enabled
            sig {
              params(allowed_updates: T.nilable(T.any(String, T::Array[String])), enabled: T.nilable(T::Boolean)).void
             }
            def initialize(allowed_updates: nil, enabled: nil); end
          end
          class InvoiceHistory < Stripe::RequestParams
            # Whether the feature is enabled.
            sig { returns(T::Boolean) }
            attr_accessor :enabled
            sig { params(enabled: T::Boolean).void }
            def initialize(enabled: nil); end
          end
          class PaymentMethodUpdate < Stripe::RequestParams
            # Whether the feature is enabled.
            sig { returns(T::Boolean) }
            attr_accessor :enabled
            sig { params(enabled: T::Boolean).void }
            def initialize(enabled: nil); end
          end
          class SubscriptionCancel < Stripe::RequestParams
            class CancellationReason < Stripe::RequestParams
              # Whether the feature is enabled.
              sig { returns(T::Boolean) }
              attr_accessor :enabled
              # Which cancellation reasons will be given as options to the customer.
              sig { returns(T.nilable(T.any(String, T::Array[String]))) }
              attr_accessor :options
              sig {
                params(enabled: T::Boolean, options: T.nilable(T.any(String, T::Array[String]))).void
               }
              def initialize(enabled: nil, options: nil); end
            end
            # Whether the cancellation reasons will be collected in the portal and which options are exposed to the customer
            sig {
              returns(T.nilable(::Stripe::BillingPortal::Configuration::UpdateParams::Features::SubscriptionCancel::CancellationReason))
             }
            attr_accessor :cancellation_reason
            # Whether the feature is enabled.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :enabled
            # Whether to cancel subscriptions immediately or at the end of the billing period.
            sig { returns(T.nilable(String)) }
            attr_accessor :mode
            # Whether to create prorations when canceling subscriptions. Possible values are `none` and `create_prorations`, which is only compatible with `mode=immediately`. Passing `always_invoice` will result in an error. No prorations are generated when canceling a subscription at the end of its natural billing period.
            sig { returns(T.nilable(String)) }
            attr_accessor :proration_behavior
            sig {
              params(cancellation_reason: T.nilable(::Stripe::BillingPortal::Configuration::UpdateParams::Features::SubscriptionCancel::CancellationReason), enabled: T.nilable(T::Boolean), mode: T.nilable(String), proration_behavior: T.nilable(String)).void
             }
            def initialize(
              cancellation_reason: nil,
              enabled: nil,
              mode: nil,
              proration_behavior: nil
            ); end
          end
          class SubscriptionUpdate < Stripe::RequestParams
            class Product < Stripe::RequestParams
              class AdjustableQuantity < Stripe::RequestParams
                # Set to true if the quantity can be adjusted to any non-negative integer.
                sig { returns(T::Boolean) }
                attr_accessor :enabled
                # The maximum quantity that can be set for the product.
                sig { returns(T.nilable(Integer)) }
                attr_accessor :maximum
                # The minimum quantity that can be set for the product.
                sig { returns(T.nilable(Integer)) }
                attr_accessor :minimum
                sig {
                  params(enabled: T::Boolean, maximum: T.nilable(Integer), minimum: T.nilable(Integer)).void
                 }
                def initialize(enabled: nil, maximum: nil, minimum: nil); end
              end
              # Control whether the quantity of the product can be adjusted.
              sig {
                returns(T.nilable(::Stripe::BillingPortal::Configuration::UpdateParams::Features::SubscriptionUpdate::Product::AdjustableQuantity))
               }
              attr_accessor :adjustable_quantity
              # The list of price IDs for the product that a subscription can be updated to.
              sig { returns(T::Array[String]) }
              attr_accessor :prices
              # The product id.
              sig { returns(String) }
              attr_accessor :product
              sig {
                params(adjustable_quantity: T.nilable(::Stripe::BillingPortal::Configuration::UpdateParams::Features::SubscriptionUpdate::Product::AdjustableQuantity), prices: T::Array[String], product: String).void
               }
              def initialize(adjustable_quantity: nil, prices: nil, product: nil); end
            end
            class ScheduleAtPeriodEnd < Stripe::RequestParams
              class Condition < Stripe::RequestParams
                # The type of condition.
                sig { returns(String) }
                attr_accessor :type
                sig { params(type: String).void }
                def initialize(type: nil); end
              end
              # List of conditions. When any condition is true, the update will be scheduled at the end of the current period.
              sig {
                returns(T.nilable(T.any(String, T::Array[::Stripe::BillingPortal::Configuration::UpdateParams::Features::SubscriptionUpdate::ScheduleAtPeriodEnd::Condition])))
               }
              attr_accessor :conditions
              sig {
                params(conditions: T.nilable(T.any(String, T::Array[::Stripe::BillingPortal::Configuration::UpdateParams::Features::SubscriptionUpdate::ScheduleAtPeriodEnd::Condition]))).void
               }
              def initialize(conditions: nil); end
            end
            # The types of subscription updates that are supported. When empty, subscriptions are not updateable.
            sig { returns(T.nilable(T.any(String, T::Array[String]))) }
            attr_accessor :default_allowed_updates
            # Whether the feature is enabled.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :enabled
            # The list of up to 10 products that support subscription updates.
            sig {
              returns(T.nilable(T.any(String, T::Array[::Stripe::BillingPortal::Configuration::UpdateParams::Features::SubscriptionUpdate::Product])))
             }
            attr_accessor :products
            # Determines how to handle prorations resulting from subscription updates. Valid values are `none`, `create_prorations`, and `always_invoice`.
            sig { returns(T.nilable(String)) }
            attr_accessor :proration_behavior
            # Setting to control when an update should be scheduled at the end of the period instead of applying immediately.
            sig {
              returns(T.nilable(::Stripe::BillingPortal::Configuration::UpdateParams::Features::SubscriptionUpdate::ScheduleAtPeriodEnd))
             }
            attr_accessor :schedule_at_period_end
            sig {
              params(default_allowed_updates: T.nilable(T.any(String, T::Array[String])), enabled: T.nilable(T::Boolean), products: T.nilable(T.any(String, T::Array[::Stripe::BillingPortal::Configuration::UpdateParams::Features::SubscriptionUpdate::Product])), proration_behavior: T.nilable(String), schedule_at_period_end: T.nilable(::Stripe::BillingPortal::Configuration::UpdateParams::Features::SubscriptionUpdate::ScheduleAtPeriodEnd)).void
             }
            def initialize(
              default_allowed_updates: nil,
              enabled: nil,
              products: nil,
              proration_behavior: nil,
              schedule_at_period_end: nil
            ); end
          end
          # Information about updating the customer details in the portal.
          sig {
            returns(T.nilable(::Stripe::BillingPortal::Configuration::UpdateParams::Features::CustomerUpdate))
           }
          attr_accessor :customer_update
          # Information about showing the billing history in the portal.
          sig {
            returns(T.nilable(::Stripe::BillingPortal::Configuration::UpdateParams::Features::InvoiceHistory))
           }
          attr_accessor :invoice_history
          # Information about updating payment methods in the portal.
          sig {
            returns(T.nilable(::Stripe::BillingPortal::Configuration::UpdateParams::Features::PaymentMethodUpdate))
           }
          attr_accessor :payment_method_update
          # Information about canceling subscriptions in the portal.
          sig {
            returns(T.nilable(::Stripe::BillingPortal::Configuration::UpdateParams::Features::SubscriptionCancel))
           }
          attr_accessor :subscription_cancel
          # Information about updating subscriptions in the portal.
          sig {
            returns(T.nilable(::Stripe::BillingPortal::Configuration::UpdateParams::Features::SubscriptionUpdate))
           }
          attr_accessor :subscription_update
          sig {
            params(customer_update: T.nilable(::Stripe::BillingPortal::Configuration::UpdateParams::Features::CustomerUpdate), invoice_history: T.nilable(::Stripe::BillingPortal::Configuration::UpdateParams::Features::InvoiceHistory), payment_method_update: T.nilable(::Stripe::BillingPortal::Configuration::UpdateParams::Features::PaymentMethodUpdate), subscription_cancel: T.nilable(::Stripe::BillingPortal::Configuration::UpdateParams::Features::SubscriptionCancel), subscription_update: T.nilable(::Stripe::BillingPortal::Configuration::UpdateParams::Features::SubscriptionUpdate)).void
           }
          def initialize(
            customer_update: nil,
            invoice_history: nil,
            payment_method_update: nil,
            subscription_cancel: nil,
            subscription_update: nil
          ); end
        end
        class LoginPage < Stripe::RequestParams
          # Set to `true` to generate a shareable URL [`login_page.url`](https://stripe.com/docs/api/customer_portal/configuration#portal_configuration_object-login_page-url) that will take your customers to a hosted login page for the customer portal.
          #
          # Set to `false` to deactivate the `login_page.url`.
          sig { returns(T::Boolean) }
          attr_accessor :enabled
          sig { params(enabled: T::Boolean).void }
          def initialize(enabled: nil); end
        end
        # Whether the configuration is active and can be used to create portal sessions.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :active
        # The business information shown to customers in the portal.
        sig {
          returns(T.nilable(::Stripe::BillingPortal::Configuration::UpdateParams::BusinessProfile))
         }
        attr_accessor :business_profile
        # The default URL to redirect customers to when they click on the portal's link to return to your website. This can be [overriden](https://stripe.com/docs/api/customer_portal/sessions/create#create_portal_session-return_url) when creating the session.
        sig { returns(T.nilable(String)) }
        attr_accessor :default_return_url
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # Information about the features available in the portal.
        sig { returns(T.nilable(::Stripe::BillingPortal::Configuration::UpdateParams::Features)) }
        attr_accessor :features
        # The hosted login page for this configuration. Learn more about the portal login page in our [integration docs](https://stripe.com/docs/billing/subscriptions/integrating-customer-portal#share).
        sig { returns(T.nilable(::Stripe::BillingPortal::Configuration::UpdateParams::LoginPage)) }
        attr_accessor :login_page
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
        attr_accessor :metadata
        # The name of the configuration.
        sig { returns(T.nilable(String)) }
        attr_accessor :name
        sig {
          params(active: T.nilable(T::Boolean), business_profile: T.nilable(::Stripe::BillingPortal::Configuration::UpdateParams::BusinessProfile), default_return_url: T.nilable(String), expand: T.nilable(T::Array[String]), features: T.nilable(::Stripe::BillingPortal::Configuration::UpdateParams::Features), login_page: T.nilable(::Stripe::BillingPortal::Configuration::UpdateParams::LoginPage), metadata: T.nilable(T.any(String, T::Hash[String, String])), name: T.nilable(String)).void
         }
        def initialize(
          active: nil,
          business_profile: nil,
          default_return_url: nil,
          expand: nil,
          features: nil,
          login_page: nil,
          metadata: nil,
          name: nil
        ); end
      end
      # Creates a configuration that describes the functionality and behavior of a PortalSession
      sig {
        params(params: T.any(::Stripe::BillingPortal::Configuration::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::BillingPortal::Configuration)
       }
      def self.create(params = {}, opts = {}); end

      # Returns a list of configurations that describe the functionality of the customer portal.
      sig {
        params(params: T.any(::Stripe::BillingPortal::Configuration::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def self.list(params = {}, opts = {}); end

      # Updates a configuration that describes the functionality of the customer portal.
      sig {
        params(configuration: String, params: T.any(::Stripe::BillingPortal::Configuration::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::BillingPortal::Configuration)
       }
      def self.update(configuration, params = {}, opts = {}); end
    end
  end
end