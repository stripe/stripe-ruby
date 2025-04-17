# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module FinancialConnections
    class AccountService < StripeService
      attr_reader :owners

      def initialize(requestor)
        super
        @owners = Stripe::FinancialConnections::AccountOwnerService.new(@requestor)
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

      class RetrieveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand

        def initialize(expand: nil)
          @expand = expand
        end
      end

      class DisconnectParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand

        def initialize(expand: nil)
          @expand = expand
        end
      end

      class RefreshParams < Stripe::RequestParams
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

      # Disables your access to a Financial Connections Account. You will no longer be able to access data associated with the account (e.g. balances, transactions).
      def disconnect(account, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/financial_connections/accounts/%<account>s/disconnect", { account: CGI.escape(account) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Returns a list of Financial Connections Account objects.
      def list(params = {}, opts = {})
        request(
          method: :get,
          path: "/v1/financial_connections/accounts",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Refreshes the data associated with a Financial Connections Account.
      def refresh(account, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/financial_connections/accounts/%<account>s/refresh", { account: CGI.escape(account) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Retrieves the details of an Financial Connections Account.
      def retrieve(account, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/financial_connections/accounts/%<account>s", { account: CGI.escape(account) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Subscribes to periodic refreshes of data associated with a Financial Connections Account.
      def subscribe(account, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/financial_connections/accounts/%<account>s/subscribe", { account: CGI.escape(account) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Unsubscribes from periodic refreshes of data associated with a Financial Connections Account.
      def unsubscribe(account, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/financial_connections/accounts/%<account>s/unsubscribe", { account: CGI.escape(account) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
