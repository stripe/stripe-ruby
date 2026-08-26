# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module FinancialConnections
    # A Transaction represents a real transaction that affects a Financial Connections Account balance.
    class Transaction < APIResource
      extend Stripe::APIOperations::List

      OBJECT_NAME = "financial_connections.transaction"
      def self.object_name
        "financial_connections.transaction"
      end

      class Classification < ::Stripe::StripeObject
        class Credit < ::Stripe::StripeObject
          # Stripe's confidence in this classification.
          attr_reader :confidence_level
          # The detailed category label for this transaction.
          attr_reader :detailed_label
          # The primary category label for this transaction.
          attr_reader :primary_label

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class MoneyMovement < ::Stripe::StripeObject
          # Stripe's confidence in this classification.
          attr_reader :confidence_level
          # The detailed category label for this transaction.
          attr_reader :detailed_label
          # The primary category label for this transaction.
          attr_reader :primary_label

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class PersonalFinance < ::Stripe::StripeObject
          # Stripe's confidence in this classification.
          attr_reader :confidence_level
          # The detailed category label for this transaction.
          attr_reader :detailed_label
          # The primary category label for this transaction.
          attr_reader :primary_label

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Attribute for field credit
        attr_reader :credit
        # Attribute for field money_movement
        attr_reader :money_movement
        # Attribute for field personal_finance
        attr_reader :personal_finance
        # The taxonomy type for this classification entry.
        attr_reader :type

        def self.inner_class_types
          @inner_class_types = {
            credit: Credit,
            money_movement: MoneyMovement,
            personal_finance: PersonalFinance,
          }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class Enrichments < ::Stripe::StripeObject
        class Merchant < ::Stripe::StripeObject
          # Stripe's confidence in the enriched merchant name.
          attr_reader :confidence_level
          # The normalized merchant name for this transaction.
          attr_reader :name

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Attribute for field merchant
        attr_reader :merchant

        def self.inner_class_types
          @inner_class_types = { merchant: Merchant }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class StatusTransitions < ::Stripe::StripeObject
        # Time at which this transaction posted. Measured in seconds since the Unix epoch.
        attr_reader :posted_at
        # Time at which this transaction was voided. Measured in seconds since the Unix epoch.
        attr_reader :void_at

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
      # The ID of the Financial Connections Account this transaction belongs to.
      attr_reader :account
      # The amount of this transaction, in cents (or local equivalent).
      attr_reader :amount
      # Classification labels for this transaction, one entry per subscribed use case.
      attr_reader :classifications
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_reader :currency
      # The description of this transaction.
      attr_reader :description
      # Enriched merchant information for this transaction.
      attr_reader :enrichments
      # Unique identifier for the object.
      attr_reader :id
      # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
      attr_reader :livemode
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # The status of the transaction.
      attr_reader :status
      # Attribute for field status_transitions
      attr_reader :status_transitions
      # Time at which the transaction was transacted. Measured in seconds since the Unix epoch.
      attr_reader :transacted_at
      # The token of the transaction refresh that last updated or created this transaction.
      attr_reader :transaction_refresh
      # Time at which the object was last updated. Measured in seconds since the Unix epoch.
      attr_reader :updated

      # Returns a list of Financial Connections Transaction objects.
      def self.list(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/financial_connections/transactions",
          params: params,
          opts: opts
        )
      end

      def self.inner_class_types
        @inner_class_types = {
          classifications: Classification,
          enrichments: Enrichments,
          status_transitions: StatusTransitions,
        }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end
  end
end
