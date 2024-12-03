# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module FinancialConnections
    # A Financial Connections Account represents an account that exists outside of Stripe, to which you have been granted some degree of access.
    class Account < APIResource
      class AccountHolder < Stripe::StripeObject
        # The ID of the Stripe account this account belongs to. Should only be present if `account_holder.type` is `account`.
        sig { returns(T.any(String, Stripe::Account)) }
        attr_reader :account
        # ID of the Stripe customer this account belongs to. Present if and only if `account_holder.type` is `customer`.
        sig { returns(T.any(String, Stripe::Customer)) }
        attr_reader :customer
        # Type of account holder that this account belongs to.
        sig { returns(String) }
        attr_reader :type
      end
      class Balance < Stripe::StripeObject
        class Cash < Stripe::StripeObject
          # The funds available to the account holder. Typically this is the current balance after subtracting any outbound pending transactions and adding any inbound pending transactions.
          #
          # Each key is a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase.
          #
          # Each value is a integer amount. A positive amount indicates money owed to the account holder. A negative amount indicates money owed by the account holder.
          sig { returns(T.nilable(T::Hash[String, Integer])) }
          attr_reader :available
        end
        class Credit < Stripe::StripeObject
          # The credit that has been used by the account holder.
          #
          # Each key is a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase.
          #
          # Each value is a integer amount. A positive amount indicates money owed to the account holder. A negative amount indicates money owed by the account holder.
          sig { returns(T.nilable(T::Hash[String, Integer])) }
          attr_reader :used
        end
        # The time that the external institution calculated this balance. Measured in seconds since the Unix epoch.
        sig { returns(Integer) }
        attr_reader :as_of
        # Attribute for field cash
        sig { returns(Cash) }
        attr_reader :cash
        # Attribute for field credit
        sig { returns(Credit) }
        attr_reader :credit
        # The balances owed to (or by) the account holder, before subtracting any outbound pending transactions or adding any inbound pending transactions.
        #
        # Each key is a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase.
        #
        # Each value is a integer amount. A positive amount indicates money owed to the account holder. A negative amount indicates money owed by the account holder.
        sig { returns(T::Hash[String, Integer]) }
        attr_reader :current
        # The `type` of the balance. An additional hash is included on the balance with a name matching this value.
        sig { returns(String) }
        attr_reader :type
      end
      class BalanceRefresh < Stripe::StripeObject
        # The time at which the last refresh attempt was initiated. Measured in seconds since the Unix epoch.
        sig { returns(Integer) }
        attr_reader :last_attempted_at
        # Time at which the next balance refresh can be initiated. This value will be `null` when `status` is `pending`. Measured in seconds since the Unix epoch.
        sig { returns(T.nilable(Integer)) }
        attr_reader :next_refresh_available_at
        # The status of the last refresh attempt.
        sig { returns(String) }
        attr_reader :status
      end
      class InferredBalancesRefresh < Stripe::StripeObject
        # The time at which the last refresh attempt was initiated. Measured in seconds since the Unix epoch.
        sig { returns(Integer) }
        attr_reader :last_attempted_at
        # Time at which the next inferred balance refresh can be initiated. This value will be `null` when `status` is `pending`. Measured in seconds since the Unix epoch.
        sig { returns(T.nilable(Integer)) }
        attr_reader :next_refresh_available_at
        # The status of the last refresh attempt.
        sig { returns(String) }
        attr_reader :status
      end
      class OwnershipRefresh < Stripe::StripeObject
        # The time at which the last refresh attempt was initiated. Measured in seconds since the Unix epoch.
        sig { returns(Integer) }
        attr_reader :last_attempted_at
        # Time at which the next ownership refresh can be initiated. This value will be `null` when `status` is `pending`. Measured in seconds since the Unix epoch.
        sig { returns(T.nilable(Integer)) }
        attr_reader :next_refresh_available_at
        # The status of the last refresh attempt.
        sig { returns(String) }
        attr_reader :status
      end
      class TransactionRefresh < Stripe::StripeObject
        # Unique identifier for the object.
        sig { returns(String) }
        attr_reader :id
        # The time at which the last refresh attempt was initiated. Measured in seconds since the Unix epoch.
        sig { returns(Integer) }
        attr_reader :last_attempted_at
        # Time at which the next transaction refresh can be initiated. This value will be `null` when `status` is `pending`. Measured in seconds since the Unix epoch.
        sig { returns(T.nilable(Integer)) }
        attr_reader :next_refresh_available_at
        # The status of the last refresh attempt.
        sig { returns(String) }
        attr_reader :status
      end
      # The account holder that this account belongs to.
      sig { returns(T.nilable(AccountHolder)) }
      attr_reader :account_holder

      # The most recent information about the account's balance.
      sig { returns(T.nilable(Balance)) }
      attr_reader :balance

      # The state of the most recent attempt to refresh the account balance.
      sig { returns(T.nilable(BalanceRefresh)) }
      attr_reader :balance_refresh

      # The type of the account. Account category is further divided in `subcategory`.
      sig { returns(String) }
      attr_reader :category

      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_reader :created

      # A human-readable name that has been assigned to this account, either by the account holder or by the institution.
      sig { returns(T.nilable(String)) }
      attr_reader :display_name

      # Unique identifier for the object.
      sig { returns(String) }
      attr_reader :id

      # The state of the most recent attempt to refresh the account's inferred balance history.
      sig { returns(T.nilable(InferredBalancesRefresh)) }
      attr_reader :inferred_balances_refresh

      # The name of the institution that holds this account.
      sig { returns(String) }
      attr_reader :institution_name

      # The last 4 digits of the account number. If present, this will be 4 numeric characters.
      sig { returns(T.nilable(String)) }
      attr_reader :last4

      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode

      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object

      # The most recent information about the account's owners.
      sig { returns(T.nilable(T.any(String, Stripe::FinancialConnections::AccountOwnership))) }
      attr_reader :ownership

      # The state of the most recent attempt to refresh the account owners.
      sig { returns(T.nilable(OwnershipRefresh)) }
      attr_reader :ownership_refresh

      # The list of permissions granted by this account.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :permissions

      # The status of the link to the account.
      sig { returns(String) }
      attr_reader :status

      # If `category` is `cash`, one of:
      #
      #  - `checking`
      #  - `savings`
      #  - `other`
      #
      # If `category` is `credit`, one of:
      #
      #  - `mortgage`
      #  - `line_of_credit`
      #  - `credit_card`
      #  - `other`
      #
      # If `category` is `investment` or `other`, this will be `other`.
      sig { returns(String) }
      attr_reader :subcategory

      # The list of data refresh subscriptions requested on this account.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :subscriptions

      # The [PaymentMethod type](https://stripe.com/docs/api/payment_methods/object#payment_method_object-type)(s) that can be created from this account.
      sig { returns(T::Array[String]) }
      attr_reader :supported_payment_method_types

      # The state of the most recent attempt to refresh the account transactions.
      sig { returns(T.nilable(TransactionRefresh)) }
      attr_reader :transaction_refresh
    end
  end
end