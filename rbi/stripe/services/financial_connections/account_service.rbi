# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module FinancialConnections
    class AccountService < StripeService
      attr_reader :owners
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
          returns(T.nilable(::Stripe::FinancialConnections::AccountService::ListParams::AccountHolder))
         }
        def account_holder; end
        sig {
          params(_account_holder: T.nilable(::Stripe::FinancialConnections::AccountService::ListParams::AccountHolder)).returns(T.nilable(::Stripe::FinancialConnections::AccountService::ListParams::AccountHolder))
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
          params(account_holder: T.nilable(::Stripe::FinancialConnections::AccountService::ListParams::AccountHolder), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), session: T.nilable(String), starting_after: T.nilable(String)).void
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
      class RetrieveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
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
      class RefreshParams < Stripe::RequestParams
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
        params(account: String, params: T.any(::Stripe::FinancialConnections::AccountService::DisconnectParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::FinancialConnections::Account)
       }
      def disconnect(account, params = {}, opts = {}); end

      # Returns a list of Financial Connections Account objects.
      sig {
        params(params: T.any(::Stripe::FinancialConnections::AccountService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def list(params = {}, opts = {}); end

      # Refreshes the data associated with a Financial Connections Account.
      sig {
        params(account: String, params: T.any(::Stripe::FinancialConnections::AccountService::RefreshParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::FinancialConnections::Account)
       }
      def refresh(account, params = {}, opts = {}); end

      # Retrieves the details of an Financial Connections Account.
      sig {
        params(account: String, params: T.any(::Stripe::FinancialConnections::AccountService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::FinancialConnections::Account)
       }
      def retrieve(account, params = {}, opts = {}); end

      # Subscribes to periodic refreshes of data associated with a Financial Connections Account.
      sig {
        params(account: String, params: T.any(::Stripe::FinancialConnections::AccountService::SubscribeParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::FinancialConnections::Account)
       }
      def subscribe(account, params = {}, opts = {}); end

      # Unsubscribes from periodic refreshes of data associated with a Financial Connections Account.
      sig {
        params(account: String, params: T.any(::Stripe::FinancialConnections::AccountService::UnsubscribeParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::FinancialConnections::Account)
       }
      def unsubscribe(account, params = {}, opts = {}); end
    end
  end
end