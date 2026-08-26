# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Signals
      # An automatically evaluated signal on an account. Each Account Signal object corresponds to
      # exactly one signal type, indicated by type. Only the type-specific field is populated; other
      # type-specific payload fields are null. If an account has multiple signals, Stripe creates
      # separate account signal objects.
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

        class UserAccountSharing < ::Stripe::StripeObject
          # Categorical assessment of the account-sharing risk.
          attr_reader :risk_level
          # The specific risk score for the account, between 0.00 and 100.00. Absent when risk level is
          # not_assessed or unknown, or when the user is not on a product tier that includes numeric scores.
          attr_reader :score

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
          # Categorical assessment of the multi-accounting risk.
          attr_reader :risk_level
          # The specific risk score for the account, between 0.00 and 100.00. Absent when risk level is
          # not_assessed or unknown, or when the user is not on a product tier that includes numeric scores.
          attr_reader :score

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
        # The account or customer this signal is associated with.
        attr_reader :account_details
        # The account evaluation that produced this signal, if applicable.
        attr_reader :account_evaluation
        # Timestamp at which the signal was created.
        attr_reader :created
        # Unique identifier for the account signal.
        attr_reader :id
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # The type of signal.
        attr_reader :type
        # Data for the user account-sharing signal. Present only when type is user_account_sharing.
        attr_reader :user_account_sharing
        # Data for the user multi-accounting signal. Present only when type is user_multi_accounting.
        attr_reader :user_multi_accounting

        def self.inner_class_types
          @inner_class_types = {
            account_details: AccountDetails,
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
    end
  end
end
