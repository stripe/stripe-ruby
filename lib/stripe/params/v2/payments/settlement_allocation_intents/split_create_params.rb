# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Payments
      module SettlementAllocationIntents
        class SplitCreateParams < ::Stripe::RequestParams
          # The target account for settling the SettlementAllocationIntentSplit.
          attr_accessor :account
          # The amount and currency of the SettlementAllocationIntentSplit.
          attr_accessor :amount
          # Metadata associated with the SettlementAllocationIntentSplit.
          attr_accessor :metadata
          # The type of the fund transfer.
          attr_accessor :type

          def initialize(account: nil, amount: nil, metadata: nil, type: nil)
            @account = account
            @amount = amount
            @metadata = metadata
            @type = type
          end
        end
      end
    end
  end
end
