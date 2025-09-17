# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module FinancialConnections
    # A Financial Connections Session is the secure way to programmatically launch the client-side Stripe.js modal that lets your users link their accounts.
    class Session < APIResource
      class AccountHolder < Stripe::StripeObject
        # The ID of the Stripe account this account belongs to. Should only be present if `account_holder.type` is `account`.
        sig { returns(T.nilable(T.any(String, Stripe::Account))) }
        def account; end
        # ID of the Stripe customer this account belongs to. Present if and only if `account_holder.type` is `customer`.
        sig { returns(T.nilable(T.any(String, Stripe::Customer))) }
        def customer; end
        # Attribute for field customer_account
        sig { returns(T.nilable(String)) }
        def customer_account; end
        # Type of account holder that this account belongs to.
        sig { returns(String) }
        def type; end
      end
      class Filters < Stripe::StripeObject
        # Restricts the Session to subcategories of accounts that can be linked. Valid subcategories are: `checking`, `savings`, `mortgage`, `line_of_credit`, `credit_card`.
        sig { returns(T.nilable(T::Array[String])) }
        def account_subcategories; end
        # List of countries from which to filter accounts.
        sig { returns(T.nilable(T::Array[String])) }
        def countries; end
        # Stripe ID of the institution with which the customer should be directed to log in.
        sig { returns(T.nilable(String)) }
        def institution; end
      end
      class Limits < Stripe::StripeObject
        # The number of accounts that can be linked in this Session.
        sig { returns(Integer) }
        def accounts; end
      end
      class ManualEntry < Stripe::StripeObject; end
      class StatusDetails < Stripe::StripeObject
        class Cancelled < Stripe::StripeObject
          # The reason for the Session being cancelled.
          sig { returns(String) }
          def reason; end
        end
        # Attribute for field cancelled
        sig { returns(T.nilable(Cancelled)) }
        def cancelled; end
      end
      # The account holder for whom accounts are collected in this session.
      sig { returns(T.nilable(AccountHolder)) }
      def account_holder; end
      # The accounts that were collected as part of this Session.
      sig { returns(Stripe::ListObject) }
      def accounts; end
      # A value that will be passed to the client to launch the authentication flow.
      sig { returns(String) }
      def client_secret; end
      # Attribute for field filters
      sig { returns(T.nilable(Filters)) }
      def filters; end
      # Unique identifier for the object.
      sig { returns(String) }
      def id; end
      # Attribute for field limits
      sig { returns(T.nilable(Limits)) }
      def limits; end
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      def livemode; end
      # Attribute for field manual_entry
      sig { returns(T.nilable(ManualEntry)) }
      def manual_entry; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
      # Permissions requested for accounts collected during this session.
      sig { returns(T::Array[String]) }
      def permissions; end
      # Data features requested to be retrieved upon account creation.
      sig { returns(T.nilable(T::Array[String])) }
      def prefetch; end
      # For webview integrations only. Upon completing OAuth login in the native browser, the user will be redirected to this URL to return to your app.
      sig { returns(T.nilable(String)) }
      def return_url; end
      # The current state of the session.
      sig { returns(T.nilable(String)) }
      def status; end
      # Attribute for field status_details
      sig { returns(T.nilable(StatusDetails)) }
      def status_details; end
      class CreateParams < Stripe::RequestParams
        class AccountHolder < Stripe::RequestParams
          # The ID of the Stripe account whose accounts will be retrieved. Should only be present if `type` is `account`.
          sig { returns(T.nilable(String)) }
          def account; end
          sig { params(_account: T.nilable(String)).returns(T.nilable(String)) }
          def account=(_account); end
          # The ID of the Stripe customer whose accounts will be retrieved. Should only be present if `type` is `customer`.
          sig { returns(T.nilable(String)) }
          def customer; end
          sig { params(_customer: T.nilable(String)).returns(T.nilable(String)) }
          def customer=(_customer); end
          # The ID of the Stripe customer Account whose accounts will be retrieved. Should only be present if `type` is `customer`.
          sig { returns(T.nilable(String)) }
          def customer_account; end
          sig { params(_customer_account: T.nilable(String)).returns(T.nilable(String)) }
          def customer_account=(_customer_account); end
          # Type of account holder to collect accounts for.
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          sig {
            params(account: T.nilable(String), customer: T.nilable(String), customer_account: T.nilable(String), type: String).void
           }
          def initialize(account: nil, customer: nil, customer_account: nil, type: nil); end
        end
        class Filters < Stripe::RequestParams
          # Restricts the Session to subcategories of accounts that can be linked. Valid subcategories are: `checking`, `savings`, `mortgage`, `line_of_credit`, `credit_card`.
          sig { returns(T.nilable(T::Array[String])) }
          def account_subcategories; end
          sig {
            params(_account_subcategories: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
           }
          def account_subcategories=(_account_subcategories); end
          # List of countries from which to collect accounts.
          sig { returns(T.nilable(T::Array[String])) }
          def countries; end
          sig {
            params(_countries: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
           }
          def countries=(_countries); end
          # Stripe ID of the institution with which the customer should be directed to log in.
          sig { returns(T.nilable(String)) }
          def institution; end
          sig { params(_institution: T.nilable(String)).returns(T.nilable(String)) }
          def institution=(_institution); end
          sig {
            params(account_subcategories: T.nilable(T::Array[String]), countries: T.nilable(T::Array[String]), institution: T.nilable(String)).void
           }
          def initialize(account_subcategories: nil, countries: nil, institution: nil); end
        end
        class Limits < Stripe::RequestParams
          # The number of accounts that can be linked in this Session.
          sig { returns(Integer) }
          def accounts; end
          sig { params(_accounts: Integer).returns(Integer) }
          def accounts=(_accounts); end
          sig { params(accounts: Integer).void }
          def initialize(accounts: nil); end
        end
        class ManualEntry < Stripe::RequestParams
          # Whether manual entry will be handled by Stripe during the Session.
          sig { returns(T.nilable(String)) }
          def mode; end
          sig { params(_mode: T.nilable(String)).returns(T.nilable(String)) }
          def mode=(_mode); end
          sig { params(mode: T.nilable(String)).void }
          def initialize(mode: nil); end
        end
        # The account holder to link accounts for.
        sig { returns(::Stripe::FinancialConnections::Session::CreateParams::AccountHolder) }
        def account_holder; end
        sig {
          params(_account_holder: ::Stripe::FinancialConnections::Session::CreateParams::AccountHolder).returns(::Stripe::FinancialConnections::Session::CreateParams::AccountHolder)
         }
        def account_holder=(_account_holder); end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # Filters to restrict the kinds of accounts to collect.
        sig { returns(T.nilable(::Stripe::FinancialConnections::Session::CreateParams::Filters)) }
        def filters; end
        sig {
          params(_filters: T.nilable(::Stripe::FinancialConnections::Session::CreateParams::Filters)).returns(T.nilable(::Stripe::FinancialConnections::Session::CreateParams::Filters))
         }
        def filters=(_filters); end
        # Settings for configuring Session-specific limits.
        sig { returns(T.nilable(::Stripe::FinancialConnections::Session::CreateParams::Limits)) }
        def limits; end
        sig {
          params(_limits: T.nilable(::Stripe::FinancialConnections::Session::CreateParams::Limits)).returns(T.nilable(::Stripe::FinancialConnections::Session::CreateParams::Limits))
         }
        def limits=(_limits); end
        # Customize manual entry behavior
        sig {
          returns(T.nilable(::Stripe::FinancialConnections::Session::CreateParams::ManualEntry))
         }
        def manual_entry; end
        sig {
          params(_manual_entry: T.nilable(::Stripe::FinancialConnections::Session::CreateParams::ManualEntry)).returns(T.nilable(::Stripe::FinancialConnections::Session::CreateParams::ManualEntry))
         }
        def manual_entry=(_manual_entry); end
        # List of data features that you would like to request access to.
        #
        # Possible values are `balances`, `transactions`, `ownership`, and `payment_method`.
        sig { returns(T::Array[String]) }
        def permissions; end
        sig { params(_permissions: T::Array[String]).returns(T::Array[String]) }
        def permissions=(_permissions); end
        # List of data features that you would like to retrieve upon account creation.
        sig { returns(T.nilable(T::Array[String])) }
        def prefetch; end
        sig { params(_prefetch: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def prefetch=(_prefetch); end
        # For webview integrations only. Upon completing OAuth login in the native browser, the user will be redirected to this URL to return to your app.
        sig { returns(T.nilable(String)) }
        def return_url; end
        sig { params(_return_url: T.nilable(String)).returns(T.nilable(String)) }
        def return_url=(_return_url); end
        sig {
          params(account_holder: ::Stripe::FinancialConnections::Session::CreateParams::AccountHolder, expand: T.nilable(T::Array[String]), filters: T.nilable(::Stripe::FinancialConnections::Session::CreateParams::Filters), limits: T.nilable(::Stripe::FinancialConnections::Session::CreateParams::Limits), manual_entry: T.nilable(::Stripe::FinancialConnections::Session::CreateParams::ManualEntry), permissions: T::Array[String], prefetch: T.nilable(T::Array[String]), return_url: T.nilable(String)).void
         }
        def initialize(
          account_holder: nil,
          expand: nil,
          filters: nil,
          limits: nil,
          manual_entry: nil,
          permissions: nil,
          prefetch: nil,
          return_url: nil
        ); end
      end
      # To launch the Financial Connections authorization flow, create a Session. The session's client_secret can be used to launch the flow using Stripe.js.
      sig {
        params(params: T.any(::Stripe::FinancialConnections::Session::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::FinancialConnections::Session)
       }
      def self.create(params = {}, opts = {}); end
    end
  end
end