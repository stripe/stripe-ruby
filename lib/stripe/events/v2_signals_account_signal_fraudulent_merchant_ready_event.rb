# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs when a fraudulent merchant signal is ready for an account.
    class V2SignalsAccountSignalFraudulentMerchantReadyEvent < Stripe::V2::Core::Event
      def self.lookup_type
        "v2.signals.account_signal.fraudulent_merchant_ready"
      end

      class V2SignalsAccountSignalFraudulentMerchantReadyEventData < ::Stripe::StripeObject
        class FraudulentMerchant < ::Stripe::StripeObject
          class Indicator < ::Stripe::StripeObject
            # A brief explanation of how this indicator contributed to the fraudulent merchant probability.
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
          # Array of objects representing individual factors that contributed to the calculated probability. Maximum of 3.
          attr_reader :indicators
          # The probability of the merchant being fraudulent. Can be between 0.00 and 100.00. May be empty if the risk_level is UNKNOWN or NOT_ASSESSED.
          attr_reader :probability
          # Categorical assessment of the fraudulent merchant risk based on probability.
          attr_reader :risk_level

          def self.inner_class_types
            @inner_class_types = { indicators: Indicator }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Fraudulent merchant signal data. Present when type is fraudulent_merchant.
        attr_reader :fraudulent_merchant
        # Unique identifier for this account signal.
        attr_reader :id
        # The type of account signal. Currently only fraudulent_merchant is supported.
        attr_reader :type
        # Account ID that this signal is associated with.
        attr_reader :account
        # Timestamp when the signal was evaluated.
        attr_reader :evaluated_at

        def self.inner_class_types
          @inner_class_types = { fraudulent_merchant: FraudulentMerchant }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      def self.inner_class_types
        @inner_class_types = { data: V2SignalsAccountSignalFraudulentMerchantReadyEventData }
      end
      attr_reader :data
    end

    # Occurs when a fraudulent merchant signal is ready for an account.
    class V2SignalsAccountSignalFraudulentMerchantReadyEventNotification < Stripe::V2::Core::EventNotification
      def self.lookup_type
        "v2.signals.account_signal.fraudulent_merchant_ready"
      end
    end
  end
end
