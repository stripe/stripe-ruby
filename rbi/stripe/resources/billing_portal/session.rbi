# File generated from our OpenAPI spec
# frozen_string_literal: true

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
    # Related guide: [Customer management](https://stripe.com/customer-management)
    class Session < APIResource
      class Flow < Stripe::StripeObject
        class AfterCompletion < Stripe::StripeObject
          class HostedConfirmation < Stripe::StripeObject
            sig { returns(T.nilable(String)) }
            attr_reader :custom_message
          end
          class Redirect < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :return_url
          end
          sig { returns(T.nilable(HostedConfirmation)) }
          attr_reader :hosted_confirmation
          sig { returns(T.nilable(Redirect)) }
          attr_reader :redirect
          sig { returns(String) }
          attr_reader :type
        end
        class SubscriptionCancel < Stripe::StripeObject
          class Retention < Stripe::StripeObject
            class CouponOffer < Stripe::StripeObject
              sig { returns(String) }
              attr_reader :coupon
            end
            sig { returns(T.nilable(CouponOffer)) }
            attr_reader :coupon_offer
            sig { returns(String) }
            attr_reader :type
          end
          sig { returns(T.nilable(Retention)) }
          attr_reader :retention
          sig { returns(String) }
          attr_reader :subscription
        end
        class SubscriptionUpdate < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :subscription
        end
        class SubscriptionUpdateConfirm < Stripe::StripeObject
          class Discount < Stripe::StripeObject
            sig { returns(T.nilable(String)) }
            attr_reader :coupon
            sig { returns(T.nilable(String)) }
            attr_reader :promotion_code
          end
          class Item < Stripe::StripeObject
            sig { returns(T.nilable(String)) }
            attr_reader :id
            sig { returns(T.nilable(String)) }
            attr_reader :price
            sig { returns(Integer) }
            attr_reader :quantity
          end
          sig { returns(T.nilable(T::Array[Discount])) }
          attr_reader :discounts
          sig { returns(T::Array[Item]) }
          attr_reader :items
          sig { returns(String) }
          attr_reader :subscription
        end
        sig { returns(AfterCompletion) }
        attr_reader :after_completion
        sig { returns(T.nilable(SubscriptionCancel)) }
        attr_reader :subscription_cancel
        sig { returns(T.nilable(SubscriptionUpdate)) }
        attr_reader :subscription_update
        sig { returns(T.nilable(SubscriptionUpdateConfirm)) }
        attr_reader :subscription_update_confirm
        sig { returns(String) }
        attr_reader :type
      end
      sig { returns(T.any(String, Stripe::BillingPortal::Configuration)) }
      # The configuration used by this session, describing the features available.
      attr_reader :configuration
      sig { returns(Integer) }
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      sig { returns(String) }
      # The ID of the customer for this session.
      attr_reader :customer
      sig { returns(T.nilable(Flow)) }
      # Information about a specific flow for the customer to go through. See the [docs](https://stripe.com/docs/customer-management/portal-deep-links) to learn more about using customer portal deep links and flows.
      attr_reader :flow
      sig { returns(String) }
      # Unique identifier for the object.
      attr_reader :id
      sig { returns(T::Boolean) }
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      sig { returns(T.nilable(String)) }
      # The IETF language tag of the locale Customer Portal is displayed in. If blank or auto, the customer’s `preferred_locales` or browser’s locale is used.
      attr_reader :locale
      sig { returns(String) }
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      sig { returns(T.nilable(String)) }
      # The account for which the session was created on behalf of. When specified, only subscriptions and invoices with this `on_behalf_of` account appear in the portal. For more information, see the [docs](https://stripe.com/docs/connect/separate-charges-and-transfers#settlement-merchant). Use the [Accounts API](https://stripe.com/docs/api/accounts/object#account_object-settings-branding) to modify the `on_behalf_of` account's branding settings, which the portal displays.
      attr_reader :on_behalf_of
      sig { returns(T.nilable(String)) }
      # The URL to redirect customers to when they click on the portal's link to return to your website.
      attr_reader :return_url
      sig { returns(String) }
      # The short-lived URL of the session that gives customers access to the customer portal.
      attr_reader :url
    end
  end
end