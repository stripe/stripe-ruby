# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module FinancialConnections
    # Stripe-issued localized Financial Connections consent text.
    class Consent < APIResource
      extend Stripe::APIOperations::Create

      OBJECT_NAME = "financial_connections.consent"
      def self.object_name
        "financial_connections.consent"
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
      # Attribute for field account_holder
      attr_reader :account_holder
      # The exact localized text that must be displayed before collecting affirmative consent.
      attr_reader :consent_text
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      # The exclusive time after which this Consent can no longer be used as launch evidence.
      attr_reader :expires_at
      # Unique identifier for the object.
      attr_reader :id
      # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
      attr_reader :livemode
      # The BCP 47 locale used to render `consent_text`.
      attr_reader :locale
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object

      # Creates a Financial Connections Consent object for an account holder.
      def self.create(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/financial_connections/consents",
          params: params,
          opts: opts
        )
      end

      def self.inner_class_types
        @inner_class_types = { account_holder: AccountHolder }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end
  end
end
