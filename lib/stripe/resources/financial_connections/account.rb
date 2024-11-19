# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module FinancialConnections
    # A Financial Connections Account represents an account that exists outside of Stripe, to which you have been granted some degree of access.
    class Account < APIResource
      extend Stripe::APIOperations::List
      extend Stripe::APIOperations::NestedResource

      OBJECT_NAME = "financial_connections.account"
      def self.object_name
        "financial_connections.account"
      end

      nested_resource_class_methods :inferred_balance, operations: %i[list]

      class AccountHolder < Stripe::StripeObject
        attr_reader :account, :customer, :type
      end

      class Balance < Stripe::StripeObject
        class Cash < Stripe::StripeObject
          attr_reader :available
        end

        class Credit < Stripe::StripeObject
          attr_reader :used
        end
        attr_reader :as_of, :cash, :credit, :current, :type
      end

      class BalanceRefresh < Stripe::StripeObject
        attr_reader :last_attempted_at, :next_refresh_available_at, :status
      end

      class InferredBalancesRefresh < Stripe::StripeObject
        attr_reader :last_attempted_at, :next_refresh_available_at, :status
      end

      class OwnershipRefresh < Stripe::StripeObject
        attr_reader :last_attempted_at, :next_refresh_available_at, :status
      end

      class TransactionRefresh < Stripe::StripeObject
        attr_reader :id, :last_attempted_at, :next_refresh_available_at, :status
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
      # The state of the most recent attempt to refresh the account's inferred balance history.
      attr_reader :inferred_balances_refresh
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
