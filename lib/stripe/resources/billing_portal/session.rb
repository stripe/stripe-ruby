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
      extend Stripe::APIOperations::Create

      OBJECT_NAME = "billing_portal.session"
      def self.object_name
        "billing_portal.session"
      end

      class Flow < Stripe::StripeObject
        class AfterCompletion < Stripe::StripeObject
          class HostedConfirmation < Stripe::StripeObject
            attr_reader :custom_message
          end

          class Redirect < Stripe::StripeObject
            attr_reader :return_url
          end
          attr_reader :hosted_confirmation, :redirect, :type
        end

        class SubscriptionCancel < Stripe::StripeObject
          class Retention < Stripe::StripeObject
            class CouponOffer < Stripe::StripeObject
              attr_reader :coupon
            end
            attr_reader :coupon_offer, :type
          end
          attr_reader :retention, :subscription
        end

        class SubscriptionUpdate < Stripe::StripeObject
          attr_reader :subscription
        end

        class SubscriptionUpdateConfirm < Stripe::StripeObject
          class Discount < Stripe::StripeObject
            attr_reader :coupon, :promotion_code
          end

          class Item < Stripe::StripeObject
            attr_reader :id, :price, :quantity
          end
          attr_reader :discounts, :items, :subscription
        end
        attr_reader :after_completion, :subscription_cancel, :subscription_update, :subscription_update_confirm, :type
      end
      # The configuration used by this session, describing the features available.
      attr_reader :configuration
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      # The ID of the customer for this session.
      attr_reader :customer
      # Information about a specific flow for the customer to go through. See the [docs](https://stripe.com/docs/customer-management/portal-deep-links) to learn more about using customer portal deep links and flows.
      attr_reader :flow
      # Unique identifier for the object.
      attr_reader :id
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      # The IETF language tag of the locale Customer Portal is displayed in. If blank or auto, the customer’s `preferred_locales` or browser’s locale is used.
      attr_reader :locale
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # The account for which the session was created on behalf of. When specified, only subscriptions and invoices with this `on_behalf_of` account appear in the portal. For more information, see the [docs](https://stripe.com/docs/connect/separate-charges-and-transfers#settlement-merchant). Use the [Accounts API](https://stripe.com/docs/api/accounts/object#account_object-settings-branding) to modify the `on_behalf_of` account's branding settings, which the portal displays.
      attr_reader :on_behalf_of
      # The URL to redirect customers to when they click on the portal's link to return to your website.
      attr_reader :return_url
      # The short-lived URL of the session that gives customers access to the customer portal.
      attr_reader :url

      # Creates a session of the customer portal.
      def self.create(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/billing_portal/sessions",
          params: params,
          opts: opts
        )
      end
    end
  end
end
