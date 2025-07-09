# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    class MoneyManagementService < StripeService
      attr_reader :adjustments
      attr_reader :financial_accounts
      attr_reader :financial_addresses
      attr_reader :inbound_transfers
      attr_reader :outbound_payment_quotes
      attr_reader :outbound_payments
      attr_reader :outbound_setup_intents
      attr_reader :outbound_transfers
      attr_reader :payout_methods
      attr_reader :payout_methods_bank_account_spec
      attr_reader :received_credits
      attr_reader :received_debits
      attr_reader :transaction_entries
      attr_reader :transactions
      def initialize(requestor)
        super(requestor)
        @adjustments = Stripe::V2::MoneyManagement::AdjustmentService.new(@requestor)
        @financial_accounts = Stripe::V2::MoneyManagement::FinancialAccountService.new(@requestor)
        @financial_addresses = Stripe::V2::MoneyManagement::FinancialAddressService.new(@requestor)
        @inbound_transfers = Stripe::V2::MoneyManagement::InboundTransferService.new(@requestor)
        @outbound_payment_quotes = Stripe::V2::MoneyManagement::OutboundPaymentQuoteService
          .new(@requestor)
        @outbound_payments = Stripe::V2::MoneyManagement::OutboundPaymentService.new(@requestor)
        @outbound_setup_intents = Stripe::V2::MoneyManagement::OutboundSetupIntentService
          .new(@requestor)
        @outbound_transfers = Stripe::V2::MoneyManagement::OutboundTransferService.new(@requestor)
        @payout_methods = Stripe::V2::MoneyManagement::PayoutMethodService.new(@requestor)
        @payout_methods_bank_account_spec = Stripe::V2::MoneyManagement::PayoutMethodsBankAccountSpecService
          .new(@requestor)
        @received_credits = Stripe::V2::MoneyManagement::ReceivedCreditService.new(@requestor)
        @received_debits = Stripe::V2::MoneyManagement::ReceivedDebitService.new(@requestor)
        @transaction_entries = Stripe::V2::MoneyManagement::TransactionEntryService.new(@requestor)
        @transactions = Stripe::V2::MoneyManagement::TransactionService.new(@requestor)
      end
    end
  end
end