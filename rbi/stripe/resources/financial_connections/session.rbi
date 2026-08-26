# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module FinancialConnections
    # A Financial Connections Session is the secure way to programmatically launch the client-side Stripe.js modal that lets your users link their accounts.
    class Session < APIResource
      class AccountHolder < ::Stripe::StripeObject
        # The ID of the Stripe account that this account belongs to. Only available when `account_holder.type` is `account`.
        sig { returns(T.nilable(T.any(String, ::Stripe::Account))) }
        def account; end
        # The ID for an Account representing a customer that this account belongs to. Only available when `account_holder.type` is `customer`.
        sig { returns(T.nilable(T.any(String, ::Stripe::Customer))) }
        def customer; end
        # Attribute for field customer_account
        sig { returns(T.nilable(String)) }
        def customer_account; end
        # Type of account holder that this account belongs to.
        sig { returns(String) }
        def type; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class Filters < ::Stripe::StripeObject
        # Restricts the Session to subcategories of accounts that can be linked. Valid subcategories are: `checking`, `savings`, `mortgage`, `line_of_credit`, `credit_card`.
        sig { returns(T.nilable(T::Array[String])) }
        def account_subcategories; end
        # List of countries from which to filter accounts.
        sig { returns(T.nilable(T::Array[String])) }
        def countries; end
        # Country from which to filter accounts.
        sig { returns(T.nilable(String)) }
        def country; end
        # Whether the Session should require that linked accounts support payments and retrieve account numbers before completion.
        sig { returns(T.nilable(String)) }
        def require_payment_method_support; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class Limits < ::Stripe::StripeObject
        # The number of accounts that can be linked in this Session.
        sig { returns(Integer) }
        def accounts; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class ManualEntry < ::Stripe::StripeObject
        # Controls how manual entry of bank account details is presented to the user.
        sig { returns(T.nilable(String)) }
        def mode; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # The account holder for whom accounts are collected in this session.
      sig { returns(T.nilable(AccountHolder)) }
      def account_holder; end
      # The accounts that were collected as part of this Session.
      sig { returns(::Stripe::ListObject) }
      def accounts; end
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
      sig { returns(T.nilable(::Stripe::Token)) }
      def bank_account_token; end
      # A value that will be passed to the client to launch the authentication flow.
      sig { returns(T.nilable(String)) }
      def client_secret; end
      # Attribute for field filters
      sig { returns(T.nilable(Filters)) }
      def filters; end
      # Unique identifier for the object.
      sig { returns(String) }
      def id; end
      # Attribute for field limits
      sig { returns(T.nilable(Limits)) }
      def limits; end
      # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
      sig { returns(T::Boolean) }
      def livemode; end
      # Attribute for field manual_entry
      sig { returns(T.nilable(ManualEntry)) }
      def manual_entry; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
      # Permissions requested for accounts collected during this session.
      sig { returns(T::Array[String]) }
      def permissions; end
      # Data features requested to be retrieved upon account creation.
      sig { returns(T.nilable(T::Array[String])) }
      def prefetch; end
      # For webview integrations only. Upon completing OAuth login in the native browser, the user will be redirected to this URL to return to your app.
      sig { returns(T.nilable(String)) }
      def return_url; end
      # To launch the Financial Connections authorization flow, create a Session. The session's client_secret can be used to launch the flow using Stripe.js.
      sig {
        params(params: T.any(::Stripe::FinancialConnections::SessionCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::FinancialConnections::Session)
       }
      def self.create(params = {}, opts = {}); end
    end
  end
end