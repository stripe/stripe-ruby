# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Signals
      # An automatically evaluated signal on a v2 account.
      class AccountSignal < APIResource
        OBJECT_NAME = "v2.signals.account_signal"
        def self.object_name
          "v2.signals.account_signal"
        end

        class AccountDetails < ::Stripe::StripeObject
          # The v2 account ID of the account.
          attr_reader :account
          # The v1 customer ID of the account, for users not yet migrated to v2/accounts.
          attr_reader :customer

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class FraudulentMerchant < ::Stripe::StripeObject
          class Indicator < ::Stripe::StripeObject
            # A brief explanation of how this indicator contributed to the fraudulent merchant probability.
            attr_reader :explanation
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
          # Array of objects representing individual factors that contributed to the calculated probability. Absent when risk level is not_assessed or unknown,
          # or when the user is not on a product tier that includes indicators.
          attr_reader :indicators
          # The probability of the merchant being fraudulent. Can be between 0.00 and 100.00. Absent when risk level is not_assessed or unknown,
          # or when the user is not on a product tier that includes numeric scores.
          attr_reader :probability
          # Categorical assessment of the fraudulent merchant risk based on probability.
          attr_reader :risk_level

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

        class MerchantDelinquency < ::Stripe::StripeObject
          class Indicator < ::Stripe::StripeObject
            # A brief explanation of how this indicator contributed to the delinquency probability.
            attr_reader :explanation
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
          # Array of objects representing individual factors that contributed to the calculated probability of delinquency. Absent when risk level is not_assessed or unknown,
          # or when the user is not on a product tier that includes indicators.
          attr_reader :indicators
          # The probability of delinquency. Can be between 0.00 and 100.00. Absent when risk level is not_assessed or unknown,
          # or when the user is not on a product tier that includes numeric scores.
          attr_reader :probability
          # Categorical assessment of the delinquency risk based on probability.
          attr_reader :risk_level

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
        # The account or customer this signal is associated with.
        attr_reader :account_details
        # Timestamp at which the signal was created.
        attr_reader :created
        # Data for the fraudulent merchant signal. Present only when type is fraudulent_merchant.
        attr_reader :fraudulent_merchant
        # Unique identifier for the account signal.
        attr_reader :id
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        # Data for the merchant delinquency signal. Present only when type is merchant_delinquency.
        attr_reader :merchant_delinquency
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # The type of signal.
        attr_reader :type

        def self.inner_class_types
          @inner_class_types = {
            account_details: AccountDetails,
            fraudulent_merchant: FraudulentMerchant,
            merchant_delinquency: MerchantDelinquency,
          }
        end

        def self.field_remappings
          @field_remappings = {}
        end

        def self.field_encodings
          @field_encodings = {
            fraudulent_merchant: { kind: :object, fields: { probability: :decimal_string } },
            merchant_delinquency: { kind: :object, fields: { probability: :decimal_string } },
          }
        end
      end
    end
  end
end
