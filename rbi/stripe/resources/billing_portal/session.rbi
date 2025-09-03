# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module BillingPortal
    # The Billing customer portal is a Stripe-hosted UI for subscription and
    # billing management.
    #
    # A portal configuration describes the functionality and features that you
    # want to provide to your customers through the portal.
    #
    # A portal session describes the instantiation of the customer portal for
    # a particular customer. By visiting the session's URL, the customer
    # can manage their subscriptions and billing details. For security reasons,
    # sessions are short-lived and will expire if the customer does not visit the URL.
    # Create sessions on-demand when customers intend to manage their subscriptions
    # and billing details.
    #
    # Related guide: [Customer management](https://docs.stripe.com/customer-management)
    class Session < APIResource
      class Flow < Stripe::StripeObject
        class AfterCompletion < Stripe::StripeObject
          class HostedConfirmation < Stripe::StripeObject
            # A custom message to display to the customer after the flow is completed.
            sig { returns(T.nilable(String)) }
            def custom_message; end
          end
          class Redirect < Stripe::StripeObject
            # The URL the customer will be redirected to after the flow is completed.
            sig { returns(String) }
            def return_url; end
          end
          # Configuration when `after_completion.type=hosted_confirmation`.
          sig { returns(T.nilable(HostedConfirmation)) }
          def hosted_confirmation; end
          # Configuration when `after_completion.type=redirect`.
          sig { returns(T.nilable(Redirect)) }
          def redirect; end
          # The specified type of behavior after the flow is completed.
          sig { returns(String) }
          def type; end
        end
        class SubscriptionCancel < Stripe::StripeObject
          class Retention < Stripe::StripeObject
            class CouponOffer < Stripe::StripeObject
              # The ID of the coupon to be offered.
              sig { returns(String) }
              def coupon; end
            end
            # Configuration when `retention.type=coupon_offer`.
            sig { returns(T.nilable(CouponOffer)) }
            def coupon_offer; end
            # Type of retention strategy that will be used.
            sig { returns(String) }
            def type; end
          end
          # Specify a retention strategy to be used in the cancellation flow.
          sig { returns(T.nilable(Retention)) }
          def retention; end
          # The ID of the subscription to be canceled.
          sig { returns(String) }
          def subscription; end
        end
        class SubscriptionUpdate < Stripe::StripeObject
          # The ID of the subscription to be updated.
          sig { returns(String) }
          def subscription; end
        end
        class SubscriptionUpdateConfirm < Stripe::StripeObject
          class Discount < Stripe::StripeObject
            # The ID of the coupon to apply to this subscription update.
            sig { returns(T.nilable(String)) }
            def coupon; end
            # The ID of a promotion code to apply to this subscription update.
            sig { returns(T.nilable(String)) }
            def promotion_code; end
          end
          class Item < Stripe::StripeObject
            # The ID of the [subscription item](https://stripe.com/docs/api/subscriptions/object#subscription_object-items-data-id) to be updated.
            sig { returns(T.nilable(String)) }
            def id; end
            # The price the customer should subscribe to through this flow. The price must also be included in the configuration's [`features.subscription_update.products`](https://stripe.com/docs/api/customer_portal/configuration#portal_configuration_object-features-subscription_update-products).
            sig { returns(T.nilable(String)) }
            def price; end
            # [Quantity](https://stripe.com/docs/subscriptions/quantities) for this item that the customer should subscribe to through this flow.
            sig { returns(Integer) }
            def quantity; end
          end
          # The coupon or promotion code to apply to this subscription update.
          sig { returns(T.nilable(T::Array[Discount])) }
          def discounts; end
          # The [subscription item](https://stripe.com/docs/api/subscription_items) to be updated through this flow. Currently, only up to one may be specified and subscriptions with multiple items are not updatable.
          sig { returns(T::Array[Item]) }
          def items; end
          # The ID of the subscription to be updated.
          sig { returns(String) }
          def subscription; end
        end
        # Attribute for field after_completion
        sig { returns(AfterCompletion) }
        def after_completion; end
        # Configuration when `flow.type=subscription_cancel`.
        sig { returns(T.nilable(SubscriptionCancel)) }
        def subscription_cancel; end
        # Configuration when `flow.type=subscription_update`.
        sig { returns(T.nilable(SubscriptionUpdate)) }
        def subscription_update; end
        # Configuration when `flow.type=subscription_update_confirm`.
        sig { returns(T.nilable(SubscriptionUpdateConfirm)) }
        def subscription_update_confirm; end
        # Type of flow that the customer will go through.
        sig { returns(String) }
        def type; end
      end
      # The configuration used by this session, describing the features available.
      sig { returns(T.any(String, Stripe::BillingPortal::Configuration)) }
      def configuration; end
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      def created; end
      # The ID of the customer for this session.
      sig { returns(String) }
      def customer; end
      # Information about a specific flow for the customer to go through. See the [docs](https://stripe.com/docs/customer-management/portal-deep-links) to learn more about using customer portal deep links and flows.
      sig { returns(T.nilable(Flow)) }
      def flow; end
      # Unique identifier for the object.
      sig { returns(String) }
      def id; end
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      def livemode; end
      # The IETF language tag of the locale Customer Portal is displayed in. If blank or auto, the customer’s `preferred_locales` or browser’s locale is used.
      sig { returns(T.nilable(String)) }
      def locale; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
      # The account for which the session was created on behalf of. When specified, only subscriptions and invoices with this `on_behalf_of` account appear in the portal. For more information, see the [docs](https://stripe.com/docs/connect/separate-charges-and-transfers#settlement-merchant). Use the [Accounts API](https://stripe.com/docs/api/accounts/object#account_object-settings-branding) to modify the `on_behalf_of` account's branding settings, which the portal displays.
      sig { returns(T.nilable(String)) }
      def on_behalf_of; end
      # The URL to redirect customers to when they click on the portal's link to return to your website.
      sig { returns(T.nilable(String)) }
      def return_url; end
      # The short-lived URL of the session that gives customers access to the customer portal.
      sig { returns(String) }
      def url; end
      class CreateParams < Stripe::RequestParams
        class FlowData < Stripe::RequestParams
          class AfterCompletion < Stripe::RequestParams
            class HostedConfirmation < Stripe::RequestParams
              # A custom message to display to the customer after the flow is completed.
              sig { returns(T.nilable(String)) }
              def custom_message; end
              sig { params(_custom_message: T.nilable(String)).returns(T.nilable(String)) }
              def custom_message=(_custom_message); end
              sig { params(custom_message: T.nilable(String)).void }
              def initialize(custom_message: nil); end
            end
            class Redirect < Stripe::RequestParams
              # The URL the customer will be redirected to after the flow is completed.
              sig { returns(String) }
              def return_url; end
              sig { params(_return_url: String).returns(String) }
              def return_url=(_return_url); end
              sig { params(return_url: String).void }
              def initialize(return_url: nil); end
            end
            # Configuration when `after_completion.type=hosted_confirmation`.
            sig {
              returns(T.nilable(::Stripe::BillingPortal::Session::CreateParams::FlowData::AfterCompletion::HostedConfirmation))
             }
            def hosted_confirmation; end
            sig {
              params(_hosted_confirmation: T.nilable(::Stripe::BillingPortal::Session::CreateParams::FlowData::AfterCompletion::HostedConfirmation)).returns(T.nilable(::Stripe::BillingPortal::Session::CreateParams::FlowData::AfterCompletion::HostedConfirmation))
             }
            def hosted_confirmation=(_hosted_confirmation); end
            # Configuration when `after_completion.type=redirect`.
            sig {
              returns(T.nilable(::Stripe::BillingPortal::Session::CreateParams::FlowData::AfterCompletion::Redirect))
             }
            def redirect; end
            sig {
              params(_redirect: T.nilable(::Stripe::BillingPortal::Session::CreateParams::FlowData::AfterCompletion::Redirect)).returns(T.nilable(::Stripe::BillingPortal::Session::CreateParams::FlowData::AfterCompletion::Redirect))
             }
            def redirect=(_redirect); end
            # The specified behavior after the flow is completed.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(hosted_confirmation: T.nilable(::Stripe::BillingPortal::Session::CreateParams::FlowData::AfterCompletion::HostedConfirmation), redirect: T.nilable(::Stripe::BillingPortal::Session::CreateParams::FlowData::AfterCompletion::Redirect), type: String).void
             }
            def initialize(hosted_confirmation: nil, redirect: nil, type: nil); end
          end
          class SubscriptionCancel < Stripe::RequestParams
            class Retention < Stripe::RequestParams
              class CouponOffer < Stripe::RequestParams
                # The ID of the coupon to be offered.
                sig { returns(String) }
                def coupon; end
                sig { params(_coupon: String).returns(String) }
                def coupon=(_coupon); end
                sig { params(coupon: String).void }
                def initialize(coupon: nil); end
              end
              # Configuration when `retention.type=coupon_offer`.
              sig {
                returns(::Stripe::BillingPortal::Session::CreateParams::FlowData::SubscriptionCancel::Retention::CouponOffer)
               }
              def coupon_offer; end
              sig {
                params(_coupon_offer: ::Stripe::BillingPortal::Session::CreateParams::FlowData::SubscriptionCancel::Retention::CouponOffer).returns(::Stripe::BillingPortal::Session::CreateParams::FlowData::SubscriptionCancel::Retention::CouponOffer)
               }
              def coupon_offer=(_coupon_offer); end
              # Type of retention strategy to use with the customer.
              sig { returns(String) }
              def type; end
              sig { params(_type: String).returns(String) }
              def type=(_type); end
              sig {
                params(coupon_offer: ::Stripe::BillingPortal::Session::CreateParams::FlowData::SubscriptionCancel::Retention::CouponOffer, type: String).void
               }
              def initialize(coupon_offer: nil, type: nil); end
            end
            # Specify a retention strategy to be used in the cancellation flow.
            sig {
              returns(T.nilable(::Stripe::BillingPortal::Session::CreateParams::FlowData::SubscriptionCancel::Retention))
             }
            def retention; end
            sig {
              params(_retention: T.nilable(::Stripe::BillingPortal::Session::CreateParams::FlowData::SubscriptionCancel::Retention)).returns(T.nilable(::Stripe::BillingPortal::Session::CreateParams::FlowData::SubscriptionCancel::Retention))
             }
            def retention=(_retention); end
            # The ID of the subscription to be canceled.
            sig { returns(String) }
            def subscription; end
            sig { params(_subscription: String).returns(String) }
            def subscription=(_subscription); end
            sig {
              params(retention: T.nilable(::Stripe::BillingPortal::Session::CreateParams::FlowData::SubscriptionCancel::Retention), subscription: String).void
             }
            def initialize(retention: nil, subscription: nil); end
          end
          class SubscriptionUpdate < Stripe::RequestParams
            # The ID of the subscription to be updated.
            sig { returns(String) }
            def subscription; end
            sig { params(_subscription: String).returns(String) }
            def subscription=(_subscription); end
            sig { params(subscription: String).void }
            def initialize(subscription: nil); end
          end
          class SubscriptionUpdateConfirm < Stripe::RequestParams
            class Discount < Stripe::RequestParams
              # The ID of the coupon to apply to this subscription update.
              sig { returns(T.nilable(String)) }
              def coupon; end
              sig { params(_coupon: T.nilable(String)).returns(T.nilable(String)) }
              def coupon=(_coupon); end
              # The ID of a promotion code to apply to this subscription update.
              sig { returns(T.nilable(String)) }
              def promotion_code; end
              sig { params(_promotion_code: T.nilable(String)).returns(T.nilable(String)) }
              def promotion_code=(_promotion_code); end
              sig { params(coupon: T.nilable(String), promotion_code: T.nilable(String)).void }
              def initialize(coupon: nil, promotion_code: nil); end
            end
            class Item < Stripe::RequestParams
              # The ID of the [subscription item](https://stripe.com/docs/api/subscriptions/object#subscription_object-items-data-id) to be updated.
              sig { returns(String) }
              def id; end
              sig { params(_id: String).returns(String) }
              def id=(_id); end
              # The price the customer should subscribe to through this flow. The price must also be included in the configuration's [`features.subscription_update.products`](https://stripe.com/docs/api/customer_portal/configuration#portal_configuration_object-features-subscription_update-products).
              sig { returns(T.nilable(String)) }
              def price; end
              sig { params(_price: T.nilable(String)).returns(T.nilable(String)) }
              def price=(_price); end
              # [Quantity](https://stripe.com/docs/subscriptions/quantities) for this item that the customer should subscribe to through this flow.
              sig { returns(T.nilable(Integer)) }
              def quantity; end
              sig { params(_quantity: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def quantity=(_quantity); end
              sig {
                params(id: String, price: T.nilable(String), quantity: T.nilable(Integer)).void
               }
              def initialize(id: nil, price: nil, quantity: nil); end
            end
            # The coupon or promotion code to apply to this subscription update.
            sig {
              returns(T.nilable(T::Array[::Stripe::BillingPortal::Session::CreateParams::FlowData::SubscriptionUpdateConfirm::Discount]))
             }
            def discounts; end
            sig {
              params(_discounts: T.nilable(T::Array[::Stripe::BillingPortal::Session::CreateParams::FlowData::SubscriptionUpdateConfirm::Discount])).returns(T.nilable(T::Array[::Stripe::BillingPortal::Session::CreateParams::FlowData::SubscriptionUpdateConfirm::Discount]))
             }
            def discounts=(_discounts); end
            # The [subscription item](https://stripe.com/docs/api/subscription_items) to be updated through this flow. Currently, only up to one may be specified and subscriptions with multiple items are not updatable.
            sig {
              returns(T::Array[::Stripe::BillingPortal::Session::CreateParams::FlowData::SubscriptionUpdateConfirm::Item])
             }
            def items; end
            sig {
              params(_items: T::Array[::Stripe::BillingPortal::Session::CreateParams::FlowData::SubscriptionUpdateConfirm::Item]).returns(T::Array[::Stripe::BillingPortal::Session::CreateParams::FlowData::SubscriptionUpdateConfirm::Item])
             }
            def items=(_items); end
            # The ID of the subscription to be updated.
            sig { returns(String) }
            def subscription; end
            sig { params(_subscription: String).returns(String) }
            def subscription=(_subscription); end
            sig {
              params(discounts: T.nilable(T::Array[::Stripe::BillingPortal::Session::CreateParams::FlowData::SubscriptionUpdateConfirm::Discount]), items: T::Array[::Stripe::BillingPortal::Session::CreateParams::FlowData::SubscriptionUpdateConfirm::Item], subscription: String).void
             }
            def initialize(discounts: nil, items: nil, subscription: nil); end
          end
          # Behavior after the flow is completed.
          sig {
            returns(T.nilable(::Stripe::BillingPortal::Session::CreateParams::FlowData::AfterCompletion))
           }
          def after_completion; end
          sig {
            params(_after_completion: T.nilable(::Stripe::BillingPortal::Session::CreateParams::FlowData::AfterCompletion)).returns(T.nilable(::Stripe::BillingPortal::Session::CreateParams::FlowData::AfterCompletion))
           }
          def after_completion=(_after_completion); end
          # Configuration when `flow_data.type=subscription_cancel`.
          sig {
            returns(T.nilable(::Stripe::BillingPortal::Session::CreateParams::FlowData::SubscriptionCancel))
           }
          def subscription_cancel; end
          sig {
            params(_subscription_cancel: T.nilable(::Stripe::BillingPortal::Session::CreateParams::FlowData::SubscriptionCancel)).returns(T.nilable(::Stripe::BillingPortal::Session::CreateParams::FlowData::SubscriptionCancel))
           }
          def subscription_cancel=(_subscription_cancel); end
          # Configuration when `flow_data.type=subscription_update`.
          sig {
            returns(T.nilable(::Stripe::BillingPortal::Session::CreateParams::FlowData::SubscriptionUpdate))
           }
          def subscription_update; end
          sig {
            params(_subscription_update: T.nilable(::Stripe::BillingPortal::Session::CreateParams::FlowData::SubscriptionUpdate)).returns(T.nilable(::Stripe::BillingPortal::Session::CreateParams::FlowData::SubscriptionUpdate))
           }
          def subscription_update=(_subscription_update); end
          # Configuration when `flow_data.type=subscription_update_confirm`.
          sig {
            returns(T.nilable(::Stripe::BillingPortal::Session::CreateParams::FlowData::SubscriptionUpdateConfirm))
           }
          def subscription_update_confirm; end
          sig {
            params(_subscription_update_confirm: T.nilable(::Stripe::BillingPortal::Session::CreateParams::FlowData::SubscriptionUpdateConfirm)).returns(T.nilable(::Stripe::BillingPortal::Session::CreateParams::FlowData::SubscriptionUpdateConfirm))
           }
          def subscription_update_confirm=(_subscription_update_confirm); end
          # Type of flow that the customer will go through.
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          sig {
            params(after_completion: T.nilable(::Stripe::BillingPortal::Session::CreateParams::FlowData::AfterCompletion), subscription_cancel: T.nilable(::Stripe::BillingPortal::Session::CreateParams::FlowData::SubscriptionCancel), subscription_update: T.nilable(::Stripe::BillingPortal::Session::CreateParams::FlowData::SubscriptionUpdate), subscription_update_confirm: T.nilable(::Stripe::BillingPortal::Session::CreateParams::FlowData::SubscriptionUpdateConfirm), type: String).void
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
        sig { returns(T.nilable(String)) }
        def configuration; end
        sig { params(_configuration: T.nilable(String)).returns(T.nilable(String)) }
        def configuration=(_configuration); end
        # The ID of an existing customer.
        sig { returns(String) }
        def customer; end
        sig { params(_customer: String).returns(String) }
        def customer=(_customer); end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # Information about a specific flow for the customer to go through. See the [docs](https://stripe.com/docs/customer-management/portal-deep-links) to learn more about using customer portal deep links and flows.
        sig { returns(T.nilable(::Stripe::BillingPortal::Session::CreateParams::FlowData)) }
        def flow_data; end
        sig {
          params(_flow_data: T.nilable(::Stripe::BillingPortal::Session::CreateParams::FlowData)).returns(T.nilable(::Stripe::BillingPortal::Session::CreateParams::FlowData))
         }
        def flow_data=(_flow_data); end
        # The IETF language tag of the locale customer portal is displayed in. If blank or auto, the customer’s `preferred_locales` or browser’s locale is used.
        sig { returns(T.nilable(String)) }
        def locale; end
        sig { params(_locale: T.nilable(String)).returns(T.nilable(String)) }
        def locale=(_locale); end
        # The `on_behalf_of` account to use for this session. When specified, only subscriptions and invoices with this `on_behalf_of` account appear in the portal. For more information, see the [docs](https://stripe.com/docs/connect/separate-charges-and-transfers#settlement-merchant). Use the [Accounts API](https://stripe.com/docs/api/accounts/object#account_object-settings-branding) to modify the `on_behalf_of` account's branding settings, which the portal displays.
        sig { returns(T.nilable(String)) }
        def on_behalf_of; end
        sig { params(_on_behalf_of: T.nilable(String)).returns(T.nilable(String)) }
        def on_behalf_of=(_on_behalf_of); end
        # The default URL to redirect customers to when they click on the portal's link to return to your website.
        sig { returns(T.nilable(String)) }
        def return_url; end
        sig { params(_return_url: T.nilable(String)).returns(T.nilable(String)) }
        def return_url=(_return_url); end
        sig {
          params(configuration: T.nilable(String), customer: String, expand: T.nilable(T::Array[String]), flow_data: T.nilable(::Stripe::BillingPortal::Session::CreateParams::FlowData), locale: T.nilable(String), on_behalf_of: T.nilable(String), return_url: T.nilable(String)).void
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
        params(params: T.any(::Stripe::BillingPortal::Session::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::BillingPortal::Session)
       }
      def self.create(params = {}, opts = {}); end
    end
  end
end