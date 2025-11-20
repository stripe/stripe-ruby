# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    class MoneyManagementService < StripeService
      attr_reader :adjustments
      attr_reader :currency_conversions
      attr_reader :financial_accounts
      attr_reader :financial_addresses
      attr_reader :inbound_transfers
      attr_reader :outbound_payments
      attr_reader :outbound_payment_quotes
      attr_reader :outbound_setup_intents
      attr_reader :outbound_transfers
      attr_reader :payout_methods
      attr_reader :payout_methods_bank_account_spec
      attr_reader :received_credits
      attr_reader :received_debits
      attr_reader :recipient_verifications
      attr_reader :transactions
      attr_reader :transaction_entries
    end
  end
end