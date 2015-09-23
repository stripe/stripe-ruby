require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class BitcoinTransactionTest < Test::Unit::TestCase
    should "retrieve should retrieve bitcoin receiver" do
      @mock.expects(:get).once.returns(make_response(make_bitcoin_transaction))
      receiver = Stripe::BitcoinTransaction.retrieve('bttxn_test_transaction')
      assert_equal 'btctxn_test_transaction', receiver.id
    end

    should "all should list bitcoin transactions" do
      @mock.expects(:get).once.returns(make_response(make_bitcoin_transaction_array))
      transactions = Stripe::BitcoinTransaction.all
      assert_equal 3, transactions.data.length
      assert transactions.data.kind_of? Array
      transactions.each do |transaction|
        assert transaction.kind_of?(Stripe::BitcoinTransaction)
      end
    end
  end
end
