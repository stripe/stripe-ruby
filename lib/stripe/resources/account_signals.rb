# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # The Account Signals API provides risk related signals that can be used to better manage risks.
  class AccountSignals < APIResource
    OBJECT_NAME = "account_signals"
    def self.object_name
      "account_signals"
    end

    class Delinquency < ::Stripe::StripeObject
      class Indicator < ::Stripe::StripeObject
        # A brief explanation of how this indicator contributed to the delinquency probability.
        attr_reader :description
        # The effect this indicator had on the overall risk level.
        attr_reader :impact
        # The name of the specific indicator used in the risk assessment.
        attr_reader :indicator

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Time at which the signal was evaluated, measured in seconds since the Unix epoch.
      attr_reader :evaluated_at
      # Array of objects representing individual factors that contributed to the calculated probability of delinquency.
      attr_reader :indicators
      # The probability of delinquency. Can be between 0.00 and 100.00
      attr_reader :probability
      # Categorical assessment of the delinquency risk based on probability.
      attr_reader :risk_level
      # Unique identifier for the delinquency signal.
      attr_reader :signal_id

      def self.inner_class_types
        @inner_class_types = { indicators: Indicator }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end
    # The account for which the signals belong to.
    attr_reader :account
    # The delinquency signal of the account
    attr_reader :delinquency
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object

    def self.inner_class_types
      @inner_class_types = { delinquency: Delinquency }
    end

    def self.field_remappings
      @field_remappings = {}
    end
  end
end
