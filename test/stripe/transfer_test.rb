require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class TransferTest < Test::Unit::TestCase
    should "retrieve should retrieve transfer" do
      @mock.expects(:get).once.returns(make_response(make_transfer))
      transfer = Stripe::Transfer.retrieve('tr_make_transfer')
      assert_equal 'tr_make_transfer', transfer.id
    end

    should "create should create a transfer" do
      @mock.expects(:post).once.returns(make_response(make_transfer))
      transfer = Stripe::Transfer.create
      assert_equal "tr_make_transfer", transfer.id
    end

    should "cancel should cancel a transfer" do
      @mock.expects(:get).once.returns(make_response(make_transfer))
      transfer = Stripe::Transfer.retrieve('tr_make_transfer')

      @mock.expects(:post).once.with('https://api.stripe.com/v1/transfers/tr_make_transfer/cancel', nil, '').returns(make_response(make_canceled_transfer))
      transfer.cancel
    end
  end
end
