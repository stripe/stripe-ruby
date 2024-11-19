# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module FinancialConnections
    # A Financial Connections Account represents an account that exists outside of Stripe, to which you have been granted some degree of access.
    class Account < APIResource
      class AccountHolder < Stripe::StripeObject
        sig { returns(T.any(String, Stripe::Account)) }
        attr_reader :account
        sig { returns(T.any(String, Stripe::Customer)) }
        attr_reader :customer
        sig { returns(String) }
        attr_reader :type
      end
      class Balance < Stripe::StripeObject
        class Cash < Stripe::StripeObject
          sig { returns(T.nilable(T::Hash[String, Integer])) }
          attr_reader :available
        end
        class Credit < Stripe::StripeObject
          sig { returns(T.nilable(T::Hash[String, Integer])) }
          attr_reader :used
        end
        sig { returns(Integer) }
        attr_reader :as_of
        sig { returns(Cash) }
        attr_reader :cash
        sig { returns(Credit) }
        attr_reader :credit
        sig { returns(T::Hash[String, Integer]) }
        attr_reader :current
        sig { returns(String) }
        attr_reader :type
      end
      class BalanceRefresh < Stripe::StripeObject
        sig { returns(Integer) }
        attr_reader :last_attempted_at
        sig { returns(T.nilable(Integer)) }
        attr_reader :next_refresh_available_at
        sig { returns(String) }
        attr_reader :status
      end
      class InferredBalancesRefresh < Stripe::StripeObject
        sig { returns(Integer) }
        attr_reader :last_attempted_at
        sig { returns(T.nilable(Integer)) }
        attr_reader :next_refresh_available_at
        sig { returns(String) }
        attr_reader :status
      end
      class OwnershipRefresh < Stripe::StripeObject
        sig { returns(Integer) }
        attr_reader :last_attempted_at
        sig { returns(T.nilable(Integer)) }
        attr_reader :next_refresh_available_at
        sig { returns(String) }
        attr_reader :status
      end
      class TransactionRefresh < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :id
        sig { returns(Integer) }
        attr_reader :last_attempted_at
        sig { returns(T.nilable(Integer)) }
        attr_reader :next_refresh_available_at
        sig { returns(String) }
        attr_reader :status
      end
      sig { returns(T.nilable(AccountHolder)) }
      # The account holder that this account belongs to.
      attr_reader :account_holder
      sig { returns(T.nilable(Balance)) }
      # The most recent information about the account's balance.
      attr_reader :balance
      sig { returns(T.nilable(BalanceRefresh)) }
      # The state of the most recent attempt to refresh the account balance.
      attr_reader :balance_refresh
      sig { returns(String) }
      # The type of the account. Account category is further divided in `subcategory`.
      attr_reader :category
      sig { returns(Integer) }
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      sig { returns(T.nilable(String)) }
      # A human-readable name that has been assigned to this account, either by the account holder or by the institution.
      attr_reader :display_name
      sig { returns(String) }
      # Unique identifier for the object.
      attr_reader :id
      sig { returns(T.nilable(InferredBalancesRefresh)) }
      # The state of the most recent attempt to refresh the account's inferred balance history.
      attr_reader :inferred_balances_refresh
      sig { returns(String) }
      # The name of the institution that holds this account.
      attr_reader :institution_name
      sig { returns(T.nilable(String)) }
      # The last 4 digits of the account number. If present, this will be 4 numeric characters.
      attr_reader :last4
      sig { returns(T::Boolean) }
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      sig { returns(String) }
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      sig { returns(T.nilable(T.any(String, Stripe::FinancialConnections::AccountOwnership))) }
      # The most recent information about the account's owners.
      attr_reader :ownership
      sig { returns(T.nilable(OwnershipRefresh)) }
      # The state of the most recent attempt to refresh the account owners.
      attr_reader :ownership_refresh
      sig { returns(T.nilable(T::Array[String])) }
      # The list of permissions granted by this account.
      attr_reader :permissions
      sig { returns(String) }
      # The status of the link to the account.
      attr_reader :status
      sig { returns(String) }
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
      attr_reader :subcategory
      sig { returns(T.nilable(T::Array[String])) }
      # The list of data refresh subscriptions requested on this account.
      attr_reader :subscriptions
      sig { returns(T::Array[String]) }
      # The [PaymentMethod type](https://stripe.com/docs/api/payment_methods/object#payment_method_object-type)(s) that can be created from this account.
      attr_reader :supported_payment_method_types
      sig { returns(T.nilable(TransactionRefresh)) }
      # The state of the most recent attempt to refresh the account transactions.
      attr_reader :transaction_refresh
    end
  end
end