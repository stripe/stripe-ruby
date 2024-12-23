# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module FinancialConnections
    class SessionService < StripeService
      class RetrieveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T::Array[String]) }
        attr_accessor :expand
        sig { params(expand: T::Array[String]).void }
        def initialize(expand: nil); end
      end
      class CreateParams < Stripe::RequestParams
        class AccountHolder < Stripe::RequestParams
          # The ID of the Stripe account whose accounts will be retrieved. Should only be present if `type` is `account`.
          sig { returns(String) }
          attr_accessor :account
          # The ID of the Stripe customer whose accounts will be retrieved. Should only be present if `type` is `customer`.
          sig { returns(String) }
          attr_accessor :customer
          # Type of account holder to collect accounts for.
          sig { returns(String) }
          attr_accessor :type
          sig { params(account: String, customer: String, type: String).void }
          def initialize(account: nil, customer: nil, type: nil); end
        end
        class Filters < Stripe::RequestParams
          # Restricts the Session to subcategories of accounts that can be linked. Valid subcategories are: `checking`, `savings`, `mortgage`, `line_of_credit`, `credit_card`.
          sig { returns(T::Array[String]) }
          attr_accessor :account_subcategories
          # List of countries from which to collect accounts.
          sig { returns(T::Array[String]) }
          attr_accessor :countries
          # Stripe ID of the institution with which the customer should be directed to log in.
          sig { returns(String) }
          attr_accessor :institution
          sig {
            params(account_subcategories: T::Array[String], countries: T::Array[String], institution: String).void
           }
          def initialize(account_subcategories: nil, countries: nil, institution: nil); end
        end
        class Limits < Stripe::RequestParams
          # The number of accounts that can be linked in this Session.
          sig { returns(Integer) }
          attr_accessor :accounts
          sig { params(accounts: Integer).void }
          def initialize(accounts: nil); end
        end
        class ManualEntry < Stripe::RequestParams
          # Whether manual entry will be handled by Stripe during the Session.
          sig { returns(String) }
          attr_accessor :mode
          sig { params(mode: String).void }
          def initialize(mode: nil); end
        end
        # The account holder to link accounts for.
        sig { returns(::Stripe::FinancialConnections::SessionService::CreateParams::AccountHolder) }
        attr_accessor :account_holder
        # Specifies which fields in the response should be expanded.
        sig { returns(T::Array[String]) }
        attr_accessor :expand
        # Filters to restrict the kinds of accounts to collect.
        sig { returns(::Stripe::FinancialConnections::SessionService::CreateParams::Filters) }
        attr_accessor :filters
        # Settings for configuring Session-specific limits.
        sig { returns(::Stripe::FinancialConnections::SessionService::CreateParams::Limits) }
        attr_accessor :limits
        # Settings for configuring manual entry of account details for this Session.
        sig { returns(::Stripe::FinancialConnections::SessionService::CreateParams::ManualEntry) }
        attr_accessor :manual_entry
        # List of data features that you would like to request access to.
        #
        # Possible values are `balances`, `transactions`, `ownership`, and `payment_method`.
        sig { returns(T::Array[String]) }
        attr_accessor :permissions
        # List of data features that you would like to retrieve upon account creation.
        sig { returns(T::Array[String]) }
        attr_accessor :prefetch
        # For webview integrations only. Upon completing OAuth login in the native browser, the user will be redirected to this URL to return to your app.
        sig { returns(String) }
        attr_accessor :return_url
        sig {
          params(account_holder: ::Stripe::FinancialConnections::SessionService::CreateParams::AccountHolder, expand: T::Array[String], filters: ::Stripe::FinancialConnections::SessionService::CreateParams::Filters, limits: ::Stripe::FinancialConnections::SessionService::CreateParams::Limits, manual_entry: ::Stripe::FinancialConnections::SessionService::CreateParams::ManualEntry, permissions: T::Array[String], prefetch: T::Array[String], return_url: String).void
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