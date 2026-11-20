# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class SpendingMandateCreateParams < ::Stripe::RequestParams
        class BankTransfer < ::Stripe::RequestParams
          class Ach < ::Stripe::RequestParams
            # ACH Company ID identifying the authorized originator. Must contain exactly 10 alphanumeric characters.
            attr_accessor :originator_company_id
            # Positive per-debit limit in USD.
            attr_accessor :transaction_limit

            def initialize(originator_company_id: nil, transaction_limit: nil)
              @originator_company_id = originator_company_id
              @transaction_limit = transaction_limit
            end
          end
          # Display name for the authorized originator.
          attr_accessor :account_holder_name
          # ACH authorization details. Required when `network` is `ach`.
          attr_accessor :ach
          # An active US Financial Address belonging to the Financial Account.
          attr_accessor :financial_address
          # The bank transfer network. Only ACH mandates can be created.
          attr_accessor :network

          def initialize(account_holder_name: nil, ach: nil, financial_address: nil, network: nil)
            @account_holder_name = account_holder_name
            @ach = ach
            @financial_address = financial_address
            @network = network
          end
        end
        # Bank transfer authorization details. Required when `type` is `bank_transfer`.
        attr_accessor :bank_transfer
        # The Financial Account to authorize debits against.
        attr_accessor :financial_account
        # The mandate type.
        attr_accessor :type

        def initialize(bank_transfer: nil, financial_account: nil, type: nil)
          @bank_transfer = bank_transfer
          @financial_account = financial_account
          @type = type
        end
      end
    end
  end
end
