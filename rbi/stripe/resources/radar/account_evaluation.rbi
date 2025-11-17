# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Radar
    # Account Evaluation resource returned by the Radar Account Evaluations API.
    class AccountEvaluation < APIResource
      class Event < ::Stripe::StripeObject
        # Time at which the event occurred. Measured in seconds since the Unix epoch.
        sig { returns(Integer) }
        def occurred_at; end
        # The type of event that occurred.
        sig { returns(String) }
        def type; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class Signals < ::Stripe::StripeObject
        class AccountSharing < ::Stripe::StripeObject
          # Score for this signal (float between 0.0-100.0).
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
          # Score for this signal (float between 0.0-100.0).
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
      # The ID of the Stripe customer the account evaluation is associated with.
      sig { returns(String) }
      def customer; end
      # The list of events that were reported for this Account Evaluation object via the report API.
      sig { returns(T.nilable(T::Array[Event])) }
      def events; end
      # Unique identifier for the object.
      sig { returns(String) }
      def id; end
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      def livemode; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
      # A hash of signal objects providing Radar's evaluation for the lifecycle event.
      sig { returns(T.nilable(Signals)) }
      def signals; end
      # The type of evaluation returned, based on the user's request.
      sig { returns(String) }
      def type; end
      # Creates a new AccountEvaluation object.
      sig {
        params(params: T.any(::Stripe::Radar::AccountEvaluationCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Radar::AccountEvaluation)
       }
      def self.create(params = {}, opts = {}); end

      # Reports an event on an AccountEvaluation object.
      sig {
        params(account_evaluation: String, params: T.any(::Stripe::Radar::AccountEvaluationUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Radar::AccountEvaluation)
       }
      def self.update(account_evaluation, params = {}, opts = {}); end
    end
  end
end