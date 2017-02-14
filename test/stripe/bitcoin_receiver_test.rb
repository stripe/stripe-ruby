require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class BitcoinReceiverTest < Test::Unit::TestCase
    FIXTURE = API_FIXTURES.fetch(:bitcoin_receiver)

    should "be listable" do
      receivers = Stripe::BitcoinReceiver.list
      assert_requested :get, "#{Stripe.api_base}/v1/bitcoin/receivers"
      assert receivers.data.kind_of?(Array)
      assert receivers.first.kind_of?(Stripe::BitcoinReceiver)
    end

    should "be retrievable" do
      receiver = Stripe::BitcoinReceiver.retrieve(FIXTURE[:id])
      assert_requested :get,
        "#{Stripe.api_base}/v1/bitcoin/receivers/#{FIXTURE[:id]}"
      assert receiver.kind_of?(Stripe::BitcoinReceiver)
    end

    should "be creatable" do
      receiver = Stripe::BitcoinReceiver.create(amount: 100, currency: "USD")
      assert_requested :post, "#{Stripe.api_base}/v1/bitcoin/receivers"
      assert receiver.kind_of?(Stripe::BitcoinReceiver)
    end

    should "be saveable" do
      receiver = Stripe::BitcoinReceiver.retrieve(FIXTURE[:id])
      receiver.metadata['key'] = 'value'
      receiver.save
      assert_requested :post,
        "#{Stripe.api_base}/v1/bitcoin/receivers/#{FIXTURE[:id]}"
    end

    should "be updateable" do
      receiver = Stripe::BitcoinReceiver.update(FIXTURE[:id], metadata: { key: 'value' })
      assert_requested :post,
        "#{Stripe.api_base}/v1/bitcoin/receivers/#{FIXTURE[:id]}"
      assert receiver.kind_of?(Stripe::BitcoinReceiver)
    end

    should "be deletable" do
      receiver = Stripe::BitcoinReceiver.retrieve(FIXTURE[:id])
      receiver = receiver.delete
      assert_requested :delete,
        "#{Stripe.api_base}/v1/bitcoin/receivers/#{FIXTURE[:id]}"
      assert receiver.kind_of?(Stripe::BitcoinReceiver)
    end

    context "#resource_url" do
      should "return a customer URL" do
        customer_id = API_FIXTURES.fetch(:customer)[:id]
        receiver = Stripe::BitcoinReceiver.construct_from(
          customer: customer_id,
          id: FIXTURE[:id]
        )
        assert_equal "/v1/customers/#{customer_id}/sources/#{FIXTURE[:id]}",
          receiver.resource_url
      end

      should "return an absolute URL" do
        receiver = Stripe::BitcoinReceiver.construct_from(
          id: FIXTURE[:id]
        )
        assert_equal "/v1/bitcoin/receivers/#{FIXTURE[:id]}",
          receiver.resource_url
      end
    end
  end
end
