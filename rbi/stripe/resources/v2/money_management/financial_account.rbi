# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      # A FinancialAccount represents a balance and can be used as the source or destination for the money management (`/v2/money_management`) APIs.
      class FinancialAccount < APIResource
        class AccruedFees < ::Stripe::StripeObject
          # The currencies enabled for fee accrual on this FinancialAccount.
          sig { returns(T::Array[String]) }
          def currencies; end
          # Direction of fee accrual for this FinancialAccount.
          sig { returns(String) }
          def direction; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class Balance < ::Stripe::StripeObject
          # Balance that can be used for money movement.
          sig { returns(T::Hash[String, ::Stripe::V2::Amount]) }
          def available; end
          # Balance of inbound funds that will later transition to the `available` balance.
          sig { returns(T::Hash[String, ::Stripe::V2::Amount]) }
          def inbound_pending; end
          # Balance of funds that are being used for a pending outbound money movement.
          sig { returns(T::Hash[String, ::Stripe::V2::Amount]) }
          def outbound_pending; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class ManagedBy < ::Stripe::StripeObject
          # Enum describing the Stripe product that is managing this FinancialAccount.
          sig { returns(String) }
          def type; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class Other < ::Stripe::StripeObject
          # The type of the FinancialAccount, represented as a string. Upgrade your API version to see the type reflected in `financial_account.type`.
          sig { returns(String) }
          def type; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class Payments < ::Stripe::StripeObject
          class BalanceByFundsType < ::Stripe::StripeObject
            class PaymentProcessing < ::Stripe::StripeObject
              # Balance that can be used for money movement.
              sig { returns(T::Hash[String, ::Stripe::V2::Amount]) }
              def available; end
              # Balance of inbound funds that will later transition to the `available` balance.
              sig { returns(T::Hash[String, ::Stripe::V2::Amount]) }
              def inbound_pending; end
              # Balance of funds that are being used for a pending outbound money movement.
              sig { returns(T::Hash[String, ::Stripe::V2::Amount]) }
              def outbound_pending; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            class StoredValue < ::Stripe::StripeObject
              # Balance that can be used for money movement.
              sig { returns(T::Hash[String, ::Stripe::V2::Amount]) }
              def available; end
              # Balance of inbound funds that will later transition to the `available` balance.
              sig { returns(T::Hash[String, ::Stripe::V2::Amount]) }
              def inbound_pending; end
              # Balance of funds that are being used for a pending outbound money movement.
              sig { returns(T::Hash[String, ::Stripe::V2::Amount]) }
              def outbound_pending; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Payment processing funds are those that are received for goods or services and may only be used for payouts to self. These funds may be converted to stored value funds.
            sig { returns(PaymentProcessing) }
            def payment_processing; end
            # Stored value funds may be used for either payouts to self or payments to others.
            sig { returns(StoredValue) }
            def stored_value; end
            def self.inner_class_types
              @inner_class_types = {
                payment_processing: PaymentProcessing,
                stored_value: StoredValue,
              }
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class StartingBalance < ::Stripe::StripeObject
            # When the balance was projected.
            sig { returns(String) }
            def at; end
            # The available balance at the time when the balance was projected.
            sig { returns(T::Hash[String, ::Stripe::V2::Amount]) }
            def available; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The balance of the `payments` FinancialAccount is a mix of payment processing and stored value funds, and this field
          # describes the breakdown between the two. The sum will match the balance of the FinancialAccount.
          sig { returns(T.nilable(BalanceByFundsType)) }
          def balance_by_funds_type; end
          # The currency that non-settlement currency payments will be converted to.
          sig { returns(String) }
          def default_currency; end
          # Settlement currencies enabled for this FinancialAccount. Payments in other currencies will be automatically converted to `default_currency`.
          sig { returns(T::Array[String]) }
          def settlement_currencies; end
          # Describes the available balance when it was projected.
          sig { returns(T.nilable(StartingBalance)) }
          def starting_balance; end
          def self.inner_class_types
            @inner_class_types = {
              balance_by_funds_type: BalanceByFundsType,
              starting_balance: StartingBalance,
            }
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class StatusDetails < ::Stripe::StripeObject
          class Closed < ::Stripe::StripeObject
            class ForwardingSettings < ::Stripe::StripeObject
              # The address to send forwarded payments to.
              sig { returns(T.nilable(String)) }
              def payment_method; end
              # The address to send forwarded payouts to.
              sig { returns(T.nilable(String)) }
              def payout_method; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The forwarding settings for the closed FinancialAccount.
            sig { returns(T.nilable(ForwardingSettings)) }
            def forwarding_settings; end
            # The reason the FinancialAccount was closed.
            sig { returns(String) }
            def reason; end
            def self.inner_class_types
              @inner_class_types = {forwarding_settings: ForwardingSettings}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Details related to the closed state of the FinancialAccount.
          sig { returns(T.nilable(Closed)) }
          def closed; end
          def self.inner_class_types
            @inner_class_types = {closed: Closed}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class Storage < ::Stripe::StripeObject
          # The usage type for funds in this FinancialAccount. Can be used to specify that the funds are for Consumer activity.
          sig { returns(T.nilable(String)) }
          def funds_usage_type; end
          # The currencies that this FinancialAccount can hold.
          sig { returns(T::Array[String]) }
          def holds_currencies; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # If this is a `accrued_fees` FinancialAccount, this hash include details specific to `accrued_fees` FinancialAccount.
        sig { returns(T.nilable(AccruedFees)) }
        def accrued_fees; end
        # Multi-currency balance of this FinancialAccount, split by availability state. Each balance is represented as a hash where the key is the three-letter ISO currency code, in lowercase, and the value is the amount for that currency.
        sig { returns(Balance) }
        def balance; end
        # Open Enum. Two-letter country code that represents the country where the LegalEntity associated with the FinancialAccount is based in.
        sig { returns(String) }
        def country; end
        # Time at which the object was created.
        sig { returns(String) }
        def created; end
        # A descriptive name for the FinancialAccount, up to 50 characters long. This name will be used in the Stripe Dashboard and embedded components.
        sig { returns(T.nilable(String)) }
        def display_name; end
        # Unique identifier for the object.
        sig { returns(String) }
        def id; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # If this is a managed FinancialAccount, `managed_by` indicates the product that created and manages this FinancialAccount. For managed FinancialAccounts,
        # creation of money management resources can only be orchestrated by the managing product.
        sig { returns(T.nilable(ManagedBy)) }
        def managed_by; end
        # Metadata associated with the FinancialAccount.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # If this is a `other` FinancialAccount, this hash indicates what the actual type is. Upgrade your API version to see it reflected in `type`.
        sig { returns(T.nilable(Other)) }
        def other; end
        # If this is a `payments` FinancialAccount, this hash include details specific to `payments` FinancialAccount.
        sig { returns(T.nilable(Payments)) }
        def payments; end
        # Closed Enum. An enum representing the status of the FinancialAccount. This indicates whether or not the FinancialAccount can be used for any money movement flows.
        sig { returns(String) }
        def status; end
        # Additional details related to the status of the FinancialAccount.
        sig { returns(T.nilable(StatusDetails)) }
        def status_details; end
        # If this is a `storage` FinancialAccount, this hash includes details specific to `storage` FinancialAccounts.
        sig { returns(T.nilable(Storage)) }
        def storage; end
        # Type of the FinancialAccount. An additional hash is included on the FinancialAccount with a name matching this value.
        # It contains additional information specific to the FinancialAccount type.
        sig { returns(String) }
        def type; end
      end
    end
  end
end