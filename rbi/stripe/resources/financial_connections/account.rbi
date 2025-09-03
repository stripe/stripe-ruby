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
        def account; end
        # ID of the Stripe customer this account belongs to. Present if and only if `account_holder.type` is `customer`.
        sig { returns(T.any(String, Stripe::Customer)) }
        def customer; end
        # Type of account holder that this account belongs to.
        sig { returns(String) }
        def type; end
      end
      class Balance < Stripe::StripeObject
        class Cash < Stripe::StripeObject
          # The funds available to the account holder. Typically this is the current balance after subtracting any outbound pending transactions and adding any inbound pending transactions.
          #
          # Each key is a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase.
          #
          # Each value is a integer amount. A positive amount indicates money owed to the account holder. A negative amount indicates money owed by the account holder.
          sig { returns(T.nilable(T::Hash[String, Integer])) }
          def available; end
        end
        class Credit < Stripe::StripeObject
          # The credit that has been used by the account holder.
          #
          # Each key is a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase.
          #
          # Each value is a integer amount. A positive amount indicates money owed to the account holder. A negative amount indicates money owed by the account holder.
          sig { returns(T.nilable(T::Hash[String, Integer])) }
          def used; end
        end
        # The time that the external institution calculated this balance. Measured in seconds since the Unix epoch.
        sig { returns(Integer) }
        def as_of; end
        # Attribute for field cash
        sig { returns(Cash) }
        def cash; end
        # Attribute for field credit
        sig { returns(Credit) }
        def credit; end
        # The balances owed to (or by) the account holder, before subtracting any outbound pending transactions or adding any inbound pending transactions.
        #
        # Each key is a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase.
        #
        # Each value is a integer amount. A positive amount indicates money owed to the account holder. A negative amount indicates money owed by the account holder.
        sig { returns(T::Hash[String, Integer]) }
        def current; end
        # The `type` of the balance. An additional hash is included on the balance with a name matching this value.
        sig { returns(String) }
        def type; end
      end
      class BalanceRefresh < Stripe::StripeObject
        # The time at which the last refresh attempt was initiated. Measured in seconds since the Unix epoch.
        sig { returns(Integer) }
        def last_attempted_at; end
        # Time at which the next balance refresh can be initiated. This value will be `null` when `status` is `pending`. Measured in seconds since the Unix epoch.
        sig { returns(T.nilable(Integer)) }
        def next_refresh_available_at; end
        # The status of the last refresh attempt.
        sig { returns(String) }
        def status; end
      end
      class OwnershipRefresh < Stripe::StripeObject
        # The time at which the last refresh attempt was initiated. Measured in seconds since the Unix epoch.
        sig { returns(Integer) }
        def last_attempted_at; end
        # Time at which the next ownership refresh can be initiated. This value will be `null` when `status` is `pending`. Measured in seconds since the Unix epoch.
        sig { returns(T.nilable(Integer)) }
        def next_refresh_available_at; end
        # The status of the last refresh attempt.
        sig { returns(String) }
        def status; end
      end
      class TransactionRefresh < Stripe::StripeObject
        # Unique identifier for the object.
        sig { returns(String) }
        def id; end
        # The time at which the last refresh attempt was initiated. Measured in seconds since the Unix epoch.
        sig { returns(Integer) }
        def last_attempted_at; end
        # Time at which the next transaction refresh can be initiated. This value will be `null` when `status` is `pending`. Measured in seconds since the Unix epoch.
        sig { returns(T.nilable(Integer)) }
        def next_refresh_available_at; end
        # The status of the last refresh attempt.
        sig { returns(String) }
        def status; end
      end
      # The account holder that this account belongs to.
      sig { returns(T.nilable(AccountHolder)) }
      def account_holder; end
      # The most recent information about the account's balance.
      sig { returns(T.nilable(Balance)) }
      def balance; end
      # The state of the most recent attempt to refresh the account balance.
      sig { returns(T.nilable(BalanceRefresh)) }
      def balance_refresh; end
      # The type of the account. Account category is further divided in `subcategory`.
      sig { returns(String) }
      def category; end
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      def created; end
      # A human-readable name that has been assigned to this account, either by the account holder or by the institution.
      sig { returns(T.nilable(String)) }
      def display_name; end
      # Unique identifier for the object.
      sig { returns(String) }
      def id; end
      # The name of the institution that holds this account.
      sig { returns(String) }
      def institution_name; end
      # The last 4 digits of the account number. If present, this will be 4 numeric characters.
      sig { returns(T.nilable(String)) }
      def last4; end
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      def livemode; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
      # The most recent information about the account's owners.
      sig { returns(T.nilable(T.any(String, Stripe::FinancialConnections::AccountOwnership))) }
      def ownership; end
      # The state of the most recent attempt to refresh the account owners.
      sig { returns(T.nilable(OwnershipRefresh)) }
      def ownership_refresh; end
      # The list of permissions granted by this account.
      sig { returns(T.nilable(T::Array[String])) }
      def permissions; end
      # The status of the link to the account.
      sig { returns(String) }
      def status; end
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
      def subcategory; end
      # The list of data refresh subscriptions requested on this account.
      sig { returns(T.nilable(T::Array[String])) }
      def subscriptions; end
      # The [PaymentMethod type](https://stripe.com/docs/api/payment_methods/object#payment_method_object-type)(s) that can be created from this account.
      sig { returns(T::Array[String]) }
      def supported_payment_method_types; end
      # The state of the most recent attempt to refresh the account transactions.
      sig { returns(T.nilable(TransactionRefresh)) }
      def transaction_refresh; end
      class ListParams < Stripe::RequestParams
        class AccountHolder < Stripe::RequestParams
          # The ID of the Stripe account whose accounts will be retrieved.
          sig { returns(T.nilable(String)) }
          def account; end
          sig { params(_account: T.nilable(String)).returns(T.nilable(String)) }
          def account=(_account); end
          # The ID of the Stripe customer whose accounts will be retrieved.
          sig { returns(T.nilable(String)) }
          def customer; end
          sig { params(_customer: T.nilable(String)).returns(T.nilable(String)) }
          def customer=(_customer); end
          sig { params(account: T.nilable(String), customer: T.nilable(String)).void }
          def initialize(account: nil, customer: nil); end
        end
        # If present, only return accounts that belong to the specified account holder. `account_holder[customer]` and `account_holder[account]` are mutually exclusive.
        sig {
          returns(T.nilable(::Stripe::FinancialConnections::Account::ListParams::AccountHolder))
         }
        def account_holder; end
        sig {
          params(_account_holder: T.nilable(::Stripe::FinancialConnections::Account::ListParams::AccountHolder)).returns(T.nilable(::Stripe::FinancialConnections::Account::ListParams::AccountHolder))
         }
        def account_holder=(_account_holder); end
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        sig { returns(T.nilable(String)) }
        def ending_before; end
        sig { params(_ending_before: T.nilable(String)).returns(T.nilable(String)) }
        def ending_before=(_ending_before); end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        sig { returns(T.nilable(Integer)) }
        def limit; end
        sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def limit=(_limit); end
        # If present, only return accounts that were collected as part of the given session.
        sig { returns(T.nilable(String)) }
        def session; end
        sig { params(_session: T.nilable(String)).returns(T.nilable(String)) }
        def session=(_session); end
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        sig { returns(T.nilable(String)) }
        def starting_after; end
        sig { params(_starting_after: T.nilable(String)).returns(T.nilable(String)) }
        def starting_after=(_starting_after); end
        sig {
          params(account_holder: T.nilable(::Stripe::FinancialConnections::Account::ListParams::AccountHolder), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), session: T.nilable(String), starting_after: T.nilable(String)).void
         }
        def initialize(
          account_holder: nil,
          ending_before: nil,
          expand: nil,
          limit: nil,
          session: nil,
          starting_after: nil
        ); end
      end
      class ListOwnersParams < Stripe::RequestParams
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        sig { returns(T.nilable(String)) }
        def ending_before; end
        sig { params(_ending_before: T.nilable(String)).returns(T.nilable(String)) }
        def ending_before=(_ending_before); end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        sig { returns(T.nilable(Integer)) }
        def limit; end
        sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def limit=(_limit); end
        # The ID of the ownership object to fetch owners from.
        sig { returns(String) }
        def ownership; end
        sig { params(_ownership: String).returns(String) }
        def ownership=(_ownership); end
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        sig { returns(T.nilable(String)) }
        def starting_after; end
        sig { params(_starting_after: T.nilable(String)).returns(T.nilable(String)) }
        def starting_after=(_starting_after); end
        sig {
          params(ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), ownership: String, starting_after: T.nilable(String)).void
         }
        def initialize(
          ending_before: nil,
          expand: nil,
          limit: nil,
          ownership: nil,
          starting_after: nil
        ); end
      end
      class DisconnectParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      class RefreshAccountParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # The list of account features that you would like to refresh.
        sig { returns(T::Array[String]) }
        def features; end
        sig { params(_features: T::Array[String]).returns(T::Array[String]) }
        def features=(_features); end
        sig { params(expand: T.nilable(T::Array[String]), features: T::Array[String]).void }
        def initialize(expand: nil, features: nil); end
      end
      class SubscribeParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # The list of account features to which you would like to subscribe.
        sig { returns(T::Array[String]) }
        def features; end
        sig { params(_features: T::Array[String]).returns(T::Array[String]) }
        def features=(_features); end
        sig { params(expand: T.nilable(T::Array[String]), features: T::Array[String]).void }
        def initialize(expand: nil, features: nil); end
      end
      class UnsubscribeParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # The list of account features from which you would like to unsubscribe.
        sig { returns(T::Array[String]) }
        def features; end
        sig { params(_features: T::Array[String]).returns(T::Array[String]) }
        def features=(_features); end
        sig { params(expand: T.nilable(T::Array[String]), features: T::Array[String]).void }
        def initialize(expand: nil, features: nil); end
      end
      # Disables your access to a Financial Connections Account. You will no longer be able to access data associated with the account (e.g. balances, transactions).
      sig {
        params(params: T.any(::Stripe::FinancialConnections::Account::DisconnectParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::FinancialConnections::Account)
       }
      def disconnect(params = {}, opts = {}); end

      # Disables your access to a Financial Connections Account. You will no longer be able to access data associated with the account (e.g. balances, transactions).
      sig {
        params(account: String, params: T.any(::Stripe::FinancialConnections::Account::DisconnectParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::FinancialConnections::Account)
       }
      def self.disconnect(account, params = {}, opts = {}); end

      # Returns a list of Financial Connections Account objects.
      sig {
        params(params: T.any(::Stripe::FinancialConnections::Account::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def self.list(params = {}, opts = {}); end

      # Lists all owners for a given Account
      sig {
        params(params: T.any(::Stripe::FinancialConnections::Account::ListOwnersParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def list_owners(params = {}, opts = {}); end

      # Lists all owners for a given Account
      sig {
        params(account: String, params: T.any(::Stripe::FinancialConnections::Account::ListOwnersParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def self.list_owners(account, params = {}, opts = {}); end

      # Refreshes the data associated with a Financial Connections Account.
      sig {
        params(params: T.any(::Stripe::FinancialConnections::Account::RefreshAccountParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::FinancialConnections::Account)
       }
      def refresh_account(params = {}, opts = {}); end

      # Refreshes the data associated with a Financial Connections Account.
      sig {
        params(account: String, params: T.any(::Stripe::FinancialConnections::Account::RefreshAccountParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::FinancialConnections::Account)
       }
      def self.refresh_account(account, params = {}, opts = {}); end

      # Subscribes to periodic refreshes of data associated with a Financial Connections Account.
      sig {
        params(params: T.any(::Stripe::FinancialConnections::Account::SubscribeParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::FinancialConnections::Account)
       }
      def subscribe(params = {}, opts = {}); end

      # Subscribes to periodic refreshes of data associated with a Financial Connections Account.
      sig {
        params(account: String, params: T.any(::Stripe::FinancialConnections::Account::SubscribeParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::FinancialConnections::Account)
       }
      def self.subscribe(account, params = {}, opts = {}); end

      # Unsubscribes from periodic refreshes of data associated with a Financial Connections Account.
      sig {
        params(params: T.any(::Stripe::FinancialConnections::Account::UnsubscribeParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::FinancialConnections::Account)
       }
      def unsubscribe(params = {}, opts = {}); end

      # Unsubscribes from periodic refreshes of data associated with a Financial Connections Account.
      sig {
        params(account: String, params: T.any(::Stripe::FinancialConnections::Account::UnsubscribeParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::FinancialConnections::Account)
       }
      def self.unsubscribe(account, params = {}, opts = {}); end
    end
  end
end