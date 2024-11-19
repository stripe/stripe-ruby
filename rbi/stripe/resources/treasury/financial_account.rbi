# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Treasury
    # Stripe Treasury provides users with a container for money called a FinancialAccount that is separate from their Payments balance.
    # FinancialAccounts serve as the source and destination of Treasury's money movement APIs.
    class FinancialAccount < APIResource
      class Balance < Stripe::StripeObject
        sig { returns(T::Hash[String, Integer]) }
        attr_reader :cash
        sig { returns(T::Hash[String, Integer]) }
        attr_reader :inbound_pending
        sig { returns(T::Hash[String, Integer]) }
        attr_reader :outbound_pending
      end
      class FinancialAddress < Stripe::StripeObject
        class Aba < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :account_holder_name
          sig { returns(T.nilable(String)) }
          attr_reader :account_number
          sig { returns(String) }
          attr_reader :account_number_last4
          sig { returns(String) }
          attr_reader :bank_name
          sig { returns(String) }
          attr_reader :routing_number
        end
        sig { returns(Aba) }
        attr_reader :aba
        sig { returns(T::Array[String]) }
        attr_reader :supported_networks
        sig { returns(String) }
        attr_reader :type
      end
      class PlatformRestrictions < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :inbound_flows
        sig { returns(T.nilable(String)) }
        attr_reader :outbound_flows
      end
      class StatusDetails < Stripe::StripeObject
        class Closed < Stripe::StripeObject
          sig { returns(T::Array[String]) }
          attr_reader :reasons
        end
        sig { returns(T.nilable(Closed)) }
        attr_reader :closed
      end
      sig { returns(T::Array[String]) }
      # The array of paths to active Features in the Features hash.
      attr_reader :active_features
      sig { returns(Balance) }
      # Balance information for the FinancialAccount
      attr_reader :balance
      sig { returns(String) }
      # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
      attr_reader :country
      sig { returns(Integer) }
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      sig { returns(T.nilable(String)) }
      # The display name for the FinancialAccount. Use this field to customize the names of the FinancialAccounts for your connected accounts. Unlike the `nickname` field, `display_name` is not internal metadata and will be exposed to connected accounts.
      attr_reader :display_name
      sig { returns(Stripe::Treasury::FinancialAccountFeatures) }
      # Encodes whether a FinancialAccount has access to a particular Feature, with a `status` enum and associated `status_details`.
      # Stripe or the platform can control Features via the requested field.
      attr_reader :features
      sig { returns(T::Array[FinancialAddress]) }
      # The set of credentials that resolve to a FinancialAccount.
      attr_reader :financial_addresses
      sig { returns(String) }
      # Unique identifier for the object.
      attr_reader :id
      sig { returns(T::Boolean) }
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      sig { returns(T.nilable(T::Hash[String, String])) }
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata
      sig { returns(String) }
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      sig { returns(T::Array[String]) }
      # The array of paths to pending Features in the Features hash.
      attr_reader :pending_features
      sig { returns(T.nilable(PlatformRestrictions)) }
      # The set of functionalities that the platform can restrict on the FinancialAccount.
      attr_reader :platform_restrictions
      sig { returns(T::Array[String]) }
      # The array of paths to restricted Features in the Features hash.
      attr_reader :restricted_features
      sig { returns(String) }
      # Status of this FinancialAccount.
      attr_reader :status
      sig { returns(StatusDetails) }
      # Attribute for field status_details
      attr_reader :status_details
      sig { returns(T::Array[String]) }
      # The currencies the FinancialAccount can hold a balance in. Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase.
      attr_reader :supported_currencies
    end
  end
end