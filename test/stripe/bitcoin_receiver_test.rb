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
      end
    end
  end
end
