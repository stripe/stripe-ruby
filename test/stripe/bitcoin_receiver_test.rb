require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class BitcoinReceiverTest < Test::Unit::TestCase
    should "retrieve should retrieve bitcoin receiver" do
      @mock.expects(:get).once.returns(test_response(test_bitcoin_receiver))
      receiver = Stripe::BitcoinReceiver.retrieve('btcrcv_test_receiver')
      assert_equal 'btcrcv_test_receiver', receiver.id
    end

    should "create should create a bitcoin receiver" do
      @mock.expects(:post).once.returns(test_response(test_bitcoin_receiver))
      receiver = Stripe::BitcoinReceiver.create
      assert_equal "btcrcv_test_receiver", receiver.id
    end

    should "all should list bitcoin receivers" do
      @mock.expects(:get).once.returns(test_response(test_bitcoin_receiver_array))
      receivers = Stripe::BitcoinReceiver.all
      assert_equal 3, receivers.data.length
      assert receivers.data.kind_of? Array
      receivers.each do |receiver|
        assert receiver.kind_of?(Stripe::BitcoinReceiver)
        receiver.transactions.data.each do |transaction|
          assert transaction.kind_of?(Stripe::BitcoinTransaction)
        end
      end
    end

    should "maintain bitcoin transaction sublist" do
      @mock.expects(:get).with("#{Stripe.api_base}/v1/bitcoin/receivers/btcrcv_test_receiver", nil, nil).once.returns(test_response(test_bitcoin_receiver))
      receiver = Stripe::BitcoinReceiver.retrieve('btcrcv_test_receiver')
      @mock.expects(:get).with("#{Stripe.api_base}/v1/bitcoin/receivers/btcrcv_test_receiver/transactions", nil, nil).once.returns(test_response(test_bitcoin_transaction_array))
      transactions = receiver.transactions.all
      assert_equal(3, transactions.data.length)
    end
  end
end
