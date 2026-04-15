# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs when a delinquency signal is created for an account.
    class V1AccountSignalsIncludingDelinquencyCreatedEvent < Stripe::V2::Core::Event
      def self.lookup_type
        "v1.account_signals[delinquency].created"
      end

      class V1AccountSignalsIncludingDelinquencyCreatedEventData < ::Stripe::StripeObject
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
        # The account for which the signals belong to.
        attr_reader :account
        # Time at which the signal was evaluated.
        attr_reader :evaluated_at
        # Array of objects representing individual factors that contributed to the calculated probability of delinquency.
        attr_reader :indicators
        # The probability of delinquency. Can be between 0.00 and 100.00.
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

        def self.field_encodings
          @field_encodings = { probability: :decimal_string }
        end
      end

      def self.inner_class_types
        @inner_class_types = { data: V1AccountSignalsIncludingDelinquencyCreatedEventData }
      end
      attr_reader :data
    end

    # Occurs when a delinquency signal is created for an account.
    class V1AccountSignalsIncludingDelinquencyCreatedEventNotification < Stripe::V2::Core::EventNotification
      def self.lookup_type
        "v1.account_signals[delinquency].created"
      end
    end
  end
end
