# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Risk
      # An immutable, point-in-time risk evaluation result that captures recommended controls and
      # their expected impact. The type identifies the scenario evaluated and its corresponding details.
      # Unavailable optional values are null.
      class EvaluationOutcome < APIResource
        OBJECT_NAME = "v2.risk.evaluation_outcome"
        def self.object_name
          "v2.risk.evaluation_outcome"
        end

        class AccountDetails < ::Stripe::StripeObject
          class Data < ::Stripe::StripeObject
            # Contact email supplied for the evaluation, or null when unavailable.
            attr_reader :contact_email

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Connected account evaluated.
          attr_reader :account
          # Customer evaluated.
          attr_reader :customer
          # Inline subject data for an evaluation without a Stripe entity.
          attr_reader :data

          def self.inner_class_types
            @inner_class_types = { data: Data }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class Delinquency < ::Stripe::StripeObject
          class BusinessObjective < ::Stripe::StripeObject
            class BaselineOutcome < ::Stripe::StripeObject
              # Expected financial loss from delinquency under this reserve configuration, expressed as a negative amount.
              attr_reader :loss
              # Expected financial result after accounting for revenue and losses. Can be negative.
              attr_reader :profitability
              # Expected revenue under this reserve configuration.
              attr_reader :revenue

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end

            class ProjectedOutcome < ::Stripe::StripeObject
              # Expected financial loss from delinquency under this reserve configuration, expressed as a negative amount.
              attr_reader :loss
              # Expected financial result after accounting for revenue and losses. Can be negative.
              attr_reader :profitability
              # Expected revenue under this reserve configuration.
              attr_reader :revenue

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Expected profitability, revenue, and losses if the current reserve configuration remains unchanged.
            # Provides a comparison for projected_outcome. Null when not reliably quantifiable.
            attr_reader :baseline_outcome
            # Expected profitability, revenue, and losses if the recommended controls are applied. Equals
            # baseline_outcome when the recommendation maintains the current state. Null when not reliably quantifiable.
            attr_reader :projected_outcome
            # The financial objective the recommended controls are intended to improve.
            attr_reader :type

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
                attr_reader :percent
                # Integer number of days after which reserved funds are released.
                attr_reader :release_after_days
                # How reserved funds are released.
                attr_reader :release_type
                # Whether to reserve already available funds as well as future funds.
                attr_reader :sweep_available_funds

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # Whether to update, maintain, or clear reserves.
              attr_reader :action
              # Recommended reserve configuration, specifying the percentage of funds to hold, when to release
              # them, and whether to include available funds. Populated for update_reserve; null for
              # maintain_current_state and clear_reserve.
              attr_reader :target

              def self.inner_class_types
                @inner_class_types = { target: Target }
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The recommended action for funds held in reserve, including a target configuration when
            # updating reserves. Populated when type is risk_reserve; null otherwise.
            attr_reader :risk_reserve
            # The kind of control recommended to manage risk.
            attr_reader :type

            def self.inner_class_types
              @inner_class_types = { risk_reserve: RiskReserve }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class RiskAppetite < ::Stripe::StripeObject
            # How the recommendation prioritizes protection from losses relative to revenue.
            attr_reader :mode

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
              attr_reader :evaluated_at
              # Probability of delinquency, represented as a decimal string. Null when the risk level is
              # unknown or the account signal does not include a numeric score.
              attr_reader :probability
              # Assessed risk level.
              attr_reader :risk_level
              # ID of the supporting account signal.
              attr_reader :signal

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end

              def self.field_encodings
                @field_encodings = { probability: :decimal_string }
              end
            end

            class PaymentDelinquencyExposure < ::Stripe::StripeObject
              # Time the signal was evaluated.
              attr_reader :evaluated_at
              # Exposure if the account becomes delinquent.
              attr_reader :exposure_amount
              # ID of the supporting account signal.
              attr_reader :signal

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The account's assessed probability and level of delinquency risk. Null when unavailable.
            attr_reader :merchant_delinquency
            # The account's assessed financial exposure if it becomes delinquent. Null when unavailable.
            attr_reader :payment_delinquency_exposure

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
                merchant_delinquency: { kind: :object, fields: { probability: :decimal_string } },
              }
            end
          end
          # The objective of the recommendation, with expected financial outcomes for the recommended
          # controls and the current configuration when those outcomes can be quantified.
          attr_reader :business_objective
          # Risk controls recommended to manage the account's delinquency risk.
          attr_reader :controls
          # The balance between loss protection and revenue used to generate this recommendation.
          attr_reader :risk_appetite
          # Signals that informed this evaluation, with their values at evaluation time. Null when unavailable.
          attr_reader :supporting_signals

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
                  merchant_delinquency: { kind: :object, fields: { probability: :decimal_string } },
                },
              },
            }
          end
        end
        # Subject of the evaluation. Exactly one of account, customer, or data is provided.
        attr_reader :account_details
        # Timestamp when the evaluation was created.
        attr_reader :created
        # Recommended controls, expected financial impact, and supporting signals for a delinquency
        # evaluation. Populated when type is delinquency; null otherwise.
        attr_reader :delinquency
        # Unique identifier for the evaluation outcome, prefixed with evalout_.
        attr_reader :id
        # Whether the evaluation outcome is in live mode.
        attr_reader :livemode
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # How the outcome was generated.
        attr_reader :origin
        # Scenario evaluated; determines which type-specific payload is provided.
        attr_reader :type

        def self.inner_class_types
          @inner_class_types = { account_details: AccountDetails, delinquency: Delinquency }
        end

        def self.field_remappings
          @field_remappings = {}
        end

        def self.field_encodings
          @field_encodings = {
            delinquency: {
              kind: :object,
              fields: {
                supporting_signals: {
                  kind: :object,
                  fields: {
                    merchant_delinquency: { kind: :object, fields: { probability: :decimal_string } },
                  },
                },
              },
            },
          }
        end
      end
    end
  end
end
