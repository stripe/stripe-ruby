require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class TransferTest < Test::Unit::TestCase
    should "retrieve should retrieve transfer" do
      @mock.expects(:get).once.returns(make_response(make_transfer))
      transfer = Stripe::Transfer.retrieve('tr_test_transfer')
      assert_equal 'tr_test_transfer', transfer.id
    end

    should "create should create a transfer" do
      @mock.expects(:post).once.returns(make_response(make_transfer))
      transfer = Stripe::Transfer.create
      assert_equal "tr_test_transfer", transfer.id
    end

    should "create should update a transfer" do
      @mock.expects(:post).once.
        with("#{Stripe.api_base}/v1/transfers/test_transfer", nil, "metadata[foo]=bar").
        returns(make_response(make_transfer(metadata: {foo: 'bar'})))
      transfer = Stripe::Transfer.update("test_transfer", metadata: {foo: 'bar'})
      assert_equal "bar", transfer.metadata['foo']
    end

    should "cancel should cancel a transfer" do
      @mock.expects(:get).once.returns(make_response(make_transfer))
      transfer = Stripe::Transfer.retrieve('tr_test_transfer')

      @mock.expects(:post).once.with('https://api.stripe.com/v1/transfers/tr_test_transfer/cancel', nil, '').returns(make_response(make_canceled_transfer))
      transfer.cancel
    end
  end
end
