# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Risk
      # An immutable, point-in-time risk evaluation result that captures recommended controls and
      # their expected impact. The type identifies the scenario evaluated and its corresponding details.
      # Unavailable optional values are null.
      class EvaluationOutcome < APIResource
        class AccountDetails < ::Stripe::StripeObject
          class Data < ::Stripe::StripeObject
            # Contact email supplied for the evaluation, or null when unavailable.
            sig { returns(T.nilable(String)) }
            def contact_email; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Connected account evaluated.
          sig { returns(T.nilable(String)) }
          def account; end
          # Customer evaluated.
          sig { returns(T.nilable(String)) }
          def customer; end
          # Inline subject data for an evaluation without a Stripe entity.
          sig { returns(T.nilable(Data)) }
          def data; end
          def self.inner_class_types
            @inner_class_types = {data: Data}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class Delinquency < ::Stripe::StripeObject
          class BusinessObjective < ::Stripe::StripeObject
            class BaselineOutcome < ::Stripe::StripeObject
              # Expected financial loss from delinquency under this reserve configuration, expressed as a negative amount.
              sig { returns(::Stripe::V2::Amount) }
              def loss; end
              # Expected financial result after accounting for revenue and losses. Can be negative.
              sig { returns(::Stripe::V2::Amount) }
              def profitability; end
              # Expected revenue under this reserve configuration.
              sig { returns(::Stripe::V2::Amount) }
              def revenue; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            class ProjectedOutcome < ::Stripe::StripeObject
              # Expected financial loss from delinquency under this reserve configuration, expressed as a negative amount.
              sig { returns(::Stripe::V2::Amount) }
              def loss; end
              # Expected financial result after accounting for revenue and losses. Can be negative.
              sig { returns(::Stripe::V2::Amount) }
              def profitability; end
              # Expected revenue under this reserve configuration.
              sig { returns(::Stripe::V2::Amount) }
              def revenue; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Expected profitability, revenue, and losses if the current reserve configuration remains unchanged.
            # Provides a comparison for projected_outcome. Null when not reliably quantifiable.
            sig { returns(T.nilable(BaselineOutcome)) }
            def baseline_outcome; end
            # Expected profitability, revenue, and losses if the recommended controls are applied. Equals
            # baseline_outcome when the recommendation maintains the current state. Null when not reliably quantifiable.
            sig { returns(T.nilable(ProjectedOutcome)) }
            def projected_outcome; end
            # The financial objective the recommended controls are intended to improve.
            sig { returns(String) }
            def type; end
            def self.inner_class_types
              @inner_class_types = {
                baseline_outcome: BaselineOutcome,
                projected_outcome: ProjectedOutcome,
              }
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class Control < ::Stripe::StripeObject
            class RiskReserve < ::Stripe::StripeObject
              class Target < ::Stripe::StripeObject
                # Integer percentage of funds to reserve.
                sig { returns(Integer) }
                def percent; end
                # Integer number of days after which reserved funds are released.
                sig { returns(Integer) }
                def release_after_days; end
                # How reserved funds are released.
                sig { returns(String) }
                def release_type; end
                # Whether to reserve already available funds as well as future funds.
                sig { returns(T::Boolean) }
                def sweep_available_funds; end
                def self.inner_class_types
                  @inner_class_types = {}
                end
                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # Whether to update, maintain, or clear reserves.
              sig { returns(String) }
              def action; end
              # Recommended reserve configuration, specifying the percentage of funds to hold, when to release
              # them, and whether to include available funds. Populated for update_reserve; null for
              # maintain_current_state and clear_reserve.
              sig { returns(T.nilable(Target)) }
              def target; end
              def self.inner_class_types
                @inner_class_types = {target: Target}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The recommended action for funds held in reserve, including a target configuration when
            # updating reserves. Populated when type is risk_reserve; null otherwise.
            sig { returns(T.nilable(RiskReserve)) }
            def risk_reserve; end
            # The kind of control recommended to manage risk.
            sig { returns(String) }
            def type; end
            def self.inner_class_types
              @inner_class_types = {risk_reserve: RiskReserve}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class RiskAppetite < ::Stripe::StripeObject
            # How the recommendation prioritizes protection from losses relative to revenue.
            sig { returns(String) }
            def mode; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class SupportingSignals < ::Stripe::StripeObject
            class MerchantDelinquency < ::Stripe::StripeObject
              # Time the signal was evaluated.
              sig { returns(String) }
              def evaluated_at; end
              # Probability of delinquency, represented as a decimal string. Null when the risk level is
              # unknown or the account signal does not include a numeric score.
              sig { returns(T.nilable(BigDecimal)) }
              def probability; end
              # Assessed risk level.
              sig { returns(String) }
              def risk_level; end
              # ID of the supporting account signal.
              sig { returns(String) }
              def signal; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
              def self.field_encodings
                @field_encodings = {probability: :decimal_string}
              end
            end
            class PaymentDelinquencyExposure < ::Stripe::StripeObject
              # Time the signal was evaluated.
              sig { returns(String) }
              def evaluated_at; end
              # Exposure if the account becomes delinquent.
              sig { returns(::Stripe::V2::Amount) }
              def exposure_amount; end
              # ID of the supporting account signal.
              sig { returns(String) }
              def signal; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The account's assessed probability and level of delinquency risk. Null when unavailable.
            sig { returns(T.nilable(MerchantDelinquency)) }
            def merchant_delinquency; end
            # The account's assessed financial exposure if it becomes delinquent. Null when unavailable.
            sig { returns(T.nilable(PaymentDelinquencyExposure)) }
            def payment_delinquency_exposure; end
            def self.inner_class_types
              @inner_class_types = {
                merchant_delinquency: MerchantDelinquency,
                payment_delinquency_exposure: PaymentDelinquencyExposure,
              }
            end
            def self.field_remappings
              @field_remappings = {}
            end
            def self.field_encodings
              @field_encodings = {
                merchant_delinquency: {kind: :object, fields: {probability: :decimal_string}},
              }
            end
          end
          # The objective of the recommendation, with expected financial outcomes for the recommended
          # controls and the current configuration when those outcomes can be quantified.
          sig { returns(BusinessObjective) }
          def business_objective; end
          # Risk controls recommended to manage the account's delinquency risk.
          sig { returns(T::Array[Control]) }
          def controls; end
          # The balance between loss protection and revenue used to generate this recommendation.
          sig { returns(RiskAppetite) }
          def risk_appetite; end
          # Signals that informed this evaluation, with their values at evaluation time. Null when unavailable.
          sig { returns(T.nilable(SupportingSignals)) }
          def supporting_signals; end
          def self.inner_class_types
            @inner_class_types = {
              business_objective: BusinessObjective,
              controls: Control,
              risk_appetite: RiskAppetite,
              supporting_signals: SupportingSignals,
            }
          end
          def self.field_remappings
            @field_remappings = {}
          end
          def self.field_encodings
            @field_encodings = {
              supporting_signals: {
                kind: :object,
                fields: {
                  merchant_delinquency: {kind: :object, fields: {probability: :decimal_string}},
                },
              },
            }
          end
        end
        # Subject of the evaluation. Exactly one of account, customer, or data is provided.
        sig { returns(AccountDetails) }
        def account_details; end
        # Timestamp when the evaluation was created.
        sig { returns(String) }
        def created; end
        # Recommended controls, expected financial impact, and supporting signals for a delinquency
        # evaluation. Populated when type is delinquency; null otherwise.
        sig { returns(T.nilable(Delinquency)) }
        def delinquency; end
        # Unique identifier for the evaluation outcome, prefixed with evalout_.
        sig { returns(String) }
        def id; end
        # Whether the evaluation outcome is in live mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # How the outcome was generated.
        sig { returns(String) }
        def origin; end
        # Scenario evaluated; determines which type-specific payload is provided.
        sig { returns(String) }
        def type; end
      end
    end
  end
end