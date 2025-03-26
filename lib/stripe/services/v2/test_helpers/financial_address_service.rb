# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module TestHelpers
      class FinancialAddressService < StripeService
        class CreditParams < Stripe::RequestParams
          # Object containing the amount value and currency to credit.
          attr_accessor :amount
          # Open Enum. The network to use in simulating the funds flow. This will be the reflected in the resulting ReceivedCredit.
          attr_accessor :network
          # String explaining funds flow. Use this field to populate the statement descriptor of the ReceivedCredit created as an eventual result of this simulation.
          attr_accessor :statement_descriptor

          def initialize(amount: nil, network: nil, statement_descriptor: nil)
            @amount = amount
            @network = network
            @statement_descriptor = statement_descriptor
          end
        end

        class GenerateMicrodepositsParams < Stripe::RequestParams
        end

        # Simulate crediting a FinancialAddress in a Sandbox environment. This can be used to add virtual funds and increase your balance for testing.
        def credit(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/test_helpers/financial_addresses/%<id>s/credit", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Generates microdeposits for a FinancialAddress in a Sandbox environment.
        def generate_microdeposits(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/test_helpers/financial_addresses/%<id>s/generate_microdeposits", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
