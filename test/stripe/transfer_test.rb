require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class TransferTest < Test::Unit::TestCase
    FIXTURE = API_FIXTURES.fetch(:transfer)

    should "be listable" do
      transfers = Stripe::Transfer.list
      assert_requested :get, "#{Stripe.api_base}/v1/transfers"
      assert transfers.data.kind_of?(Array)
      assert transfers.data[0].kind_of?(Stripe::Transfer)
    end

    should "be retrievable" do
      transfer = Stripe::Transfer.retrieve(FIXTURE[:id])
      assert_requested :get, "#{Stripe.api_base}/v1/transfers/#{FIXTURE[:id]}"
      assert transfer.kind_of?(Stripe::Transfer)
    end

    should "be creatable" do
      transfer = Stripe::Transfer.create(
        amount: 100,
        currency: "USD",
        destination: API_FIXTURES.fetch(:account)[:id],
      )
      assert_requested :post, "#{Stripe.api_base}/v1/transfers"
      assert transfer.kind_of?(Stripe::Transfer)
    end

    should "be saveable" do
      transfer = Stripe::Transfer.retrieve(FIXTURE[:id])
      transfer.metadata['key'] = 'value'
      transfer.save
      assert_requested :post, "#{Stripe.api_base}/v1/transfers/#{FIXTURE[:id]}"
    end

    should "be updateable" do
      transfer = Stripe::Transfer.update(FIXTURE[:id], metadata: {foo: 'bar'})
      assert_requested :post, "#{Stripe.api_base}/v1/transfers/#{FIXTURE[:id]}"
      assert transfer.kind_of?(Stripe::Transfer)
    end

    context "#cancel" do
      should "cancel a transfer" do
        transfer = Stripe::Transfer.retrieve(FIXTURE[:id])
        transfer = transfer.cancel
        assert transfer.kind_of?(Stripe::Transfer)
      end
    end
  end
end
