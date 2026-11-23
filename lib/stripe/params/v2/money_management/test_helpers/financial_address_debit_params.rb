# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      module TestHelpers
        class FinancialAddressDebitParams < ::Stripe::RequestParams
          class NetworkDetails < ::Stripe::RequestParams
            class Ach < ::Stripe::RequestParams
              # The ACH company ID of the originator of the simulated debit. Must contain exactly 10 alphanumeric characters. Sent to the network in uppercase.
              attr_accessor :originator_company_id

              def initialize(originator_company_id: nil)
                @originator_company_id = originator_company_id
              end
            end
            # ACH-specific details for the simulated debit.
            attr_accessor :ach

            def initialize(ach: nil)
              @ach = ach
            end
          end
          # Object containing the amount value and currency to debit.
          attr_accessor :amount
          # The network to use in simulating the funds flow. This will be reflected in the resulting ReceivedDebit.
          attr_accessor :network
          # Network-specific details for the simulated debit. Only used for ACH debits; supplied details must be valid.
          attr_accessor :network_details
          # String explaining funds flow. Use this field to populate the statement descriptor of the ReceivedDebit created as an eventual result of this simulation.
          attr_accessor :statement_descriptor

          def initialize(amount: nil, network: nil, network_details: nil, statement_descriptor: nil)
            @amount = amount
            @network = network
            @network_details = network_details
            @statement_descriptor = statement_descriptor
          end
        end
      end
    end
  end
end
