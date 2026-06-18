# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      module TestHelpers
        class FinancialAddressDebitParams < ::Stripe::RequestParams
          # Object containing the amount value and currency to debit.
          attr_accessor :amount
          # The network to use in simulating the funds flow. This will be reflected in the resulting ReceivedDebit.
          attr_accessor :network
          # String explaining funds flow. Use this field to populate the statement descriptor of the ReceivedDebit created as an eventual result of this simulation.
          attr_accessor :statement_descriptor

          def initialize(amount: nil, network: nil, statement_descriptor: nil)
            @amount = amount
            @network = network
            @statement_descriptor = statement_descriptor
          end
        end
      end
    end
  end
end
