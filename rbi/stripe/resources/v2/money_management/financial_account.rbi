# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      # A FinancialAccount represents a balance and can be the source or destination of money movement.
      class FinancialAccount < APIResource
        class Balance < ::Stripe::StripeObject
          # Balance available for money movement.
          sig { returns(T::Hash[String, ::Stripe::V2::Amount]) }
          def available; end
          # Balance of inbound funds that aren't yet available for money movement and will later move to the `available` balance.
          sig { returns(T::Hash[String, ::Stripe::V2::Amount]) }
          def inbound_pending; end
          # Balance of funds being used for pending outbound money movements.
          sig { returns(T::Hash[String, ::Stripe::V2::Amount]) }
          def outbound_pending; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class Other < ::Stripe::StripeObject
          # The FinancialAccount's actual type, represented as a string.
          # Upgrade your API version to see this value in `financial_account.type`.
          sig { returns(String) }
          def type; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class Storage < ::Stripe::StripeObject
          class DepositInsuranceEligibility < ::Stripe::StripeObject
            # The bank where funds are stored.
            sig { returns(String) }
            def bank_name; end
            # Currencies eligible for deposit insurance at this bank under this scheme.
            sig { returns(T::Array[String]) }
            def currencies; end
            # The deposit insurance scheme.
            sig { returns(String) }
            def type; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Array of eligibility objects, segmented by bank name and deposit insurance scheme.
          sig { returns(T.nilable(T::Array[DepositInsuranceEligibility])) }
          def deposit_insurance_eligibility; end
          # The currencies that this FinancialAccount can hold.
          sig { returns(T::Array[String]) }
          def holds_currencies; end
          def self.inner_class_types
            @inner_class_types = {deposit_insurance_eligibility: DepositInsuranceEligibility}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The FinancialAccount's balance, split into `available`, `inbound_pending`, and `outbound_pending` balances.
        # Each balance is a hash keyed by lowercase currency codes, with an amount for each currency.
        sig { returns(Balance) }
        def balance; end
        # Open Enum. The country where the LegalEntity associated with the FinancialAccount is based, represented as a two-letter country code.
        sig { returns(String) }
        def country; end
        # Time at which the object was created. Represented as an RFC 3339 timestamp in UTC with millisecond precision, for example `2022-09-18T13:22:18.123Z`.
        sig { returns(String) }
        def created; end
        # A descriptive name for the FinancialAccount, up to 50 characters long. This name appears in the Stripe Dashboard and embedded components.
        sig { returns(T.nilable(String)) }
        def display_name; end
        # Unique identifier for the object.
        sig { returns(String) }
        def id; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information
        # about the object in a structured format.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # If the FinancialAccount's `type` is `other`, this hash identifies its actual type.
        # Upgrade your API version to see that type in `type`.
        sig { returns(T.nilable(Other)) }
        def other; end
        # Closed Enum. An enum representing the status of the FinancialAccount. This indicates whether or not the FinancialAccount can be used for any money movement flows.
        sig { returns(String) }
        def status; end
        # If the FinancialAccount's `type` is `storage`, this hash contains details specific to that type.
        sig { returns(T.nilable(Storage)) }
        def storage; end
        # Closed Enum. The type of the FinancialAccount. Details specific to the type appear in the matching hash.
        # For example, a `storage` FinancialAccount includes a `storage` hash.
        sig { returns(String) }
        def type; end
      end
    end
  end
end