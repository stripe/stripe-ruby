# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module TestHelpers
      class FinancialAddressCreditParams < Stripe::RequestParams
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
    end
  end
end
