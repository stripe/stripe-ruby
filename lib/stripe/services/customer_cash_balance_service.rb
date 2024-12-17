# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class CustomerCashBalanceService < StripeService
    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand

      def initialize(expand: nil)
        @expand = expand
      end
    end

    class UpdateParams < Stripe::RequestParams
      class Settings < Stripe::RequestParams
        # Controls how funds transferred by the customer are applied to payment intents and invoices. Valid options are `automatic`, `manual`, or `merchant_default`. For more information about these reconciliation modes, see [Reconciliation](https://stripe.com/docs/payments/customer-balance/reconciliation).
        attr_accessor :reconciliation_mode

        def initialize(reconciliation_mode: nil)
          @reconciliation_mode = reconciliation_mode
        end
      end
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A hash of settings for this cash balance.
      attr_accessor :settings

      def initialize(expand: nil, settings: nil)
        @expand = expand
        @settings = settings
      end
    end

    # Retrieves a customer's cash balance.
    def retrieve(customer, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/customers/%<customer>s/cash_balance", { customer: CGI.escape(customer) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Changes the settings on a customer's cash balance.
    def update(customer, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/customers/%<customer>s/cash_balance", { customer: CGI.escape(customer) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
