# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      # The Financial Account is the container that allows for the configuration of money movement.
      class FinancialAccount < APIResource
        class Balance < Stripe::StripeObject
          # Balance that can be used for money movement.
          sig { returns(T::Hash[String, Stripe::V2::Amount]) }
          attr_reader :available
          # Balance of inbound funds that will later transition to the `cash` balance.
          sig { returns(T::Hash[String, Stripe::V2::Amount]) }
          attr_reader :inbound_pending
          # Balance of funds that are being used for a pending outbound money movement.
          sig { returns(T::Hash[String, Stripe::V2::Amount]) }
          attr_reader :outbound_pending
        end
        class Other < Stripe::StripeObject
          # The type of the FinancialAccount, represented as a string. Upgrade your API version to see the type reflected in `financial_account.type`.
          sig { returns(String) }
          attr_reader :type
        end
        class StatusDetails < Stripe::StripeObject
          class Closed < Stripe::StripeObject
            # Attribute for field reason
            sig { returns(String) }
            attr_reader :reason
          end
          # Attribute for field closed
          sig { returns(T.nilable(Closed)) }
          attr_reader :closed
        end
        class Storage < Stripe::StripeObject
          # The currencies that this FinancialAccount can hold.
          sig { returns(T::Array[String]) }
          attr_reader :holds_currencies
        end
        # Multi-currency balance of this FinancialAccount, split by availability state. Each balance is represented as a hash where the key is the three-letter ISO currency code, in lowercase, and the value is the amount for that currency.
        sig { returns(Balance) }
        attr_reader :balance
        # Open Enum. Two-letter country code that represents the country where the LegalEntity associated with the FinancialAccount is based in.
        sig { returns(String) }
        attr_reader :country
        # Time at which the object was created.
        sig { returns(String) }
        attr_reader :created
        # Unique identifier for the object.
        sig { returns(String) }
        attr_reader :id
        # Metadata associated with the FinancialAccount
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_reader :metadata
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        attr_reader :object
        # If this is a `other` FinancialAccount, this hash indicates what the actual type is. Upgrade your API version to see it reflected in `type`.
        sig { returns(T.nilable(Other)) }
        attr_reader :other
        # Closed Enum. An enum representing the status of the FinancialAccount. This indicates whether or not the FinancialAccount can be used for any money movement flows.
        sig { returns(String) }
        attr_reader :status
        # Attribute for field status_details
        sig { returns(T.nilable(StatusDetails)) }
        attr_reader :status_details
        # If this is a `storage` FinancialAccount, this hash includes details specific to `storage` FinancialAccounts.
        sig { returns(T.nilable(Storage)) }
        attr_reader :storage
        # Type of the FinancialAccount. An additional hash is included on the FinancialAccount with a name matching this value.
        # It contains additional information specific to the FinancialAccount type.
        sig { returns(String) }
        attr_reader :type
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        attr_reader :livemode
      end
    end
  end
end