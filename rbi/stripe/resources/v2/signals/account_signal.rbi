# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Signals
      # An automatically evaluated signal on a v2 account.
      class AccountSignal < APIResource
        class AccountDetails < ::Stripe::StripeObject
          # The v2 account ID of the account.
          sig { returns(T.nilable(String)) }
          def account; end
          # The v1 customer ID of the account, for users not yet migrated to v2/accounts.
          sig { returns(T.nilable(String)) }
          def customer; end
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
            sig { returns(String) }
            def explanation; end
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
          # Array of objects representing individual factors that contributed to the calculated probability. Absent when risk level is not_assessed or unknown,
          # or when the user is not on a product tier that includes indicators.
          sig { returns(T::Array[Indicator]) }
          def indicators; end
          # The probability of the merchant being fraudulent. Can be between 0.00 and 100.00. Absent when risk level is not_assessed or unknown,
          # or when the user is not on a product tier that includes numeric scores.
          sig { returns(T.nilable(BigDecimal)) }
          def probability; end
          # Categorical assessment of the fraudulent merchant risk based on probability.
          sig { returns(String) }
          def risk_level; end
          def self.inner_class_types
            @inner_class_types = {indicators: Indicator}
          end
          def self.field_remappings
            @field_remappings = {}
          end
          def self.field_encodings
            @field_encodings = {probability: :decimal_string}
          end
        end
        class MerchantDelinquency < ::Stripe::StripeObject
          class Indicator < ::Stripe::StripeObject
            # A brief explanation of how this indicator contributed to the delinquency probability.
            sig { returns(String) }
            def explanation; end
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
          # Array of objects representing individual factors that contributed to the calculated probability of delinquency. Absent when risk level is not_assessed or unknown,
          # or when the user is not on a product tier that includes indicators.
          sig { returns(T::Array[Indicator]) }
          def indicators; end
          # The probability of delinquency. Can be between 0.00 and 100.00. Absent when risk level is not_assessed or unknown,
          # or when the user is not on a product tier that includes numeric scores.
          sig { returns(T.nilable(BigDecimal)) }
          def probability; end
          # Categorical assessment of the delinquency risk based on probability.
          sig { returns(String) }
          def risk_level; end
          def self.inner_class_types
            @inner_class_types = {indicators: Indicator}
          end
          def self.field_remappings
            @field_remappings = {}
          end
          def self.field_encodings
            @field_encodings = {probability: :decimal_string}
          end
        end
        # The account or customer this signal is associated with.
        sig { returns(T.nilable(AccountDetails)) }
        def account_details; end
        # Timestamp at which the signal was created.
        sig { returns(String) }
        def created; end
        # Data for the fraudulent merchant signal. Present only when type is fraudulent_merchant.
        sig { returns(T.nilable(FraudulentMerchant)) }
        def fraudulent_merchant; end
        # Unique identifier for the account signal.
        sig { returns(String) }
        def id; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # Data for the merchant delinquency signal. Present only when type is merchant_delinquency.
        sig { returns(T.nilable(MerchantDelinquency)) }
        def merchant_delinquency; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # The type of signal.
        sig { returns(String) }
        def type; end
      end
    end
  end
end