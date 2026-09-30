# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Signals
      # Account Evaluation resource for the Signals API.
      class AccountEvaluation < APIResource
        class AccountActivityDetails < ::Stripe::StripeObject
          # The ID of the account activity created or associated with the evaluation.
          sig { returns(T.nilable(String)) }
          def account_activity; end
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
                sig { returns(String) }
                def business_url; end
                # Doing business as (DBA) name.
                sig { returns(T.nilable(String)) }
                def doing_business_as; end
                # Description of the account's product or service.
                sig { returns(T.nilable(String)) }
                def product_description; end
                def self.inner_class_types
                  @inner_class_types = {}
                end
                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # Account profile data.
              sig { returns(Profile) }
              def profile; end
              def self.inner_class_types
                @inner_class_types = {profile: Profile}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            class Identity < ::Stripe::StripeObject
              class BusinessDetails < ::Stripe::StripeObject
                # Registered business name.
                sig { returns(T.nilable(String)) }
                def registered_name; end
                def self.inner_class_types
                  @inner_class_types = {}
                end
                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # Business details for identity data.
              sig { returns(BusinessDetails) }
              def business_details; end
              def self.inner_class_types
                @inner_class_types = {business_details: BusinessDetails}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Default account settings.
            sig { returns(T.nilable(Defaults)) }
            def defaults; end
            # Identity data.
            sig { returns(T.nilable(Identity)) }
            def identity; end
            def self.inner_class_types
              @inner_class_types = {defaults: Defaults, identity: Identity}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The v2 account ID of the account.
          sig { returns(T.nilable(String)) }
          def account; end
          # The v1 customer ID of the account, for users not yet migrated to v2/accounts.
          sig { returns(T.nilable(String)) }
          def customer; end
          # Inline account data to evaluate without creating a v2 account.
          sig { returns(T.nilable(Data)) }
          def data; end
          def self.inner_class_types
            @inner_class_types = {data: Data}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class EvaluatedSignals < ::Stripe::StripeObject
          class FraudulentWebsite < ::Stripe::StripeObject
            # Human-readable details about the fraudulent website evaluation, when available.
            sig { returns(T.nilable(String)) }
            def details; end
            # Timestamp at which the signal was evaluated.
            sig { returns(T.nilable(String)) }
            def evaluated_at; end
            # Categorical assessment of the fraudulent website risk.
            sig { returns(String) }
            def risk_level; end
            # The account signal ID containing the full fraudulent website signal result.
            sig { returns(T.nilable(String)) }
            def signal; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class UserAccountSharing < ::Stripe::StripeObject
            # Timestamp at which the signal was evaluated.
            sig { returns(T.nilable(String)) }
            def evaluated_at; end
            # Categorical assessment of the account-sharing risk.
            sig { returns(String) }
            def risk_level; end
            # The specific risk score for the account, between 0.00 and 100.00, when available.
            sig { returns(T.nilable(BigDecimal)) }
            def score; end
            # The account signal ID containing the full user account-sharing signal result.
            sig { returns(T.nilable(String)) }
            def signal; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
            def self.field_encodings
              @field_encodings = {score: :decimal_string}
            end
          end
          class UserMultiAccounting < ::Stripe::StripeObject
            # Timestamp at which the signal was evaluated.
            sig { returns(T.nilable(String)) }
            def evaluated_at; end
            # Categorical assessment of the multi-accounting risk.
            sig { returns(String) }
            def risk_level; end
            # The specific risk score for the account, between 0.00 and 100.00, when available.
            sig { returns(T.nilable(BigDecimal)) }
            def score; end
            # The account signal ID containing the full user multi-accounting signal result.
            sig { returns(T.nilable(String)) }
            def signal; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
            def self.field_encodings
              @field_encodings = {score: :decimal_string}
            end
          end
          # Fraudulent website result for the evaluation, when available.
          sig { returns(T.nilable(FraudulentWebsite)) }
          def fraudulent_website; end
          # User account-sharing result for the evaluation, when available.
          sig { returns(T.nilable(UserAccountSharing)) }
          def user_account_sharing; end
          # User multi-accounting result for the evaluation, when available.
          sig { returns(T.nilable(UserMultiAccounting)) }
          def user_multi_accounting; end
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
              user_account_sharing: {kind: :object, fields: {score: :decimal_string}},
              user_multi_accounting: {kind: :object, fields: {score: :decimal_string}},
            }
          end
        end
        # Account activity recorded alongside this evaluation, when applicable.
        sig { returns(T.nilable(AccountActivityDetails)) }
        def account_activity_details; end
        # The account, customer, or inline account data being evaluated.
        sig { returns(AccountDetails) }
        def account_details; end
        # Timestamp at which the evaluation was created.
        sig { returns(String) }
        def created; end
        # Signal results that are available for the evaluation.
        sig { returns(T.nilable(EvaluatedSignals)) }
        def evaluated_signals; end
        # Unique identifier for the account evaluation.
        sig { returns(String) }
        def id; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # List of signals still pending evaluation.
        sig { returns(T::Array[String]) }
        def pending_signals; end
        # List of signals requested for evaluation.
        sig { returns(T::Array[String]) }
        def requested_signals; end
      end
    end
  end
end