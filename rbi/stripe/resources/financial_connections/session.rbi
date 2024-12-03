# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module FinancialConnections
    # A Financial Connections Session is the secure way to programmatically launch the client-side Stripe.js modal that lets your users link their accounts.
    class Session < APIResource
      class AccountHolder < Stripe::StripeObject
        sig { returns(T.any(String, Stripe::Account)) }
        attr_reader :account
        sig { returns(T.any(String, Stripe::Customer)) }
        attr_reader :customer
        sig { returns(String) }
        attr_reader :type
      end
      class Filters < Stripe::StripeObject
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :account_subcategories
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :countries
        sig { returns(String) }
        attr_reader :institution
      end
      class Limits < Stripe::StripeObject
        sig { returns(Integer) }
        attr_reader :accounts
      end
      class ManualEntry < Stripe::StripeObject; end
      class StatusDetails < Stripe::StripeObject
        class Cancelled < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :reason
        end
        sig { returns(Cancelled) }
        attr_reader :cancelled
      end
      sig { returns(T.nilable(AccountHolder)) }
      # The account holder for whom accounts are collected in this session.
      attr_reader :account_holder
      sig { returns(Stripe::ListObject) }
      # The accounts that were collected as part of this Session.
      attr_reader :accounts
      sig { returns(String) }
      # A value that will be passed to the client to launch the authentication flow.
      attr_reader :client_secret
      sig { returns(Filters) }
      # Attribute for field filters
      attr_reader :filters
      sig { returns(String) }
      # Unique identifier for the object.
      attr_reader :id
      sig { returns(Limits) }
      # Attribute for field limits
      attr_reader :limits
      sig { returns(T::Boolean) }
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      sig { returns(ManualEntry) }
      # Attribute for field manual_entry
      attr_reader :manual_entry
      sig { returns(String) }
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      sig { returns(T::Array[String]) }
      # Permissions requested for accounts collected during this session.
      attr_reader :permissions
      sig { returns(T.nilable(T::Array[String])) }
      # Data features requested to be retrieved upon account creation.
      attr_reader :prefetch
      sig { returns(String) }
      # For webview integrations only. Upon completing OAuth login in the native browser, the user will be redirected to this URL to return to your app.
      attr_reader :return_url
      sig { returns(String) }
      # The current state of the session.
      attr_reader :status
      sig { returns(StatusDetails) }
      # Attribute for field status_details
      attr_reader :status_details
    end
  end
end