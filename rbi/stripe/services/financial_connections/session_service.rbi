# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module FinancialConnections
    class SessionService < StripeService
      class RetrieveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
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
        sig { returns(::Stripe::FinancialConnections::SessionService::CreateParams::AccountHolder) }
        def account_holder; end
        sig {
          params(_account_holder: ::Stripe::FinancialConnections::SessionService::CreateParams::AccountHolder).returns(::Stripe::FinancialConnections::SessionService::CreateParams::AccountHolder)
         }
        def account_holder=(_account_holder); end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # Filters to restrict the kinds of accounts to collect.
        sig {
          returns(T.nilable(::Stripe::FinancialConnections::SessionService::CreateParams::Filters))
         }
        def filters; end
        sig {
          params(_filters: T.nilable(::Stripe::FinancialConnections::SessionService::CreateParams::Filters)).returns(T.nilable(::Stripe::FinancialConnections::SessionService::CreateParams::Filters))
         }
        def filters=(_filters); end
        # Settings for configuring Session-specific limits.
        sig {
          returns(T.nilable(::Stripe::FinancialConnections::SessionService::CreateParams::Limits))
         }
        def limits; end
        sig {
          params(_limits: T.nilable(::Stripe::FinancialConnections::SessionService::CreateParams::Limits)).returns(T.nilable(::Stripe::FinancialConnections::SessionService::CreateParams::Limits))
         }
        def limits=(_limits); end
        # Customize manual entry behavior
        sig {
          returns(T.nilable(::Stripe::FinancialConnections::SessionService::CreateParams::ManualEntry))
         }
        def manual_entry; end
        sig {
          params(_manual_entry: T.nilable(::Stripe::FinancialConnections::SessionService::CreateParams::ManualEntry)).returns(T.nilable(::Stripe::FinancialConnections::SessionService::CreateParams::ManualEntry))
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
          params(account_holder: ::Stripe::FinancialConnections::SessionService::CreateParams::AccountHolder, expand: T.nilable(T::Array[String]), filters: T.nilable(::Stripe::FinancialConnections::SessionService::CreateParams::Filters), limits: T.nilable(::Stripe::FinancialConnections::SessionService::CreateParams::Limits), manual_entry: T.nilable(::Stripe::FinancialConnections::SessionService::CreateParams::ManualEntry), permissions: T::Array[String], prefetch: T.nilable(T::Array[String]), return_url: T.nilable(String)).void
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
        params(params: T.any(::Stripe::FinancialConnections::SessionService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::FinancialConnections::Session)
       }
      def create(params = {}, opts = {}); end

      # Retrieves the details of a Financial Connections Session
      sig {
        params(session: String, params: T.any(::Stripe::FinancialConnections::SessionService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::FinancialConnections::Session)
       }
      def retrieve(session, params = {}, opts = {}); end
    end
  end
end