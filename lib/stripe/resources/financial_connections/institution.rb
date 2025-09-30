# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module FinancialConnections
    # An institution represents a financial institution to which an end user can connect using the Financial Connections authentication flow.
    class Institution < APIResource
      extend Stripe::APIOperations::List

      OBJECT_NAME = "financial_connections.institution"
      def self.object_name
        "financial_connections.institution"
      end

      class Features < Stripe::StripeObject
        class Balances < Stripe::StripeObject
          # Whether the given feature is supported by this institution.
          attr_reader :supported

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class Ownership < Stripe::StripeObject
          # Whether the given feature is supported by this institution.
          attr_reader :supported

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class PaymentMethod < Stripe::StripeObject
          # Whether the given feature is supported by this institution.
          attr_reader :supported

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class Transactions < Stripe::StripeObject
          # Whether the given feature is supported by this institution.
          attr_reader :supported

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Attribute for field balances
        attr_reader :balances
        # Attribute for field ownership
        attr_reader :ownership
        # Attribute for field payment_method
        attr_reader :payment_method
        # Attribute for field transactions
        attr_reader :transactions

        def self.inner_class_types
          @inner_class_types = {
            balances: Balances,
            ownership: Ownership,
            payment_method: PaymentMethod,
            transactions: Transactions,
          }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
      # The list of countries supported by this institution, formatted as ISO country codes.
      attr_reader :countries
      # Attribute for field features
      attr_reader :features
      # Unique identifier for the object.
      attr_reader :id
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      # The name of this institution.
      attr_reader :name
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # A list of routing numbers which are known to correspond to this institution. Due to the many to many relationship between institutions and routing numbers, this list may not be comprehensive and routing numbers may also be shared between institutions.
      attr_reader :routing_numbers
      # The status of this institution in the Financial Connections authentication flow.
      attr_reader :status
      # A URL corresponding to this institution. This URL is also displayed in the authentication flow to help end users confirm that they are authenticating with the right institution.
      attr_reader :url

      # Returns a list of Financial Connections Institution objects.
      def self.list(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/financial_connections/institutions",
          params: params,
          opts: opts
        )
      end

      def self.inner_class_types
        @inner_class_types = { features: Features }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end
  end
end
