# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      module Vault
        class UsBankAccountCreateParams < Stripe::RequestParams
          # The account number of the bank account.
          attr_accessor :account_number
          # Closed Enum. The type of the bank account (checking or savings).
          attr_accessor :bank_account_type
          # The fedwire routing number of the bank account. Note that certain banks have the same ACH and wire routing number.
          attr_accessor :fedwire_routing_number
          # The ACH routing number of the bank account. Note that certain banks have the same ACH and wire routing number.
          attr_accessor :routing_number

          def initialize(
            account_number: nil,
            bank_account_type: nil,
            fedwire_routing_number: nil,
            routing_number: nil
          )
            @account_number = account_number
            @bank_account_type = bank_account_type
            @fedwire_routing_number = fedwire_routing_number
            @routing_number = routing_number
          end
        end
      end
    end
  end
end
