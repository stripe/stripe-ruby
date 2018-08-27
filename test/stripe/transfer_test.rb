# frozen_string_literal: true

require ::File.expand_path("../../test_helper", __FILE__)

module Stripe
  class TransferTest < Test::Unit::TestCase
    should "be listable" do
      transfers = Stripe::Transfer.list
      assert_requested :get, "#{Stripe.api_base}/v1/transfers"
      assert transfers.data.is_a?(Array)
      assert transfers.data[0].is_a?(Stripe::Transfer)
    end

    should "be retrievable" do
      transfer = Stripe::Transfer.retrieve("tr_123")
      assert_requested :get, "#{Stripe.api_base}/v1/transfers/tr_123"
      assert transfer.is_a?(Stripe::Transfer)
    end

    should "be creatable" do
      transfer = Stripe::Transfer.create(
        amount: 100,
        currency: "USD",
        destination: "acct_123"
      )
      assert_requested :post, "#{Stripe.api_base}/v1/transfers"
      assert transfer.is_a?(Stripe::Transfer)
    end

    should "be saveable" do
      transfer = Stripe::Transfer.retrieve("tr_123")
      transfer.metadata["key"] = "value"
      transfer.save
      assert_requested :post, "#{Stripe.api_base}/v1/transfers/#{transfer.id}"
    end

    should "be updateable" do
      transfer = Stripe::Transfer.update("tr_123", metadata: { foo: "bar" })
      assert_requested :post, "#{Stripe.api_base}/v1/transfers/tr_123"
      assert transfer.is_a?(Stripe::Transfer)
    end
  end
end
