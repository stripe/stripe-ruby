# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      module FinancialAccounts
        class WalletExportService < StripeService
          # Exports wallet credentials encrypted to the supplied recipient key. The first successful request starts one fixed one-hour retrieval window; later requests may use a different recipient key without extending it.
          #
          # ** raises ServiceUnavailableError
          def export_credentials(id, params = {}, opts = {})
            request(
              method: :post,
              path: format("/v2/money_management/financial_accounts/%<id>s/wallet_export/export_credentials", { id: CGI.escape(id) }),
              params: params,
              opts: opts,
              base_address: :api
            )
          end

          # Retrieves the wallet export metadata for a closed FinancialAccount. Credentials are returned only by the export_credentials action.
          def retrieve(id, params = {}, opts = {})
            request(
              method: :get,
              path: format("/v2/money_management/financial_accounts/%<id>s/wallet_export", { id: CGI.escape(id) }),
              params: params,
              opts: opts,
              base_address: :api
            )
          end
        end
      end
    end
  end
end
