require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class BitcoinReceiverTest < Test::Unit::TestCase
    should "be listable" do
      receivers = Stripe::BitcoinReceiver.list
      assert_requested :get, "#{Stripe.api_base}/v1/bitcoin/receivers"
      assert receivers.data.kind_of?(Array)
      assert receivers.first.kind_of?(Stripe::BitcoinReceiver)
    end

    should "be retrievable" do
      receiver = Stripe::BitcoinReceiver.retrieve("btcrcv_123")
      assert_requested :get,
        "#{Stripe.api_base}/v1/bitcoin/receivers/btcrcv_123"
      assert receiver.kind_of?(Stripe::BitcoinReceiver)
    end

    should "be creatable" do
      receiver = Stripe::BitcoinReceiver.create(amount: 100, currency: "USD")
      assert_requested :post, "#{Stripe.api_base}/v1/bitcoin/receivers"
      assert receiver.kind_of?(Stripe::BitcoinReceiver)
    end

    should "be saveable" do
      receiver = Stripe::BitcoinReceiver.retrieve("btcrcv_123")
      receiver.metadata['key'] = 'value'
      receiver.save
      assert_requested :post,
        "#{Stripe.api_base}/v1/bitcoin/receivers/#{receiver.id}"
    end

    should "be updateable" do
      receiver = Stripe::BitcoinReceiver.update("btcrcv_123", metadata: { key: 'value' })
      assert_requested :post,
        "#{Stripe.api_base}/v1/bitcoin/receivers/btcrcv_123"
      assert receiver.kind_of?(Stripe::BitcoinReceiver)
    end

    should "be deletable" do
      receiver = Stripe::BitcoinReceiver.retrieve("btcrcv_123")
      receiver = receiver.delete
      assert_requested :delete,
        "#{Stripe.api_base}/v1/bitcoin/receivers/#{receiver.id}"
      assert receiver.kind_of?(Stripe::BitcoinReceiver)
    end

    context "#resource_url" do
      should "return a customer URL" do
        receiver = Stripe::BitcoinReceiver.construct_from(
          customer: "cus_123",
          id: "btcrcv_123",
        )
        assert_equal "/v1/customers/cus_123/sources/btcrcv_123",
          receiver.resource_url
      end

      should "return an absolute URL" do
        receiver = Stripe::BitcoinReceiver.construct_from(
          id: "btcrcv_123",
        )
        assert_equal "/v1/bitcoin/receivers/btcrcv_123",
          receiver.resource_url
      end
    end
  end
end
