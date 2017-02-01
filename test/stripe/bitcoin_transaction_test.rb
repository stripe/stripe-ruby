require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class BitcoinTransactionTest < Test::Unit::TestCase
    FIXTURE = API_FIXTURES.fetch(:bitcoin_transaction)

    should "be listable" do
      transactions = Stripe::BitcoinTransaction.list
      assert_requested :get, "#{Stripe.api_base}/v1/bitcoin/transactions"
      assert transactions.data.kind_of?(Array)
      assert transactions.first.kind_of?(Stripe::BitcoinTransaction)
    end

    should "be retrievable" do
      transaction = Stripe::BitcoinTransaction.retrieve(FIXTURE[:id])
      assert_requested :get,
        "#{Stripe.api_base}/v1/bitcoin/transactions/#{FIXTURE[:id]}"
      assert transaction.kind_of?(Stripe::BitcoinTransaction)
    end
  end
end
