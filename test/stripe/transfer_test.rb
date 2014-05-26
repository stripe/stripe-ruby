require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class TransferTest < Test::Unit::TestCase
    should "retrieve should retrieve transfer" do
      @mock.expects(:get).once.returns(test_response(test_transfer))
      i = Stripe::Transfer.retrieve('tr_test_transfer')
      assert_equal 'tr_test_transfer', i.id
    end

    should "create should create a transfer" do
      @mock.expects(:post).once.returns(test_response(test_transfer))
      i = Stripe::Transfer.create
      assert_equal "tr_test_transfer", i.id
    end

    should "cancel should cancel a transfer" do
      @mock.expects(:get).once.returns(test_response(test_transfer))
      i = Stripe::Transfer.retrieve('tr_test_transfer')

      @mock.expects(:post).once.with('https://api.stripe.com/v1/transfers/tr_test_transfer/cancel', nil, '').returns(test_response(test_canceled_transfer))
      s = i.cancel
    end
  end
end
