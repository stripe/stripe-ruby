# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Treasury
    # Stripe Treasury provides users with a container for money called a FinancialAccount that is separate from their Payments balance.
    # FinancialAccounts serve as the source and destination of Treasury's money movement APIs.
    class FinancialAccount < APIResource
      extend Stripe::APIOperations::Create
      extend Stripe::APIOperations::List
      include Stripe::APIOperations::Save

      OBJECT_NAME = "treasury.financial_account"
      def self.object_name
        "treasury.financial_account"
      end

      class Balance < Stripe::StripeObject
        attr_reader :cash, :inbound_pending, :outbound_pending
      end

      class FinancialAddress < Stripe::StripeObject
        class Aba < Stripe::StripeObject
          attr_reader :account_holder_name, :account_number, :account_number_last4, :bank_name, :routing_number
        end
        attr_reader :aba, :supported_networks, :type
      end

      class PlatformRestrictions < Stripe::StripeObject
        attr_reader :inbound_flows, :outbound_flows
      end

      class StatusDetails < Stripe::StripeObject
        class Closed < Stripe::StripeObject
          attr_reader :reasons
        end
        attr_reader :closed
      end
      # The array of paths to active Features in the Features hash.
      attr_reader :active_features
      # Balance information for the FinancialAccount
      attr_reader :balance
      # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
      attr_reader :country
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      # The display name for the FinancialAccount. Use this field to customize the names of the FinancialAccounts for your connected accounts. Unlike the `nickname` field, `display_name` is not internal metadata and will be exposed to connected accounts.
      attr_reader :display_name
      # Encodes whether a FinancialAccount has access to a particular Feature, with a `status` enum and associated `status_details`.
      # Stripe or the platform can control Features via the requested field.
      attr_reader :features
      # The set of credentials that resolve to a FinancialAccount.
      attr_reader :financial_addresses
      # Unique identifier for the object.
      attr_reader :id
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # The array of paths to pending Features in the Features hash.
      attr_reader :pending_features
      # The set of functionalities that the platform can restrict on the FinancialAccount.
      attr_reader :platform_restrictions
      # The array of paths to restricted Features in the Features hash.
      attr_reader :restricted_features
      # Status of this FinancialAccount.
      attr_reader :status
      # Attribute for field status_details
      attr_reader :status_details
      # The currencies the FinancialAccount can hold a balance in. Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase.
      attr_reader :supported_currencies

      # Creates a new FinancialAccount. For now, each connected account can only have one FinancialAccount.
      def self.create(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/treasury/financial_accounts",
          params: params,
          opts: opts
        )
      end

      # Returns a list of FinancialAccounts.
      def self.list(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/treasury/financial_accounts",
          params: params,
          opts: opts
        )
      end

      # Retrieves Features information associated with the FinancialAccount.
      def retrieve_features(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: format("/v1/treasury/financial_accounts/%<financial_account>s/features", { financial_account: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # Retrieves Features information associated with the FinancialAccount.
      def self.retrieve_features(financial_account, params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: format("/v1/treasury/financial_accounts/%<financial_account>s/features", { financial_account: CGI.escape(financial_account) }),
          params: params,
          opts: opts
        )
      end

      # Updates the details of a FinancialAccount.
      def self.update(id, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/treasury/financial_accounts/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts
        )
      end

      # Updates the Features associated with a FinancialAccount.
      def update_features(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/treasury/financial_accounts/%<financial_account>s/features", { financial_account: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # Updates the Features associated with a FinancialAccount.
      def self.update_features(financial_account, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/treasury/financial_accounts/%<financial_account>s/features", { financial_account: CGI.escape(financial_account) }),
          params: params,
          opts: opts
        )
      end
    end
  end
end
