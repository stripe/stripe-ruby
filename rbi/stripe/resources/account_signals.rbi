# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # The Account Signals API provides risk related signals that can be used to better manage risks.
  class AccountSignals < APIResource
    class Delinquency < ::Stripe::StripeObject
      class Indicator < ::Stripe::StripeObject
        # A brief explanation of how this indicator contributed to the delinquency probability.
        sig { returns(String) }
        def description; end
        # The effect this indicator had on the overall risk level.
        sig { returns(String) }
        def impact; end
        # The name of the specific indicator used in the risk assessment.
        sig { returns(String) }
        def indicator; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Time at which the signal was evaluated, measured in seconds since the Unix epoch.
      sig { returns(T.nilable(Integer)) }
      def evaluated_at; end
      # Array of objects representing individual factors that contributed to the calculated probability of delinquency.
      sig { returns(T.nilable(T::Array[Indicator])) }
      def indicators; end
      # The probability of delinquency. Can be between 0.00 and 100.00
      sig { returns(T.nilable(Float)) }
      def probability; end
      # Categorical assessment of the delinquency risk based on probability.
      sig { returns(String) }
      def risk_level; end
      # Unique identifier for the delinquency signal.
      sig { returns(T.nilable(String)) }
      def signal_id; end
      def self.inner_class_types
        @inner_class_types = {indicators: Indicator}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    # The account for which the signals belong to.
    sig { returns(String) }
    def account; end
    # The delinquency signal of the account
    sig { returns(T.nilable(Delinquency)) }
    def delinquency; end
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    def livemode; end
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    def object; end
  end
end