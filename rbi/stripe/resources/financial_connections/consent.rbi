# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module FinancialConnections
    # Stripe-issued localized Financial Connections consent text.
    class Consent < APIResource
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
      # Attribute for field account_holder
      sig { returns(AccountHolder) }
      def account_holder; end
      # The exact localized text that must be displayed before collecting affirmative consent.
      sig { returns(String) }
      def consent_text; end
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      def created; end
      # The exclusive time after which this Consent can no longer be used as launch evidence.
      sig { returns(Integer) }
      def expires_at; end
      # Unique identifier for the object.
      sig { returns(String) }
      def id; end
      # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
      sig { returns(T::Boolean) }
      def livemode; end
      # The BCP 47 locale used to render `consent_text`.
      sig { returns(String) }
      def locale; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
      # Creates a Financial Connections Consent object for an account holder.
      sig {
        params(params: T.any(::Stripe::FinancialConnections::ConsentCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::FinancialConnections::Consent)
       }
      def self.create(params = {}, opts = {}); end
    end
  end
end