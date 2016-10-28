require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class BitcoinReceiverTest < Test::Unit::TestCase
    include WithoutLegacyStubs

    CUSTOMER_ID = "cus_1234"
    RECEIVER_ID = "btcrcv_1234"

    should "be creatable" do
      receiver = Stripe::BitcoinReceiver.create(
        :amount => 1234,
        :currency => "USD"
      )
      assert_kind_of Stripe::BitcoinReceiver, receiver
      assert_requested :post, "#{Stripe.api_url}/v1/bitcoin/receivers"
    end

    should "be listable" do
      receivers = Stripe::BitcoinReceiver.list
      assert_kind_of Stripe::BitcoinReceiver, receivers.first
      assert_requested :get, "#{Stripe.api_url}/v1/bitcoin/receivers"
    end

    should "be retrievable" do
      receiver = Stripe::BitcoinReceiver.retrieve("btcrcv_1234")
      assert_kind_of Stripe::BitcoinReceiver, receiver
      assert_requested :get, "#{Stripe.api_url}/v1/bitcoin/receivers/btcrcv_1234"
    end

    should "be updatable" do
      # without customer
      receiver = Stripe::BitcoinReceiver.construct_from({
        :id => RECEIVER_ID,
        :customer => nil,
      })
      receiver.save
      assert_requested :post, "#{Stripe.api_url}/v1/bitcoin/receivers/#{RECEIVER_ID}"

      # with customer
      receiver = Stripe::BitcoinReceiver.construct_from({
        :id => RECEIVER_ID,
        :customer => CUSTOMER_ID,
      })
      receiver.save
      assert_requested :post, "#{Stripe.api_url}/v1/customers/#{CUSTOMER_ID}/sources/#{RECEIVER_ID}"
    end

    should "be deletable" do
      # without customer
      receiver = Stripe::BitcoinReceiver.construct_from({
        :id => RECEIVER_ID,
        :customer => nil,
      })
      receiver = receiver.delete
      assert_kind_of Stripe::BitcoinReceiver, receiver
      assert_requested :delete, "#{Stripe.api_url}/v1/bitcoin/receivers/#{RECEIVER_ID}"

      # with customer
      receiver = Stripe::BitcoinReceiver.construct_from({
        :id => RECEIVER_ID,
        :customer => CUSTOMER_ID,
      })
      receiver = receiver.delete
      assert_kind_of Stripe::BitcoinReceiver, receiver
      assert_requested :delete, "#{Stripe.api_url}/v1/customers/#{CUSTOMER_ID}/sources/#{RECEIVER_ID}"
    end
  end
end
