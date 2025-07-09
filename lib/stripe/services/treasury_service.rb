# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class TreasuryService < StripeService
    attr_reader :credit_reversals
    attr_reader :debit_reversals
    attr_reader :financial_accounts
    attr_reader :inbound_transfers
    attr_reader :outbound_payments
    attr_reader :outbound_transfers
    attr_reader :received_credits
    attr_reader :received_debits
    attr_reader :transactions
    attr_reader :transaction_entries
    def initialize(requestor)
      super(requestor)
      @credit_reversals = Stripe::Treasury::CreditReversalService.new(@requestor)
      @debit_reversals = Stripe::Treasury::DebitReversalService.new(@requestor)
      @financial_accounts = Stripe::Treasury::FinancialAccountService.new(@requestor)
      @inbound_transfers = Stripe::Treasury::InboundTransferService.new(@requestor)
      @outbound_payments = Stripe::Treasury::OutboundPaymentService.new(@requestor)
      @outbound_transfers = Stripe::Treasury::OutboundTransferService.new(@requestor)
      @received_credits = Stripe::Treasury::ReceivedCreditService.new(@requestor)
      @received_debits = Stripe::Treasury::ReceivedDebitService.new(@requestor)
      @transactions = Stripe::Treasury::TransactionService.new(@requestor)
      @transaction_entries = Stripe::Treasury::TransactionEntryService.new(@requestor)
    end
  end
end