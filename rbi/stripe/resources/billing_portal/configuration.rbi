# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module BillingPortal
    # A portal configuration describes the functionality and behavior of a portal session.
    class Configuration < APIResource
      class BusinessProfile < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :headline
        sig { returns(T.nilable(String)) }
        attr_reader :privacy_policy_url
        sig { returns(T.nilable(String)) }
        attr_reader :terms_of_service_url
      end
      class Features < Stripe::StripeObject
        class CustomerUpdate < Stripe::StripeObject
          sig { returns(T::Array[String]) }
          attr_reader :allowed_updates
          sig { returns(T::Boolean) }
          attr_reader :enabled
        end
        class InvoiceHistory < Stripe::StripeObject
          sig { returns(T::Boolean) }
          attr_reader :enabled
        end
        class PaymentMethodUpdate < Stripe::StripeObject
          sig { returns(T::Boolean) }
          attr_reader :enabled
        end
        class SubscriptionCancel < Stripe::StripeObject
          class CancellationReason < Stripe::StripeObject
            sig { returns(T::Boolean) }
            attr_reader :enabled
            sig { returns(T::Array[String]) }
            attr_reader :options
          end
          sig { returns(CancellationReason) }
          attr_reader :cancellation_reason
          sig { returns(T::Boolean) }
          attr_reader :enabled
          sig { returns(String) }
          attr_reader :mode
          sig { returns(String) }
          attr_reader :proration_behavior
        end
        class SubscriptionUpdate < Stripe::StripeObject
          class Product < Stripe::StripeObject
            sig { returns(T::Array[String]) }
            attr_reader :prices
            sig { returns(String) }
            attr_reader :product
          end
          class ScheduleAtPeriodEnd < Stripe::StripeObject
            class Condition < Stripe::StripeObject
              sig { returns(String) }
              attr_reader :type
            end
            sig { returns(T::Array[Condition]) }
            attr_reader :conditions
          end
          sig { returns(T::Array[String]) }
          attr_reader :default_allowed_updates
          sig { returns(T::Boolean) }
          attr_reader :enabled
          sig { returns(T.nilable(T::Array[Product])) }
          attr_reader :products
          sig { returns(String) }
          attr_reader :proration_behavior
          sig { returns(ScheduleAtPeriodEnd) }
          attr_reader :schedule_at_period_end
        end
        sig { returns(CustomerUpdate) }
        attr_reader :customer_update
        sig { returns(InvoiceHistory) }
        attr_reader :invoice_history
        sig { returns(PaymentMethodUpdate) }
        attr_reader :payment_method_update
        sig { returns(SubscriptionCancel) }
        attr_reader :subscription_cancel
        sig { returns(SubscriptionUpdate) }
        attr_reader :subscription_update
      end
      class LoginPage < Stripe::StripeObject
        sig { returns(T::Boolean) }
        attr_reader :enabled
        sig { returns(T.nilable(String)) }
        attr_reader :url
      end
      sig { returns(T::Boolean) }
      # Whether the configuration is active and can be used to create portal sessions.
      attr_reader :active
      sig { returns(T.nilable(T.any(String, Stripe::Application))) }
      # ID of the Connect Application that created the configuration.
      attr_reader :application
      sig { returns(BusinessProfile) }
      # Attribute for field business_profile
      attr_reader :business_profile
      sig { returns(Integer) }
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      sig { returns(T.nilable(String)) }
      # The default URL to redirect customers to when they click on the portal's link to return to your website. This can be [overriden](https://stripe.com/docs/api/customer_portal/sessions/create#create_portal_session-return_url) when creating the session.
      attr_reader :default_return_url
      sig { returns(Features) }
      # Attribute for field features
      attr_reader :features
      sig { returns(String) }
      # Unique identifier for the object.
      attr_reader :id
      sig { returns(T::Boolean) }
      # Whether the configuration is the default. If `true`, this configuration can be managed in the Dashboard and portal sessions will use this configuration unless it is overriden when creating the session.
      attr_reader :is_default
      sig { returns(T::Boolean) }
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      sig { returns(LoginPage) }
      # Attribute for field login_page
      attr_reader :login_page
      sig { returns(T.nilable(T::Hash[String, String])) }
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata
      sig { returns(String) }
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      sig { returns(Integer) }
      # Time at which the object was last updated. Measured in seconds since the Unix epoch.
      attr_reader :updated
    end
  end
end