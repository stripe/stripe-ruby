# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module FinancialConnections
    # A Financial Connections Account represents an account that exists outside of Stripe, to which you have been granted some degree of access.
    class Account < APIResource
      extend Stripe::APIOperations::List

      OBJECT_NAME = "financial_connections.account"
      def self.object_name
        "financial_connections.account"
      end

      class AccountHolder < Stripe::StripeObject
        # The ID of the Stripe account this account belongs to. Should only be present if `account_holder.type` is `account`.
        attr_reader :account
        # ID of the Stripe customer this account belongs to. Present if and only if `account_holder.type` is `customer`.
        attr_reader :customer
        # Type of account holder that this account belongs to.
        attr_reader :type
      end

      class Balance < Stripe::StripeObject
        class Cash < Stripe::StripeObject
          # The funds available to the account holder. Typically this is the current balance after subtracting any outbound pending transactions and adding any inbound pending transactions.
          #
          # Each key is a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase.
          #
          # Each value is a integer amount. A positive amount indicates money owed to the account holder. A negative amount indicates money owed by the account holder.
          attr_reader :available
        end

        class Credit < Stripe::StripeObject
          # The credit that has been used by the account holder.
          #
          # Each key is a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase.
          #
          # Each value is a integer amount. A positive amount indicates money owed to the account holder. A negative amount indicates money owed by the account holder.
          attr_reader :used
        end
        # The time that the external institution calculated this balance. Measured in seconds since the Unix epoch.
        attr_reader :as_of
        # Attribute for field cash
        attr_reader :cash
        # Attribute for field credit
        attr_reader :credit
        # The balances owed to (or by) the account holder, before subtracting any outbound pending transactions or adding any inbound pending transactions.
        #
        # Each key is a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase.
        #
        # Each value is a integer amount. A positive amount indicates money owed to the account holder. A negative amount indicates money owed by the account holder.
        attr_reader :current
        # The `type` of the balance. An additional hash is included on the balance with a name matching this value.
        attr_reader :type
      end

      class BalanceRefresh < Stripe::StripeObject
        # The time at which the last refresh attempt was initiated. Measured in seconds since the Unix epoch.
        attr_reader :last_attempted_at
        # Time at which the next balance refresh can be initiated. This value will be `null` when `status` is `pending`. Measured in seconds since the Unix epoch.
        attr_reader :next_refresh_available_at
        # The status of the last refresh attempt.
        attr_reader :status
      end

      class OwnershipRefresh < Stripe::StripeObject
        # The time at which the last refresh attempt was initiated. Measured in seconds since the Unix epoch.
        attr_reader :last_attempted_at
        # Time at which the next ownership refresh can be initiated. This value will be `null` when `status` is `pending`. Measured in seconds since the Unix epoch.
        attr_reader :next_refresh_available_at
        # The status of the last refresh attempt.
        attr_reader :status
      end

      class TransactionRefresh < Stripe::StripeObject
        # Unique identifier for the object.
        attr_reader :id
        # The time at which the last refresh attempt was initiated. Measured in seconds since the Unix epoch.
        attr_reader :last_attempted_at
        # Time at which the next transaction refresh can be initiated. This value will be `null` when `status` is `pending`. Measured in seconds since the Unix epoch.
        attr_reader :next_refresh_available_at
        # The status of the last refresh attempt.
        attr_reader :status
      end

      class ListParams < Stripe::RequestParams
        class AccountHolder < Stripe::RequestParams
          # The ID of the Stripe account whose accounts will be retrieved.
          attr_accessor :account
          # The ID of the Stripe customer whose accounts will be retrieved.
          attr_accessor :customer

          def initialize(account: nil, customer: nil)
            @account = account
            @customer = customer
          end
        end
        # If present, only return accounts that belong to the specified account holder. `account_holder[customer]` and `account_holder[account]` are mutually exclusive.
        attr_accessor :account_holder
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        attr_accessor :limit
        # If present, only return accounts that were collected as part of the given session.
        attr_accessor :session
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        attr_accessor :starting_after

        def initialize(
          account_holder: nil,
          ending_before: nil,
          expand: nil,
          limit: nil,
          session: nil,
          starting_after: nil
        )
          @account_holder = account_holder
          @ending_before = ending_before
          @expand = expand
          @limit = limit
          @session = session
          @starting_after = starting_after
        end
      end

      class ListOwnersParams < Stripe::RequestParams
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        attr_accessor :limit
        # The ID of the ownership object to fetch owners from.
        attr_accessor :ownership
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        attr_accessor :starting_after

        def initialize(
          ending_before: nil,
          expand: nil,
          limit: nil,
          ownership: nil,
          starting_after: nil
        )
          @ending_before = ending_before
          @expand = expand
          @limit = limit
          @ownership = ownership
          @starting_after = starting_after
        end
      end

      class DisconnectParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand

        def initialize(expand: nil)
          @expand = expand
        end
      end

      class RefreshAccountParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # The list of account features that you would like to refresh.
        attr_accessor :features

        def initialize(expand: nil, features: nil)
          @expand = expand
          @features = features
        end
      end

      class SubscribeParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # The list of account features to which you would like to subscribe.
        attr_accessor :features

        def initialize(expand: nil, features: nil)
          @expand = expand
          @features = features
        end
      end

      class UnsubscribeParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # The list of account features from which you would like to unsubscribe.
        attr_accessor :features

        def initialize(expand: nil, features: nil)
          @expand = expand
          @features = features
        end
      end
      # The account holder that this account belongs to.
      attr_reader :account_holder
      # The most recent information about the account's balance.
      attr_reader :balance
      # The state of the most recent attempt to refresh the account balance.
      attr_reader :balance_refresh
      # The type of the account. Account category is further divided in `subcategory`.
      attr_reader :category
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      # A human-readable name that has been assigned to this account, either by the account holder or by the institution.
      attr_reader :display_name
      # Unique identifier for the object.
      attr_reader :id
      # The name of the institution that holds this account.
      attr_reader :institution_name
      # The last 4 digits of the account number. If present, this will be 4 numeric characters.
      attr_reader :last4
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # The most recent information about the account's owners.
      attr_reader :ownership
      # The state of the most recent attempt to refresh the account owners.
      attr_reader :ownership_refresh
      # The list of permissions granted by this account.
      attr_reader :permissions
      # The status of the link to the account.
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
      attr_reader :subcategory
      # The list of data refresh subscriptions requested on this account.
      attr_reader :subscriptions
      # The [PaymentMethod type](https://stripe.com/docs/api/payment_methods/object#payment_method_object-type)(s) that can be created from this account.
      attr_reader :supported_payment_method_types
      # The state of the most recent attempt to refresh the account transactions.
      attr_reader :transaction_refresh

      # Disables your access to a Financial Connections Account. You will no longer be able to access data associated with the account (e.g. balances, transactions).
      def disconnect(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/financial_connections/accounts/%<account>s/disconnect", { account: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # Disables your access to a Financial Connections Account. You will no longer be able to access data associated with the account (e.g. balances, transactions).
      def self.disconnect(account, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/financial_connections/accounts/%<account>s/disconnect", { account: CGI.escape(account) }),
          params: params,
          opts: opts
        )
      end

      # Returns a list of Financial Connections Account objects.
      def self.list(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/financial_connections/accounts",
          params: params,
          opts: opts
        )
      end

      # Lists all owners for a given Account
      def list_owners(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: format("/v1/financial_connections/accounts/%<account>s/owners", { account: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # Lists all owners for a given Account
      def self.list_owners(account, params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: format("/v1/financial_connections/accounts/%<account>s/owners", { account: CGI.escape(account) }),
          params: params,
          opts: opts
        )
      end

      # Refreshes the data associated with a Financial Connections Account.
      def refresh_account(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/financial_connections/accounts/%<account>s/refresh", { account: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # Refreshes the data associated with a Financial Connections Account.
      def self.refresh_account(account, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/financial_connections/accounts/%<account>s/refresh", { account: CGI.escape(account) }),
          params: params,
          opts: opts
        )
      end

      # Subscribes to periodic refreshes of data associated with a Financial Connections Account.
      def subscribe(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/financial_connections/accounts/%<account>s/subscribe", { account: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # Subscribes to periodic refreshes of data associated with a Financial Connections Account.
      def self.subscribe(account, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/financial_connections/accounts/%<account>s/subscribe", { account: CGI.escape(account) }),
          params: params,
          opts: opts
        )
      end

      # Unsubscribes from periodic refreshes of data associated with a Financial Connections Account.
      def unsubscribe(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/financial_connections/accounts/%<account>s/unsubscribe", { account: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # Unsubscribes from periodic refreshes of data associated with a Financial Connections Account.
      def self.unsubscribe(account, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/financial_connections/accounts/%<account>s/unsubscribe", { account: CGI.escape(account) }),
          params: params,
          opts: opts
        )
      end
    end
  end
end
