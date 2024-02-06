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

      # Retrieves Features information associated with the FinancialAccount.
      def retrieve_features(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: format("/v1/treasury/financial_accounts/%<financial_account>s/features", { financial_account: CGI.escape(self["id"]) }),
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

      # Retrieves Features information associated with the FinancialAccount.
      def self.retrieve_features(financial_account, params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: format("/v1/treasury/financial_accounts/%<financial_account>s/features", { financial_account: CGI.escape(financial_account) }),
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
      def self.list(filters = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/treasury/financial_accounts",
          params: filters,
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
    end
  end
end
