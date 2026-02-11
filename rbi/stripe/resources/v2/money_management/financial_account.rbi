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
          class Available < ::Stripe::StripeObject
            # A non-negative integer representing how much to charge in the [smallest currency unit](https://docs.stripe.com/currencies#minor-units).
            sig { returns(Integer) }
            def value; end
            # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            sig { returns(String) }
            def currency; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class InboundPending < ::Stripe::StripeObject
            # A non-negative integer representing how much to charge in the [smallest currency unit](https://docs.stripe.com/currencies#minor-units).
            sig { returns(Integer) }
            def value; end
            # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            sig { returns(String) }
            def currency; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class OutboundPending < ::Stripe::StripeObject
            # A non-negative integer representing how much to charge in the [smallest currency unit](https://docs.stripe.com/currencies#minor-units).
            sig { returns(Integer) }
            def value; end
            # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            sig { returns(String) }
            def currency; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Balance that can be used for money movement.
          sig { returns(T::Hash[String, Available]) }
          def available; end
          # Balance of inbound funds that will later transition to the `available` balance.
          sig { returns(T::Hash[String, InboundPending]) }
          def inbound_pending; end
          # Balance of funds that are being used for a pending outbound money movement.
          sig { returns(T::Hash[String, OutboundPending]) }
          def outbound_pending; end
          def self.inner_class_types
            @inner_class_types = {
              available: Available,
              inbound_pending: InboundPending,
              outbound_pending: OutboundPending,
            }
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
          class StartingBalance < ::Stripe::StripeObject
            class Available < ::Stripe::StripeObject
              # A non-negative integer representing how much to charge in the [smallest currency unit](https://docs.stripe.com/currencies#minor-units).
              sig { returns(Integer) }
              def value; end
              # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
              sig { returns(String) }
              def currency; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # When the balance was projected.
            sig { returns(String) }
            def at; end
            # The available balance at the time when the balance was projected.
            sig { returns(T::Hash[String, Available]) }
            def available; end
            def self.inner_class_types
              @inner_class_types = {available: Available}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
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
            @inner_class_types = {starting_balance: StartingBalance}
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
            # Attribute for field forwarding_settings
            sig { returns(T.nilable(ForwardingSettings)) }
            def forwarding_settings; end
            # Attribute for field reason
            sig { returns(String) }
            def reason; end
            def self.inner_class_types
              @inner_class_types = {forwarding_settings: ForwardingSettings}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Attribute for field closed
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
        # Attribute for field status_details
        sig { returns(T.nilable(StatusDetails)) }
        def status_details; end
        # If this is a `storage` FinancialAccount, this hash includes details specific to `storage` FinancialAccounts.
        sig { returns(T.nilable(Storage)) }
        def storage; end
        # Type of the FinancialAccount. An additional hash is included on the FinancialAccount with a name matching this value.
        # It contains additional information specific to the FinancialAccount type.
        sig { returns(String) }
        def type; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
      end
    end
  end
end