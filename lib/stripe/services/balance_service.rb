# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class BalanceService < StripeService
    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand

      def initialize(expand: nil)
        @expand = expand
      end
    end

    # Retrieves the current account balance, based on the authentication that was used to make the request.
    #  For a sample request, see [Accounting for negative balances](https://stripe.com/docs/connect/account-balances#accounting-for-negative-balances).
    def retrieve(params = {}, opts = {})
      request(method: :get, path: "/v1/balance", params: params, opts: opts, base_address: :api)
    end
  end
end
