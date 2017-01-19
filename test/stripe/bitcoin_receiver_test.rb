require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class BitcoinReceiverTest < Test::Unit::TestCase
    should "retrieve should retrieve bitcoin receiver" do
      stub_request(:get, "#{Stripe.api_base}/v1/bitcoin/receivers/btcrcv_test_receiver").
        to_return(body: make_response(make_bitcoin_receiver))
      receiver = Stripe::BitcoinReceiver.retrieve('btcrcv_test_receiver')
      assert_equal 'btcrcv_test_receiver', receiver.id
    end

    should "create should create a bitcoin receiver" do
      stub_request(:post, "#{Stripe.api_base}/v1/bitcoin/receivers").
        to_return(body: make_response(make_bitcoin_receiver))
      receiver = Stripe::BitcoinReceiver.create
      assert_equal "btcrcv_test_receiver", receiver.id
    end

    should "all should list bitcoin receivers" do
      stub_request(:get, "#{Stripe.api_base}/v1/bitcoin/receivers").
        to_return(body: make_response(make_bitcoin_receiver_array))
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

    should "update should update a bitcoin receiver" do
      receiver = Stripe::BitcoinReceiver.construct_from(make_bitcoin_receiver)

      stub_request(:get, "#{Stripe.api_base}/v1/bitcoin/receivers/#{receiver.id}").
        to_return(body: make_response(make_bitcoin_receiver))
      receiver.refresh

      stub_request(:post, "#{Stripe.api_base}/v1/bitcoin/receivers/#{receiver.id}").
        with(body: { description: "details" }).
        to_return(body: make_response(make_bitcoin_receiver))
      receiver.description = "details"
      receiver.save
    end

    should "delete a bitcoin receiver with no customer through top-level API" do
      receiver = Stripe::BitcoinReceiver.construct_from(make_bitcoin_receiver)
      stub_request(:delete, "#{Stripe.api_base}/v1/bitcoin/receivers/#{receiver.id}").
        to_return(body: make_response({:deleted => true, :id => "btcrcv_test_receiver"}))
      receiver.delete
      assert(receiver.deleted)
    end

    should "delete a bitcoin receiver with a customer through customer's subresource API" do
      receiver = Stripe::BitcoinReceiver.construct_from(make_bitcoin_receiver(:customer => 'customer_foo'))
      stub_request(:delete, "#{Stripe.api_base}/v1/customers/customer_foo/sources/#{receiver.id}").
        to_return(body: make_response({:deleted => true, :id => "btcrcv_test_receiver"}))
      receiver.delete
      assert(receiver.deleted)
    end
  end
end
