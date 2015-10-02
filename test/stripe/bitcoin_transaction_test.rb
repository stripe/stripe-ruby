require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class BitcoinTransactionTest < Test::Unit::TestCase
    TEST_ID = "btctxn_test_transaction".freeze

    should "retrieve should retrieve bitcoin receiver" do
      @mock.expects(:get).
        with("#{Stripe.api_base}/v1/bitcoin/transactions/#{TEST_ID}", nil, nil).
        once.
        returns(make_response(make_bitcoin_transaction))
      receiver = Stripe::BitcoinTransaction.retrieve(TEST_ID)
      assert_equal TEST_ID, receiver.id
    end

    should "all should list bitcoin transactions" do
      @mock.expects(:get).
        with("#{Stripe.api_base}/v1/bitcoin/transactions", nil, nil).
        once.
        returns(make_response(make_bitcoin_transaction_array))
      transactions = Stripe::BitcoinTransaction.list
      assert_equal 3, transactions.data.length
      assert transactions.data.kind_of? Array
      transactions.each do |transaction|
        assert transaction.kind_of?(Stripe::BitcoinTransaction)
      end
    end
  end
end
