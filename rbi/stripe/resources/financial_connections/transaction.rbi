# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module FinancialConnections
    # A Transaction represents a real transaction that affects a Financial Connections Account balance.
    class Transaction < APIResource
      class Classification < ::Stripe::StripeObject
        class Credit < ::Stripe::StripeObject
          # Stripe's confidence in this classification.
          sig { returns(T.nilable(String)) }
          def confidence_level; end
          # The detailed category label for this transaction.
          sig { returns(T.nilable(String)) }
          def detailed_label; end
          # The primary category label for this transaction.
          sig { returns(T.nilable(String)) }
          def primary_label; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class MoneyMovement < ::Stripe::StripeObject
          # Stripe's confidence in this classification.
          sig { returns(T.nilable(String)) }
          def confidence_level; end
          # The detailed category label for this transaction.
          sig { returns(T.nilable(String)) }
          def detailed_label; end
          # The primary category label for this transaction.
          sig { returns(T.nilable(String)) }
          def primary_label; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class PersonalFinance < ::Stripe::StripeObject
          # Stripe's confidence in this classification.
          sig { returns(T.nilable(String)) }
          def confidence_level; end
          # The detailed category label for this transaction.
          sig { returns(T.nilable(String)) }
          def detailed_label; end
          # The primary category label for this transaction.
          sig { returns(T.nilable(String)) }
          def primary_label; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Attribute for field credit
        sig { returns(T.nilable(Credit)) }
        def credit; end
        # Attribute for field money_movement
        sig { returns(T.nilable(MoneyMovement)) }
        def money_movement; end
        # Attribute for field personal_finance
        sig { returns(T.nilable(PersonalFinance)) }
        def personal_finance; end
        # The taxonomy type for this classification entry.
        sig { returns(String) }
        def type; end
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
          sig { returns(T.nilable(String)) }
          def confidence_level; end
          # The normalized merchant name for this transaction.
          sig { returns(T.nilable(String)) }
          def name; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Attribute for field merchant
        sig { returns(Merchant) }
        def merchant; end
        def self.inner_class_types
          @inner_class_types = {merchant: Merchant}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class StatusTransitions < ::Stripe::StripeObject
        # Time at which this transaction posted. Measured in seconds since the Unix epoch.
        sig { returns(T.nilable(Integer)) }
        def posted_at; end
        # Time at which this transaction was voided. Measured in seconds since the Unix epoch.
        sig { returns(T.nilable(Integer)) }
        def void_at; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # The ID of the Financial Connections Account this transaction belongs to.
      sig { returns(String) }
      def account; end
      # The amount of this transaction, in cents (or local equivalent).
      sig { returns(Integer) }
      def amount; end
      # Classification labels for this transaction, one entry per subscribed use case.
      sig { returns(T.nilable(T::Array[Classification])) }
      def classifications; end
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(String) }
      def currency; end
      # The description of this transaction.
      sig { returns(String) }
      def description; end
      # Enriched merchant information for this transaction.
      sig { returns(T.nilable(Enrichments)) }
      def enrichments; end
      # Unique identifier for the object.
      sig { returns(String) }
      def id; end
      # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
      sig { returns(T::Boolean) }
      def livemode; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
      # The status of the transaction.
      sig { returns(String) }
      def status; end
      # Attribute for field status_transitions
      sig { returns(StatusTransitions) }
      def status_transitions; end
      # Time at which the transaction was transacted. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      def transacted_at; end
      # The token of the transaction refresh that last updated or created this transaction.
      sig { returns(String) }
      def transaction_refresh; end
      # Time at which the object was last updated. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      def updated; end
      # Returns a list of Financial Connections Transaction objects.
      sig {
        params(params: T.any(::Stripe::FinancialConnections::TransactionListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
       }
      def self.list(params = {}, opts = {}); end
    end
  end
end