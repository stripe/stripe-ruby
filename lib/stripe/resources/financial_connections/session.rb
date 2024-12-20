# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module FinancialConnections
    # A Financial Connections Session is the secure way to programmatically launch the client-side Stripe.js modal that lets your users link their accounts.
    class Session < APIResource
      extend Stripe::APIOperations::Create

      OBJECT_NAME = "financial_connections.session"
      def self.object_name
        "financial_connections.session"
      end

      class AccountHolder < Stripe::StripeObject
        # The ID of the Stripe account this account belongs to. Should only be present if `account_holder.type` is `account`.
        attr_reader :account

        # ID of the Stripe customer this account belongs to. Present if and only if `account_holder.type` is `customer`.
        attr_reader :customer

        # Type of account holder that this account belongs to.
        attr_reader :type
      end

      class Filters < Stripe::StripeObject
        # Restricts the Session to subcategories of accounts that can be linked. Valid subcategories are: `checking`, `savings`, `mortgage`, `line_of_credit`, `credit_card`.
        attr_reader :account_subcategories

        # List of countries from which to filter accounts.
        attr_reader :countries

        # Stripe ID of the institution with which the customer should be directed to log in.
        attr_reader :institution
      end

      class Limits < Stripe::StripeObject
        # The number of accounts that can be linked in this Session.
        attr_reader :accounts
      end

      class ManualEntry < Stripe::StripeObject; end

      class StatusDetails < Stripe::StripeObject
        class Cancelled < Stripe::StripeObject
          # The reason for the Session being cancelled.
          attr_reader :reason
        end
        # Attribute for field cancelled
        attr_reader :cancelled
      end

      class RetrieveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand

        def initialize(expand: nil)
          @expand = expand
        end
      end

      class CreateParams < Stripe::RequestParams
        class AccountHolder < Stripe::RequestParams
          # The ID of the Stripe account whose accounts will be retrieved. Should only be present if `type` is `account`.
          attr_accessor :account

          # The ID of the Stripe customer whose accounts will be retrieved. Should only be present if `type` is `customer`.
          attr_accessor :customer

          # Type of account holder to collect accounts for.
          attr_accessor :type

          def initialize(account: nil, customer: nil, type: nil)
            @account = account
            @customer = customer
            @type = type
          end
        end

        class Filters < Stripe::RequestParams
          # Restricts the Session to subcategories of accounts that can be linked. Valid subcategories are: `checking`, `savings`, `mortgage`, `line_of_credit`, `credit_card`.
          attr_accessor :account_subcategories

          # List of countries from which to collect accounts.
          attr_accessor :countries

          # Stripe ID of the institution with which the customer should be directed to log in.
          attr_accessor :institution

          def initialize(account_subcategories: nil, countries: nil, institution: nil)
            @account_subcategories = account_subcategories
            @countries = countries
            @institution = institution
          end
        end

        class Limits < Stripe::RequestParams
          # The number of accounts that can be linked in this Session.
          attr_accessor :accounts

          def initialize(accounts: nil)
            @accounts = accounts
          end
        end

        class ManualEntry < Stripe::RequestParams
          # Whether manual entry will be handled by Stripe during the Session.
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

        # Settings for configuring manual entry of account details for this Session.
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
      # The account holder for whom accounts are collected in this session.
      attr_reader :account_holder

      # The accounts that were collected as part of this Session.
      attr_reader :accounts

      # A value that will be passed to the client to launch the authentication flow.
      attr_reader :client_secret

      # Attribute for field filters
      attr_reader :filters

      # Unique identifier for the object.
      attr_reader :id

      # Attribute for field limits
      attr_reader :limits

      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode

      # Attribute for field manual_entry
      attr_reader :manual_entry

      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object

      # Permissions requested for accounts collected during this session.
      attr_reader :permissions

      # Data features requested to be retrieved upon account creation.
      attr_reader :prefetch

      # For webview integrations only. Upon completing OAuth login in the native browser, the user will be redirected to this URL to return to your app.
      attr_reader :return_url

      # The current state of the session.
      attr_reader :status

      # Attribute for field status_details
      attr_reader :status_details

      # To launch the Financial Connections authorization flow, create a Session. The session's client_secret can be used to launch the flow using Stripe.js.
      def self.create(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/financial_connections/sessions",
          params: params,
          opts: opts
        )
      end
    end
  end
end
