# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class DebitDisputeCreateParams < ::Stripe::RequestParams
        class BankTransfer < ::Stripe::RequestParams
          # The reason for the dispute.
          attr_accessor :reason

          def initialize(reason: nil)
            @reason = reason
          end
        end
        # Parameters for bank transfer disputes.
        attr_accessor :bank_transfer
        # The ID of the ReceivedDebit to dispute.
        attr_accessor :received_debit

        def initialize(bank_transfer: nil, received_debit: nil)
          @bank_transfer = bank_transfer
          @received_debit = received_debit
        end
      end
    end
  end
end
