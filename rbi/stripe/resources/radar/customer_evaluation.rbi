# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Radar
    # Customer Evaluation resource returned by the Radar Customer Evaluations API.
    class CustomerEvaluation < APIResource
      class Event < ::Stripe::StripeObject
        class LoginFailed < ::Stripe::StripeObject
          # The reason why this login failed.
          sig { returns(String) }
          def reason; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class RegistrationFailed < ::Stripe::StripeObject
          # The reason why this registration failed.
          sig { returns(String) }
          def reason; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Data about a failed login event.
        sig { returns(T.nilable(LoginFailed)) }
        def login_failed; end
        # Time at which the event occurred. Measured in seconds since the Unix epoch.
        sig { returns(Integer) }
        def occurred_at; end
        # Data about a failed registration event.
        sig { returns(T.nilable(RegistrationFailed)) }
        def registration_failed; end
        # The type of event that occurred.
        sig { returns(String) }
        def type; end
        def self.inner_class_types
          @inner_class_types = {login_failed: LoginFailed, registration_failed: RegistrationFailed}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class Signals < ::Stripe::StripeObject
        class AccountSharing < ::Stripe::StripeObject
          # Time at which the signal was evaluated. Measured in seconds since the Unix epoch.
          sig { returns(Integer) }
          def evaluated_at; end
          # The risk level for this signal.
          sig { returns(T.nilable(String)) }
          def risk_level; end
          # Score for this signal (between 0.0 and 100.0).
          sig { returns(Float) }
          def score; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class MultiAccounting < ::Stripe::StripeObject
          # Time at which the signal was evaluated. Measured in seconds since the Unix epoch.
          sig { returns(Integer) }
          def evaluated_at; end
          # The risk level for this signal.
          sig { returns(T.nilable(String)) }
          def risk_level; end
          # Score for this signal (between 0.0 and 100.0).
          sig { returns(Float) }
          def score; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Attribute for field account_sharing
        sig { returns(T.nilable(AccountSharing)) }
        def account_sharing; end
        # Attribute for field multi_accounting
        sig { returns(T.nilable(MultiAccounting)) }
        def multi_accounting; end
        def self.inner_class_types
          @inner_class_types = {account_sharing: AccountSharing, multi_accounting: MultiAccounting}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      def created_at; end
      # The ID of the Customer to associate with this CustomerEvaluation.
      sig { returns(T.nilable(String)) }
      def customer; end
      # The type of evaluation event.
      sig { returns(String) }
      def event_type; end
      # A list of events that have been reported on this customer evaluation.
      sig { returns(T.nilable(T::Array[Event])) }
      def events; end
      # Unique identifier for the object.
      sig { returns(String) }
      def id; end
      # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
      sig { returns(T::Boolean) }
      def livemode; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
      # A hash of signal objects providing Radar's evaluation of the customer.
      sig { returns(T.nilable(Signals)) }
      def signals; end
      # Creates a new CustomerEvaluation object.
      sig {
        params(params: T.any(::Stripe::Radar::CustomerEvaluationCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Radar::CustomerEvaluation)
       }
      def self.create(params = {}, opts = {}); end

      # Reports an event on a CustomerEvaluation object.
      sig {
        params(customer_evaluation: String, params: T.any(::Stripe::Radar::CustomerEvaluationUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Radar::CustomerEvaluation)
       }
      def self.update(customer_evaluation, params = {}, opts = {}); end
    end
  end
end