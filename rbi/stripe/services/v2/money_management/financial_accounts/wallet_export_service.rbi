# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      module FinancialAccounts
        class WalletExportService < StripeService
          # Exports wallet credentials encrypted to the supplied recipient key. The first successful request starts one fixed one-hour retrieval window; later requests may use a different recipient key without extending it.
          #
          # ** raises ServiceUnavailableError
          sig {
            params(id: String, params: T.any(::Stripe::V2::MoneyManagement::FinancialAccounts::WalletExportExportCredentialsParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::MoneyManagement::FinancialAccountWalletExportCredentials)
           }
          def export_credentials(id, params = {}, opts = {}); end

          # Retrieves the wallet export metadata for a closed FinancialAccount. Credentials are returned only by the export_credentials action.
          sig {
            params(id: String, params: T.any(::Stripe::V2::MoneyManagement::FinancialAccounts::WalletExportRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::MoneyManagement::FinancialAccountWalletExport)
           }
          def retrieve(id, params = {}, opts = {}); end
        end
      end
    end
  end
end