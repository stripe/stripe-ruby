# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class BalanceTransferService < StripeService
    # Creates a balance transfer. For Issuing use cases, funds will be debited immediately from the source balance and credited to the destination balance immediately (if your account is based in the US) or next-business-day (if your account is based in the EU). For Segregated Separate Charges and Transfers use cases, funds will be debited immediately from the source balance and credited immediately to the destination balance.
    def create(params = {}, opts = {})
      request(
        method: :post,
        path: "/v1/balance_transfers",
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
