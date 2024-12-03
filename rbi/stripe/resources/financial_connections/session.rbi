# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module FinancialConnections
    # A Financial Connections Session is the secure way to programmatically launch the client-side Stripe.js modal that lets your users link their accounts.
    class Session < APIResource
      class AccountHolder < Stripe::StripeObject
        # The ID of the Stripe account this account belongs to. Should only be present if `account_holder.type` is `account`.
        sig { returns(T.any(String, Stripe::Account)) }
        attr_reader :account
        # ID of the Stripe customer this account belongs to. Present if and only if `account_holder.type` is `customer`.
        sig { returns(T.any(String, Stripe::Customer)) }
        attr_reader :customer
        # Type of account holder that this account belongs to.
        sig { returns(String) }
        attr_reader :type
      end
      class Filters < Stripe::StripeObject
        # Restricts the Session to subcategories of accounts that can be linked. Valid subcategories are: `checking`, `savings`, `mortgage`, `line_of_credit`, `credit_card`.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :account_subcategories
        # List of countries from which to filter accounts.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :countries
        # Stripe ID of the institution with which the customer should be directed to log in.
        sig { returns(String) }
        attr_reader :institution
      end
      class Limits < Stripe::StripeObject
        # The number of accounts that can be linked in this Session.
        sig { returns(Integer) }
        attr_reader :accounts
      end
      class ManualEntry < Stripe::StripeObject; end
      class StatusDetails < Stripe::StripeObject
        class Cancelled < Stripe::StripeObject
          # The reason for the Session being cancelled.
          sig { returns(String) }
          attr_reader :reason
        end
        # Attribute for field cancelled
        sig { returns(Cancelled) }
        attr_reader :cancelled
      end
      # The account holder for whom accounts are collected in this session.
      sig { returns(T.nilable(AccountHolder)) }
      attr_reader :account_holder

      # The accounts that were collected as part of this Session.
      sig { returns(Stripe::ListObject) }
      attr_reader :accounts

      # A value that will be passed to the client to launch the authentication flow.
      sig { returns(String) }
      attr_reader :client_secret

      # Attribute for field filters
      sig { returns(Filters) }
      attr_reader :filters

      # Unique identifier for the object.
      sig { returns(String) }
      attr_reader :id

      # Attribute for field limits
      sig { returns(Limits) }
      attr_reader :limits

      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode

      # Attribute for field manual_entry
      sig { returns(ManualEntry) }
      attr_reader :manual_entry

      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object

      # Permissions requested for accounts collected during this session.
      sig { returns(T::Array[String]) }
      attr_reader :permissions

      # Data features requested to be retrieved upon account creation.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :prefetch

      # For webview integrations only. Upon completing OAuth login in the native browser, the user will be redirected to this URL to return to your app.
      sig { returns(String) }
      attr_reader :return_url

      # The current state of the session.
      sig { returns(String) }
      attr_reader :status

      # Attribute for field status_details
      sig { returns(StatusDetails) }
      attr_reader :status_details
    end
  end
end