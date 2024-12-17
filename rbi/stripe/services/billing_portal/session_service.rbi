# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module BillingPortal
    class SessionService < StripeService
      class CreateParams < Stripe::RequestParams
        class FlowData < Stripe::RequestParams
          class AfterCompletion < Stripe::RequestParams
            class HostedConfirmation < Stripe::RequestParams
              # A custom message to display to the customer after the flow is completed.
              sig { returns(String) }
              attr_accessor :custom_message
              sig { params(custom_message: String).void }
              def initialize(custom_message: nil); end
            end
            class Redirect < Stripe::RequestParams
              # The URL the customer will be redirected to after the flow is completed.
              sig { returns(String) }
              attr_accessor :return_url
              sig { params(return_url: String).void }
              def initialize(return_url: nil); end
            end
            # Configuration when `after_completion.type=hosted_confirmation`.
            sig {
              returns(::Stripe::BillingPortal::SessionService::CreateParams::FlowData::AfterCompletion::HostedConfirmation)
             }
            attr_accessor :hosted_confirmation
            # Configuration when `after_completion.type=redirect`.
            sig {
              returns(::Stripe::BillingPortal::SessionService::CreateParams::FlowData::AfterCompletion::Redirect)
             }
            attr_accessor :redirect
            # The specified behavior after the flow is completed.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(hosted_confirmation: ::Stripe::BillingPortal::SessionService::CreateParams::FlowData::AfterCompletion::HostedConfirmation, redirect: ::Stripe::BillingPortal::SessionService::CreateParams::FlowData::AfterCompletion::Redirect, type: String).void
             }
            def initialize(hosted_confirmation: nil, redirect: nil, type: nil); end
          end
          class SubscriptionCancel < Stripe::RequestParams
            class Retention < Stripe::RequestParams
              class CouponOffer < Stripe::RequestParams
                # The ID of the coupon to be offered.
                sig { returns(String) }
                attr_accessor :coupon
                sig { params(coupon: String).void }
                def initialize(coupon: nil); end
              end
              # Configuration when `retention.type=coupon_offer`.
              sig {
                returns(::Stripe::BillingPortal::SessionService::CreateParams::FlowData::SubscriptionCancel::Retention::CouponOffer)
               }
              attr_accessor :coupon_offer
              # Type of retention strategy to use with the customer.
              sig { returns(String) }
              attr_accessor :type
              sig {
                params(coupon_offer: ::Stripe::BillingPortal::SessionService::CreateParams::FlowData::SubscriptionCancel::Retention::CouponOffer, type: String).void
               }
              def initialize(coupon_offer: nil, type: nil); end
            end
            # Specify a retention strategy to be used in the cancellation flow.
            sig {
              returns(::Stripe::BillingPortal::SessionService::CreateParams::FlowData::SubscriptionCancel::Retention)
             }
            attr_accessor :retention
            # The ID of the subscription to be canceled.
            sig { returns(String) }
            attr_accessor :subscription
            sig {
              params(retention: ::Stripe::BillingPortal::SessionService::CreateParams::FlowData::SubscriptionCancel::Retention, subscription: String).void
             }
            def initialize(retention: nil, subscription: nil); end
          end
          class SubscriptionUpdate < Stripe::RequestParams
            # The ID of the subscription to be updated.
            sig { returns(String) }
            attr_accessor :subscription
            sig { params(subscription: String).void }
            def initialize(subscription: nil); end
          end
          class SubscriptionUpdateConfirm < Stripe::RequestParams
            class Discount < Stripe::RequestParams
              # The ID of the coupon to apply to this subscription update.
              sig { returns(String) }
              attr_accessor :coupon
              # The ID of a promotion code to apply to this subscription update.
              sig { returns(String) }
              attr_accessor :promotion_code
              sig { params(coupon: String, promotion_code: String).void }
              def initialize(coupon: nil, promotion_code: nil); end
            end
            class Item < Stripe::RequestParams
              # The ID of the [subscription item](https://stripe.com/docs/api/subscriptions/object#subscription_object-items-data-id) to be updated.
              sig { returns(String) }
              attr_accessor :id
              # The price the customer should subscribe to through this flow. The price must also be included in the configuration's [`features.subscription_update.products`](https://stripe.com/docs/api/customer_portal/configuration#portal_configuration_object-features-subscription_update-products).
              sig { returns(String) }
              attr_accessor :price
              # [Quantity](https://stripe.com/docs/subscriptions/quantities) for this item that the customer should subscribe to through this flow.
              sig { returns(Integer) }
              attr_accessor :quantity
              sig { params(id: String, price: String, quantity: Integer).void }
              def initialize(id: nil, price: nil, quantity: nil); end
            end
            # The coupon or promotion code to apply to this subscription update. Currently, only up to one may be specified.
            sig {
              returns(T::Array[::Stripe::BillingPortal::SessionService::CreateParams::FlowData::SubscriptionUpdateConfirm::Discount])
             }
            attr_accessor :discounts
            # The [subscription item](https://stripe.com/docs/api/subscription_items) to be updated through this flow. Currently, only up to one may be specified and subscriptions with multiple items are not updatable.
            sig {
              returns(T::Array[::Stripe::BillingPortal::SessionService::CreateParams::FlowData::SubscriptionUpdateConfirm::Item])
             }
            attr_accessor :items
            # The ID of the subscription to be updated.
            sig { returns(String) }
            attr_accessor :subscription
            sig {
              params(discounts: T::Array[::Stripe::BillingPortal::SessionService::CreateParams::FlowData::SubscriptionUpdateConfirm::Discount], items: T::Array[::Stripe::BillingPortal::SessionService::CreateParams::FlowData::SubscriptionUpdateConfirm::Item], subscription: String).void
             }
            def initialize(discounts: nil, items: nil, subscription: nil); end
          end
          # Behavior after the flow is completed.
          sig {
            returns(::Stripe::BillingPortal::SessionService::CreateParams::FlowData::AfterCompletion)
           }
          attr_accessor :after_completion
          # Configuration when `flow_data.type=subscription_cancel`.
          sig {
            returns(::Stripe::BillingPortal::SessionService::CreateParams::FlowData::SubscriptionCancel)
           }
          attr_accessor :subscription_cancel
          # Configuration when `flow_data.type=subscription_update`.
          sig {
            returns(::Stripe::BillingPortal::SessionService::CreateParams::FlowData::SubscriptionUpdate)
           }
          attr_accessor :subscription_update
          # Configuration when `flow_data.type=subscription_update_confirm`.
          sig {
            returns(::Stripe::BillingPortal::SessionService::CreateParams::FlowData::SubscriptionUpdateConfirm)
           }
          attr_accessor :subscription_update_confirm
          # Type of flow that the customer will go through.
          sig { returns(String) }
          attr_accessor :type
          sig {
            params(after_completion: ::Stripe::BillingPortal::SessionService::CreateParams::FlowData::AfterCompletion, subscription_cancel: ::Stripe::BillingPortal::SessionService::CreateParams::FlowData::SubscriptionCancel, subscription_update: ::Stripe::BillingPortal::SessionService::CreateParams::FlowData::SubscriptionUpdate, subscription_update_confirm: ::Stripe::BillingPortal::SessionService::CreateParams::FlowData::SubscriptionUpdateConfirm, type: String).void
           }
          def initialize(
            after_completion: nil,
            subscription_cancel: nil,
            subscription_update: nil,
            subscription_update_confirm: nil,
            type: nil
          ); end
        end
        # The ID of an existing [configuration](https://stripe.com/docs/api/customer_portal/configuration) to use for this session, describing its functionality and features. If not specified, the session uses the default configuration.
        sig { returns(String) }
        attr_accessor :configuration
        # The ID of an existing customer.
        sig { returns(String) }
        attr_accessor :customer
        # Specifies which fields in the response should be expanded.
        sig { returns(T::Array[String]) }
        attr_accessor :expand
        # Information about a specific flow for the customer to go through. See the [docs](https://stripe.com/docs/customer-management/portal-deep-links) to learn more about using customer portal deep links and flows.
        sig { returns(::Stripe::BillingPortal::SessionService::CreateParams::FlowData) }
        attr_accessor :flow_data
        # The IETF language tag of the locale customer portal is displayed in. If blank or auto, the customer’s `preferred_locales` or browser’s locale is used.
        sig { returns(String) }
        attr_accessor :locale
        # The `on_behalf_of` account to use for this session. When specified, only subscriptions and invoices with this `on_behalf_of` account appear in the portal. For more information, see the [docs](https://stripe.com/docs/connect/separate-charges-and-transfers#settlement-merchant). Use the [Accounts API](https://stripe.com/docs/api/accounts/object#account_object-settings-branding) to modify the `on_behalf_of` account's branding settings, which the portal displays.
        sig { returns(String) }
        attr_accessor :on_behalf_of
        # The default URL to redirect customers to when they click on the portal's link to return to your website.
        sig { returns(String) }
        attr_accessor :return_url
        sig {
          params(configuration: String, customer: String, expand: T::Array[String], flow_data: ::Stripe::BillingPortal::SessionService::CreateParams::FlowData, locale: String, on_behalf_of: String, return_url: String).void
         }
        def initialize(
          configuration: nil,
          customer: nil,
          expand: nil,
          flow_data: nil,
          locale: nil,
          on_behalf_of: nil,
          return_url: nil
        ); end
      end
      # Creates a session of the customer portal.
      sig {
        params(params: T.any(::Stripe::BillingPortal::SessionService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::BillingPortal::Session)
       }
      def create(params = {}, opts = {}); end
    end
  end
end