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
          class AdditionalDetails < ::Stripe::StripeObject
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
            # Array of objects representing individual factors that contributed to the calculated probability. Absent when risk level is unknown,
            # or when the user is not on a product tier that includes indicators.
            sig { returns(T::Array[Indicator]) }
            def indicators; end
            def self.inner_class_types
              @inner_class_types = {indicators: Indicator}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Supplementary contextual data for the signal, including indicators.
          sig { returns(T.nilable(AdditionalDetails)) }
          def additional_details; end
          # The probability of the merchant being fraudulent. Can be between 0.00 and 100.00. Absent when risk level is unknown,
          # or when the user is not on a product tier that includes numeric scores.
          sig { returns(T.nilable(BigDecimal)) }
          def probability; end
          # Categorical assessment of the fraudulent merchant risk based on probability.
          sig { returns(String) }
          def risk_level; end
          def self.inner_class_types
            @inner_class_types = {additional_details: AdditionalDetails}
          end
          def self.field_remappings
            @field_remappings = {}
          end
          def self.field_encodings
            @field_encodings = {probability: :decimal_string}
          end
        end
        class FraudulentWebsite < ::Stripe::StripeObject
          # Human-readable details about the fraudulent website evaluation.
          sig { returns(T.nilable(String)) }
          def details; end
          # Categorical assessment of the fraudulent website risk.
          sig { returns(String) }
          def risk_level; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class UserAccountSharing < ::Stripe::StripeObject
          # Categorical assessment of the account-sharing risk.
          sig { returns(String) }
          def risk_level; end
          # The specific risk score for the account, between 0.00 and 100.00. Absent when risk level is
          # not_assessed or unknown, or when the user is not on a product tier that includes numeric scores.
          sig { returns(T.nilable(BigDecimal)) }
          def score; end
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
          # Categorical assessment of the multi-accounting risk.
          sig { returns(String) }
          def risk_level; end
          # The specific risk score for the account, between 0.00 and 100.00. Absent when risk level is
          # not_assessed or unknown, or when the user is not on a product tier that includes numeric scores.
          sig { returns(T.nilable(BigDecimal)) }
          def score; end
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
        # The account or customer this signal is associated with.
        sig { returns(T.nilable(AccountDetails)) }
        def account_details; end
        # The account evaluation that produced this signal, if applicable.
        sig { returns(T.nilable(String)) }
        def account_evaluation; end
        # Timestamp at which the signal was created.
        sig { returns(String) }
        def created; end
        # Data for the fraudulent merchant signal. Present only when type is fraudulent_merchant.
        sig { returns(T.nilable(FraudulentMerchant)) }
        def fraudulent_merchant; end
        # Data for the fraudulent website signal. Present only when type is fraudulent_website.
        sig { returns(T.nilable(FraudulentWebsite)) }
        def fraudulent_website; end
        # Unique identifier for the account signal.
        sig { returns(String) }
        def id; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # The type of signal.
        sig { returns(String) }
        def type; end
        # Data for the user account-sharing signal. Present only when type is user_account_sharing.
        sig { returns(T.nilable(UserAccountSharing)) }
        def user_account_sharing; end
        # Data for the user multi-accounting signal. Present only when type is user_multi_accounting.
        sig { returns(T.nilable(UserMultiAccounting)) }
        def user_multi_accounting; end
      end
    end
  end
end