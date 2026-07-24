# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Signals
      # An automatically evaluated signal on an account. Each Account Signal object corresponds to
      # exactly one signal type, indicated by type. Only the type-specific field is populated; other
      # type-specific payload fields are null. If an account has multiple signals, Stripe creates
      # separate account signal objects.
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
        class PaymentDelinquencyExposure < ::Stripe::StripeObject
          class AdditionalDetails < ::Stripe::StripeObject
            class GrossExposureAmount < ::Stripe::StripeObject
              # ISO 4217 currency code.
              sig { returns(String) }
              def currency; end
              # Amount in minor units for the given currency.
              sig { returns(Integer) }
              def value; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
              def self.field_encodings
                @field_encodings = {value: :int64_string}
              end
            end
            # Total payments still exposed to dispute or refund risk in the event of delinquency.
            sig { returns(T.nilable(GrossExposureAmount)) }
            def gross_exposure_amount; end
            # Percentage of Gross Exposure expected to be disputed or refunded and materialize as a loss in the event of delinquency.
            sig { returns(T.nilable(Integer)) }
            def loss_given_default_in_percentages; end
            # Predicted window size in days until dispute is raised.
            sig { returns(T.nilable(Integer)) }
            def predicted_dispute_window_in_days; end
            def self.inner_class_types
              @inner_class_types = {gross_exposure_amount: GrossExposureAmount}
            end
            def self.field_remappings
              @field_remappings = {}
            end
            def self.field_encodings
              @field_encodings = {
                gross_exposure_amount: {kind: :object, fields: {value: :int64_string}},
              }
            end
          end
          class ExposureAmount < ::Stripe::StripeObject
            # ISO 4217 currency code.
            sig { returns(String) }
            def currency; end
            # Amount in minor units for the given currency.
            sig { returns(Integer) }
            def value; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
            def self.field_encodings
              @field_encodings = {value: :int64_string}
            end
          end
          # Additional details about the exposure assessment.
          sig { returns(AdditionalDetails) }
          def additional_details; end
          # The exposure amount if this account becomes delinquent.
          sig { returns(ExposureAmount) }
          def exposure_amount; end
          def self.inner_class_types
            @inner_class_types = {
              additional_details: AdditionalDetails,
              exposure_amount: ExposureAmount,
            }
          end
          def self.field_remappings
            @field_remappings = {}
          end
          def self.field_encodings
            @field_encodings = {
              additional_details: {
                kind: :object,
                fields: {gross_exposure_amount: {kind: :object, fields: {value: :int64_string}}},
              },
              exposure_amount: {kind: :object, fields: {value: :int64_string}},
            }
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
        # Data for the payment delinquency exposure signal. Present only when type is payment_delinquency_exposure.
        sig { returns(T.nilable(PaymentDelinquencyExposure)) }
        def payment_delinquency_exposure; end
        # The type of signal.
        sig { returns(String) }
        def type; end
      end
    end
  end
end