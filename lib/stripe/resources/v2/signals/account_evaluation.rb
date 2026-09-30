# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Signals
      # Account Evaluation resource for the Signals API.
      class AccountEvaluation < APIResource
        OBJECT_NAME = "v2.signals.account_evaluation"
        def self.object_name
          "v2.signals.account_evaluation"
        end

        class AccountActivityDetails < ::Stripe::StripeObject
          # The ID of the account activity created or associated with the evaluation.
          attr_reader :account_activity

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class AccountDetails < ::Stripe::StripeObject
          class Data < ::Stripe::StripeObject
            class Defaults < ::Stripe::StripeObject
              class Profile < ::Stripe::StripeObject
                # The business URL.
                attr_reader :business_url
                # Doing business as (DBA) name.
                attr_reader :doing_business_as
                # Description of the account's product or service.
                attr_reader :product_description

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # Account profile data.
              attr_reader :profile

              def self.inner_class_types
                @inner_class_types = { profile: Profile }
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end

            class Identity < ::Stripe::StripeObject
              class BusinessDetails < ::Stripe::StripeObject
                # Registered business name.
                attr_reader :registered_name

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # Business details for identity data.
              attr_reader :business_details

              def self.inner_class_types
                @inner_class_types = { business_details: BusinessDetails }
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Default account settings.
            attr_reader :defaults
            # Identity data.
            attr_reader :identity

            def self.inner_class_types
              @inner_class_types = { defaults: Defaults, identity: Identity }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The v2 account ID of the account.
          attr_reader :account
          # The v1 customer ID of the account, for users not yet migrated to v2/accounts.
          attr_reader :customer
          # Inline account data to evaluate without creating a v2 account.
          attr_reader :data

          def self.inner_class_types
            @inner_class_types = { data: Data }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class EvaluatedSignals < ::Stripe::StripeObject
          class FraudulentWebsite < ::Stripe::StripeObject
            # Human-readable details about the fraudulent website evaluation, when available.
            attr_reader :details
            # Timestamp at which the signal was evaluated.
            attr_reader :evaluated_at
            # Categorical assessment of the fraudulent website risk.
            attr_reader :risk_level
            # The account signal ID containing the full fraudulent website signal result.
            attr_reader :signal

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class UserAccountSharing < ::Stripe::StripeObject
            # Timestamp at which the signal was evaluated.
            attr_reader :evaluated_at
            # Categorical assessment of the account-sharing risk.
            attr_reader :risk_level
            # The specific risk score for the account, between 0.00 and 100.00, when available.
            attr_reader :score
            # The account signal ID containing the full user account-sharing signal result.
            attr_reader :signal

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end

            def self.field_encodings
              @field_encodings = { score: :decimal_string }
            end
          end

          class UserMultiAccounting < ::Stripe::StripeObject
            # Timestamp at which the signal was evaluated.
            attr_reader :evaluated_at
            # Categorical assessment of the multi-accounting risk.
            attr_reader :risk_level
            # The specific risk score for the account, between 0.00 and 100.00, when available.
            attr_reader :score
            # The account signal ID containing the full user multi-accounting signal result.
            attr_reader :signal

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end

            def self.field_encodings
              @field_encodings = { score: :decimal_string }
            end
          end
          # Fraudulent website result for the evaluation, when available.
          attr_reader :fraudulent_website
          # User account-sharing result for the evaluation, when available.
          attr_reader :user_account_sharing
          # User multi-accounting result for the evaluation, when available.
          attr_reader :user_multi_accounting

          def self.inner_class_types
            @inner_class_types = {
              fraudulent_website: FraudulentWebsite,
              user_account_sharing: UserAccountSharing,
              user_multi_accounting: UserMultiAccounting,
            }
          end

          def self.field_remappings
            @field_remappings = {}
          end

          def self.field_encodings
            @field_encodings = {
              user_account_sharing: { kind: :object, fields: { score: :decimal_string } },
              user_multi_accounting: { kind: :object, fields: { score: :decimal_string } },
            }
          end
        end
        # Account activity recorded alongside this evaluation, when applicable.
        attr_reader :account_activity_details
        # The account, customer, or inline account data being evaluated.
        attr_reader :account_details
        # Timestamp at which the evaluation was created.
        attr_reader :created
        # Signal results that are available for the evaluation.
        attr_reader :evaluated_signals
        # Unique identifier for the account evaluation.
        attr_reader :id
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # List of signals still pending evaluation.
        attr_reader :pending_signals
        # List of signals requested for evaluation.
        attr_reader :requested_signals

        def self.inner_class_types
          @inner_class_types = {
            account_activity_details: AccountActivityDetails,
            account_details: AccountDetails,
            evaluated_signals: EvaluatedSignals,
          }
        end

        def self.field_remappings
          @field_remappings = {}
        end

        def self.field_encodings
          @field_encodings = {
            evaluated_signals: {
              kind: :object,
              fields: {
                user_account_sharing: { kind: :object, fields: { score: :decimal_string } },
                user_multi_accounting: { kind: :object, fields: { score: :decimal_string } },
              },
            },
          }
        end
      end
    end
  end
end
