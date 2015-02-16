require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class ReversalTest < Test::Unit::TestCase
    should "reversals should be listable" do
      @mock.expects(:get).once.returns(test_response(test_transfer))

      transfer = Stripe::Transfer.retrieve('test_transfer')

      assert transfer.reversals.first.kind_of?(Stripe::Reversal)
    end

    should "reversals should be refreshable" do
      @mock.expects(:get).twice.returns(test_response(test_transfer), test_response(test_reversal(:id => 'refreshed_reversal')))

      transfer = Stripe::Transfer.retrieve('test_transfer')
      reversal = transfer.reversals.first
      reversal.refresh

      assert_equal 'refreshed_reversal', reversal.id
    end

    should "reversals should be updateable" do
      @mock.expects(:get).once.returns(test_response(test_transfer))
      @mock.expects(:post).once.returns(test_response(test_reversal(:metadata => {'key' => 'value'})))

      transfer = Stripe::Transfer.retrieve('test_transfer')
      reversal = transfer.reversals.first

      assert_equal nil, reversal.metadata['key']

      reversal.metadata['key'] = 'value'
      reversal.save

      assert_equal 'value', reversal.metadata['key']
    end

    should "create should return a new reversal" do
      @mock.expects(:get).once.returns(test_response(test_transfer))
      @mock.expects(:post).once.returns(test_response(test_reversal(:id => 'test_new_reversal')))

      transfer = Stripe::Transfer.retrieve('test_transfer')
      reversals = transfer.reversals.create(:amount => 20)
      assert_equal 'test_new_reversal', reversals.id
    end
  end
end
