# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Treasury
    # Stripe Treasury provides users with a container for money called a FinancialAccount that is separate from their Payments balance.
    # FinancialAccounts serve as the source and destination of Treasury's money movement APIs.
    class FinancialAccount < APIResource
      class Balance < Stripe::StripeObject
        # Funds the user can spend right now.
        sig { returns(T::Hash[String, Integer]) }
        attr_reader :cash
        # Funds not spendable yet, but will become available at a later time.
        sig { returns(T::Hash[String, Integer]) }
        attr_reader :inbound_pending
        # Funds in the account, but not spendable because they are being held for pending outbound flows.
        sig { returns(T::Hash[String, Integer]) }
        attr_reader :outbound_pending
      end
      class FinancialAddress < Stripe::StripeObject
        class Aba < Stripe::StripeObject
          # The name of the person or business that owns the bank account.
          sig { returns(String) }
          attr_reader :account_holder_name
          # The account number.
          sig { returns(T.nilable(String)) }
          attr_reader :account_number
          # The last four characters of the account number.
          sig { returns(String) }
          attr_reader :account_number_last4
          # Name of the bank.
          sig { returns(String) }
          attr_reader :bank_name
          # Routing number for the account.
          sig { returns(String) }
          attr_reader :routing_number
        end
        # ABA Records contain U.S. bank account details per the ABA format.
        sig { returns(Aba) }
        attr_reader :aba
        # The list of networks that the address supports
        sig { returns(T::Array[String]) }
        attr_reader :supported_networks
        # The type of financial address
        sig { returns(String) }
        attr_reader :type
      end
      class PlatformRestrictions < Stripe::StripeObject
        # Restricts all inbound money movement.
        sig { returns(T.nilable(String)) }
        attr_reader :inbound_flows
        # Restricts all outbound money movement.
        sig { returns(T.nilable(String)) }
        attr_reader :outbound_flows
      end
      class StatusDetails < Stripe::StripeObject
        class Closed < Stripe::StripeObject
          # The array that contains reasons for a FinancialAccount closure.
          sig { returns(T::Array[String]) }
          attr_reader :reasons
        end
        # Details related to the closure of this FinancialAccount
        sig { returns(T.nilable(Closed)) }
        attr_reader :closed
      end
      # The array of paths to active Features in the Features hash.
      sig { returns(T::Array[String]) }
      attr_reader :active_features

      # Balance information for the FinancialAccount
      sig { returns(Balance) }
      attr_reader :balance

      # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
      sig { returns(String) }
      attr_reader :country

      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_reader :created

      # The display name for the FinancialAccount. Use this field to customize the names of the FinancialAccounts for your connected accounts. Unlike the `nickname` field, `display_name` is not internal metadata and will be exposed to connected accounts.
      sig { returns(T.nilable(String)) }
      attr_reader :display_name

      # Encodes whether a FinancialAccount has access to a particular Feature, with a `status` enum and associated `status_details`.
      # Stripe or the platform can control Features via the requested field.
      sig { returns(Stripe::Treasury::FinancialAccountFeatures) }
      attr_reader :features

      # The set of credentials that resolve to a FinancialAccount.
      sig { returns(T::Array[FinancialAddress]) }
      attr_reader :financial_addresses

      # Unique identifier for the object.
      sig { returns(String) }
      attr_reader :id

      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode

      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_reader :metadata

      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object

      # The array of paths to pending Features in the Features hash.
      sig { returns(T::Array[String]) }
      attr_reader :pending_features

      # The set of functionalities that the platform can restrict on the FinancialAccount.
      sig { returns(T.nilable(PlatformRestrictions)) }
      attr_reader :platform_restrictions

      # The array of paths to restricted Features in the Features hash.
      sig { returns(T::Array[String]) }
      attr_reader :restricted_features

      # Status of this FinancialAccount.
      sig { returns(String) }
      attr_reader :status

      # Attribute for field status_details
      sig { returns(StatusDetails) }
      attr_reader :status_details

      # The currencies the FinancialAccount can hold a balance in. Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase.
      sig { returns(T::Array[String]) }
      attr_reader :supported_currencies
    end
  end
end