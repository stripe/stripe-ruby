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
        # Attribute for field description
        sig { returns(T.nilable(String)) }
        attr_reader :description
        # Unique identifier for the object.
        sig { returns(String) }
        attr_reader :id
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        attr_reader :object
        # If this is a `other` FinancialAccount, this hash indicates what the actual type is. Upgrade your API version to see it reflected in `type`.
        sig { returns(T.nilable(Other)) }
        attr_reader :other
        # An enum value that specifies which state the FinancialAccount is in.
        sig { returns(String) }
        attr_reader :status
        # If this is a `storage` FinancialAccount, this hash includes details specific to `storage` FinancialAccounts.
        sig { returns(T.nilable(Storage)) }
        attr_reader :storage
        # Type of the FinancialAccount. An additional hash is included on the FinancialAccount with a name matching this value.
        # It contains additional information specific to the FinancialAccount type.
        sig { returns(String) }
        attr_reader :type
      end
    end
  end
end