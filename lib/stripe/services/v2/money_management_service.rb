# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    class MoneyManagementService < StripeService
      attr_reader :adjustments, :currency_conversions, :financial_accounts, :financial_addresses, :inbound_transfers, :outbound_payments, :outbound_payment_quotes, :outbound_setup_intents, :outbound_transfers, :payout_methods, :payout_methods_bank_account_spec, :received_credits, :received_debits, :recipient_verifications, :transactions, :transaction_entries

      def initialize(requestor)
        super
        @adjustments = Stripe::V2::MoneyManagement::AdjustmentService.new(@requestor)
        @currency_conversions = Stripe::V2::MoneyManagement::CurrencyConversionService
                                .new(@requestor)
        @financial_accounts = Stripe::V2::MoneyManagement::FinancialAccountService.new(@requestor)
        @financial_addresses = Stripe::V2::MoneyManagement::FinancialAddressService.new(@requestor)
        @inbound_transfers = Stripe::V2::MoneyManagement::InboundTransferService.new(@requestor)
        @outbound_payments = Stripe::V2::MoneyManagement::OutboundPaymentService.new(@requestor)
        @outbound_payment_quotes = Stripe::V2::MoneyManagement::OutboundPaymentQuoteService
                                   .new(@requestor)
        @outbound_setup_intents = Stripe::V2::MoneyManagement::OutboundSetupIntentService
                                  .new(@requestor)
        @outbound_transfers = Stripe::V2::MoneyManagement::OutboundTransferService.new(@requestor)
        @payout_methods = Stripe::V2::MoneyManagement::PayoutMethodService.new(@requestor)
        @payout_methods_bank_account_spec = Stripe::V2::MoneyManagement::PayoutMethodsBankAccountSpecService
                                            .new(@requestor)
        @received_credits = Stripe::V2::MoneyManagement::ReceivedCreditService.new(@requestor)
        @received_debits = Stripe::V2::MoneyManagement::ReceivedDebitService.new(@requestor)
        @recipient_verifications = Stripe::V2::MoneyManagement::RecipientVerificationService
                                   .new(@requestor)
        @transactions = Stripe::V2::MoneyManagement::TransactionService.new(@requestor)
        @transaction_entries = Stripe::V2::MoneyManagement::TransactionEntryService.new(@requestor)
      end
    end
  end
end
