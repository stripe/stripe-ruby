# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module FinancialConnections
    class SessionCreateParams < ::Stripe::RequestParams
      class AccountHolder < ::Stripe::RequestParams
        # The ID of the Stripe account whose accounts you will retrieve. Only available when `type` is `account`.
        attr_accessor :account
        # The ID of the Stripe customer whose accounts you will retrieve. Only available when `type` is `customer`.
        attr_accessor :customer
        # The ID of Account representing a customer whose accounts you will retrieve. Only available when `type` is `customer`.
        attr_accessor :customer_account
        # Type of account holder to collect accounts for.
        attr_accessor :type

        def initialize(account: nil, customer: nil, customer_account: nil, type: nil)
          @account = account
          @customer = customer
          @customer_account = customer_account
          @type = type
        end
      end

      class Filters < ::Stripe::RequestParams
        # Restricts the Session to subcategories of accounts that can be linked. Valid subcategories are: `checking`, `savings`, `mortgage`, `line_of_credit`, `credit_card`.
        attr_accessor :account_subcategories
        # List of countries from which to collect accounts.
        attr_accessor :countries
        # Whether the session should require payment method support and successful account number retrieval before completion.
        attr_accessor :require_payment_method_support

        def initialize(
          account_subcategories: nil,
          countries: nil,
          require_payment_method_support: nil
        )
          @account_subcategories = account_subcategories
          @countries = countries
          @require_payment_method_support = require_payment_method_support
        end
      end

      class Limits < ::Stripe::RequestParams
        # The number of accounts that can be linked in this Session. Pass an empty value to allow any number of accounts.
        attr_accessor :accounts

        def initialize(accounts: nil)
          @accounts = accounts
        end
      end

      class ManualEntry < ::Stripe::RequestParams
        # How manual entry should be handled.
        attr_accessor :mode

        def initialize(mode: nil)
          @mode = mode
        end
      end
      # The account holder to link accounts for.
      attr_accessor :account_holder
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Filters to restrict the kinds of accounts to collect.
      attr_accessor :filters
      # Settings for configuring Session-specific limits.
      attr_accessor :limits
      # Customize manual entry behavior
      attr_accessor :manual_entry
      # List of data features that you would like to request access to.
      #
      # Possible values are `balances`, `transactions`, `ownership`, and `payment_method`.
      attr_accessor :permissions
      # List of data features that you would like to retrieve upon account creation.
      attr_accessor :prefetch
      # For webview integrations only. Upon completing OAuth login in the native browser, the user will be redirected to this URL to return to your app.
      attr_accessor :return_url

      def initialize(
        account_holder: nil,
        expand: nil,
        filters: nil,
        limits: nil,
        manual_entry: nil,
        permissions: nil,
        prefetch: nil,
        return_url: nil
      )
        @account_holder = account_holder
        @expand = expand
        @filters = filters
        @limits = limits
        @manual_entry = manual_entry
        @permissions = permissions
        @prefetch = prefetch
        @return_url = return_url
      end
    end
  end
end
