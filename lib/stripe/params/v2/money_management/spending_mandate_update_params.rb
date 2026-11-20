# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class SpendingMandateUpdateParams < ::Stripe::RequestParams
        class BankTransfer < ::Stripe::RequestParams
          class Ach < ::Stripe::RequestParams
            # ACH Company ID identifying the authorized originator. Must contain exactly 10 alphanumeric characters.
            attr_accessor :originator_company_id
            # Per-debit limit for originator.
            attr_accessor :transaction_limit

            def initialize(originator_company_id: nil, transaction_limit: nil)
              @originator_company_id = originator_company_id
              @transaction_limit = transaction_limit
            end
          end
          # Display name for the authorized originator, up to 50 characters long.
          attr_accessor :account_holder_name
          # ACH authorization fields to update.
          attr_accessor :ach

          def initialize(account_holder_name: nil, ach: nil)
            @account_holder_name = account_holder_name
            @ach = ach
          end
        end
        # Bank transfer fields to update. Omitted fields remain unchanged.
        attr_accessor :bank_transfer

        def initialize(bank_transfer: nil)
          @bank_transfer = bank_transfer
        end
      end
    end
  end
end
