# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

module EwStripe
  class BalanceTransactionTest < Test::Unit::TestCase
    should "be listable" do
      balance_transactions = EwStripe::BalanceTransaction.list
      assert_requested :get, "#{EwStripe.api_base}/v1/balance_transactions"
      assert balance_transactions.data.is_a?(Array)
      assert balance_transactions.first.is_a?(EwStripe::BalanceTransaction)
    end

    should "be retrievable" do
      balance_transaction = EwStripe::BalanceTransaction.retrieve("txn_123")
      assert_requested :get, "#{EwStripe.api_base}/v1/balance_transactions/txn_123"
      assert balance_transaction.is_a?(EwStripe::BalanceTransaction)
    end
  end
end
