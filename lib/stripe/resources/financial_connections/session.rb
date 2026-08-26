# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module FinancialConnections
    # A Financial Connections Session is the secure way to programmatically launch the client-side Stripe.js modal that lets your users link their accounts.
    class Session < APIResource
      extend Stripe::APIOperations::Create

      OBJECT_NAME = "financial_connections.session"
      def self.object_name
        "financial_connections.session"
      end

      class AccountHolder < ::Stripe::StripeObject
        # The ID of the Stripe account that this account belongs to. Only available when `account_holder.type` is `account`.
        attr_reader :account
        # The ID for an Account representing a customer that this account belongs to. Only available when `account_holder.type` is `customer`.
        attr_reader :customer
        # Attribute for field customer_account
        attr_reader :customer_account
        # Type of account holder that this account belongs to.
        attr_reader :type

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class Filters < ::Stripe::StripeObject
        # Restricts the Session to subcategories of accounts that can be linked. Valid subcategories are: `checking`, `savings`, `mortgage`, `line_of_credit`, `credit_card`.
        attr_reader :account_subcategories
        # List of countries from which to filter accounts.
        attr_reader :countries
        # Country from which to filter accounts.
        attr_reader :country
        # Whether the Session should require that linked accounts support payments and retrieve account numbers before completion.
        attr_reader :require_payment_method_support

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class Limits < ::Stripe::StripeObject
        # The number of accounts that can be linked in this Session.
        attr_reader :accounts

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class ManualEntry < ::Stripe::StripeObject
        # Controls how manual entry of bank account details is presented to the user.
        attr_reader :mode

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
      # The account holder for whom accounts are collected in this session.
      attr_reader :account_holder
      # The accounts that were collected as part of this Session.
      attr_reader :accounts
      # Tokenization is the process Stripe uses to collect sensitive card or bank
      # account details, or personally identifiable information (PII), directly from
      # your customers in a secure manner. A token representing this information is
      # returned to your server to use. Use our
      # [recommended payments integrations](https://docs.stripe.com/payments) to perform this process
      # on the client-side. This guarantees that no sensitive card data touches your server,
      # and allows your integration to operate in a PCI-compliant way.
      #
      # If you can't use client-side tokenization, you can also create tokens using
      # the API with either your publishable or secret API key. If
      # your integration uses this method, you're responsible for any PCI compliance
      # that it might require, and you must keep your secret API key safe. Unlike with
      # client-side tokenization, your customer's information isn't sent directly to
      # Stripe, so we can't determine how it's handled or stored.
      #
      # You can't store or use tokens more than once. To store card or bank account
      # information for later use, create [Customer](https://docs.stripe.com/api#customers)
      # objects or [External accounts](/api#external_accounts).
      # [Radar](https://docs.stripe.com/radar), our integrated solution for automatic fraud protection,
      # performs best with integrations that use client-side tokenization.
      attr_reader :bank_account_token
      # A value that will be passed to the client to launch the authentication flow.
      attr_reader :client_secret
      # Attribute for field filters
      attr_reader :filters
      # Unique identifier for the object.
      attr_reader :id
      # Attribute for field limits
      attr_reader :limits
      # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
      attr_reader :livemode
      # Attribute for field manual_entry
      attr_reader :manual_entry
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # Permissions requested for accounts collected during this session.
      attr_reader :permissions
      # Data features requested to be retrieved upon account creation.
      attr_reader :prefetch
      # For webview integrations only. Upon completing OAuth login in the native browser, the user will be redirected to this URL to return to your app.
      attr_reader :return_url

      # To launch the Financial Connections authorization flow, create a Session. The session's client_secret can be used to launch the flow using Stripe.js.
      def self.create(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/financial_connections/sessions",
          params: params,
          opts: opts
        )
      end

      def self.inner_class_types
        @inner_class_types = {
          account_holder: AccountHolder,
          filters: Filters,
          limits: Limits,
          manual_entry: ManualEntry,
        }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end
  end
end
