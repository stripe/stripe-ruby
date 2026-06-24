# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      module TestHelpers
        class FinancialAddressService < StripeService
          # Simulate debiting a FinancialAddress in a Sandbox environment. This can be used to remove virtual funds and decrease your balance for testing.
          def debit(id, params = {}, opts = {})
            request(
              method: :post,
              path: format("/v2/money_management/test_helpers/financial_addresses/%<id>s/debit", { id: CGI.escape(id) }),
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
