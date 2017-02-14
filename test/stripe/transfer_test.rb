require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class TransferTest < Test::Unit::TestCase
    should "retrieve should retrieve transfer" do
      stub_request(:get, "#{Stripe.api_base}/v1/transfers/tr_test_transfer").
        to_return(body: JSON.generate(make_transfer))
      transfer = Stripe::Transfer.retrieve('tr_test_transfer')
      assert_equal 'tr_test_transfer', transfer.id
    end

    should "create should create a transfer" do
      stub_request(:post, "#{Stripe.api_base}/v1/transfers").
        to_return(body: JSON.generate(make_transfer))
      transfer = Stripe::Transfer.create
      assert_equal "tr_test_transfer", transfer.id
    end

    should "create should update a transfer" do
      stub_request(:post, "#{Stripe.api_base}/v1/transfers/test_transfer").
        with(body: { metadata: { foo: "bar" } }).
        to_return(body: JSON.generate(make_transfer))
      Stripe::Transfer.update("test_transfer", metadata: {foo: 'bar'})
    end

    should "cancel should cancel a transfer" do
      stub_request(:get, "#{Stripe.api_base}/v1/transfers/tr_test_transfer").
        to_return(body: JSON.generate(make_transfer))
      transfer = Stripe::Transfer.retrieve('tr_test_transfer')

      stub_request(:post, "#{Stripe.api_base}/v1/transfers/tr_test_transfer/cancel").
        to_return(body: JSON.generate(make_canceled_transfer))
      transfer.cancel
    end
  end
end
