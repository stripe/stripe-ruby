# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class PayoutMethodsBankAccountSpecService < StripeService
        # Fetch the specifications for a set of countries to know which
        # credential fields are required, the validations for each fields, and how to translate these
        # country-specific fields to the generic fields in the PayoutMethodBankAccount type.
        def retrieve(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/money_management/payout_methods_bank_account_spec",
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
