# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class FinancialAccountService < StripeService
        class ListParams < Stripe::RequestParams
          # The page limit.
          attr_accessor :limit

          def initialize(limit: nil)
            @limit = limit
          end
        end

        class RetrieveParams < Stripe::RequestParams
        end

        # Lists FinancialAccounts in this compartment.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/money_management/financial_accounts",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieves the details of an existing FinancialAccount.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/money_management/financial_accounts/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
