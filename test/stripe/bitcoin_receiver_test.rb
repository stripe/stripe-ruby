require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class BitcoinReceiverTest < Test::Unit::TestCase
    should "retrieve should retrieve bitcoin receiver" do
      @mock.expects(:get).once.returns(make_response(make_bitcoin_receiver))
      receiver = Stripe::BitcoinReceiver.retrieve('btcrcv_test_receiver')
      assert_equal 'btcrcv_test_receiver', receiver.id
    end

    should "create should create a bitcoin receiver" do
      @mock.expects(:post).once.returns(make_response(make_bitcoin_receiver))
      receiver = Stripe::BitcoinReceiver.create
      assert_equal "btcrcv_test_receiver", receiver.id
    end

    should "all should list bitcoin receivers" do
      @mock.expects(:get).once.returns(make_response(make_bitcoin_receiver_array))
      receivers = Stripe::BitcoinReceiver.list
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
      @mock.expects(:get).with("#{Stripe.api_base}/v1/bitcoin/receivers/btcrcv_test_receiver", nil, nil).once.returns(make_response(make_bitcoin_receiver))
      receiver = Stripe::BitcoinReceiver.retrieve('btcrcv_test_receiver')
      @mock.expects(:get).with("#{Stripe.api_base}/v1/bitcoin/receivers/btcrcv_test_receiver/transactions", nil, nil).once.returns(make_response(make_bitcoin_transaction_array))
      transactions = receiver.transactions.list
      assert_equal(3, transactions.data.length)
    end

    should "update should update a bitcoin receiver" do
      @mock.expects(:get).once.returns(make_response(make_bitcoin_receiver))
      @mock.expects(:post).with("#{Stripe.api_base}/v1/bitcoin/receivers/btcrcv_test_receiver", nil, "description=details").once.returns(make_response(make_bitcoin_receiver))
      receiver = Stripe::BitcoinReceiver.construct_from(make_bitcoin_receiver)
      receiver.refresh
      receiver.description = "details"
      receiver.save
    end

    should "delete a bitcoin receiver with no customer through top-level API" do
      @mock.expects(:delete).with("#{Stripe.api_base}/v1/bitcoin/receivers/btcrcv_test_receiver", nil, nil).once.returns(make_response({:deleted => true, :id => "btcrcv_test_receiver"}))
      receiver = Stripe::BitcoinReceiver.construct_from(make_bitcoin_receiver)
      receiver.delete
      assert(receiver.deleted)
    end

    should "delete a bitcoin receiver with a customer through customer's subresource API" do
      @mock.expects(:delete).with("#{Stripe.api_base}/v1/customers/customer_foo/sources/btcrcv_test_receiver", nil, nil).once.returns(make_response({:deleted => true, :id => "btcrcv_test_receiver"}))
      receiver = Stripe::BitcoinReceiver.construct_from(make_bitcoin_receiver(:customer => 'customer_foo'))
      receiver.delete
      assert(receiver.deleted)
    end
  end
end
