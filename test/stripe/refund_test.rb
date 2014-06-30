require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class RefundTest < Test::Unit::TestCase
    should "refunds should be listable" do
      @mock.expects(:get).once.returns(test_response(test_charge))

      charge = Stripe::Charge.retrieve('test_charge')

      assert charge.refunds.first.kind_of?(Stripe::Refund)
    end

    should "refunds should be refreshable" do
      @mock.expects(:get).twice.returns(test_response(test_charge), test_response(test_refund(:id => 'refreshed_refund')))

      charge = Stripe::Charge.retrieve('test_charge')
      refund = charge.refunds.first
      refund.refresh

      assert_equal 'refreshed_refund', refund.id
    end

    should "refunds should be updateable" do
      @mock.expects(:get).once.returns(test_response(test_charge))
      @mock.expects(:post).once.returns(test_response(test_refund(:metadata => {'key' => 'value'})))

      charge = Stripe::Charge.retrieve('test_charge')
      refund = charge.refunds.first

      assert_equal nil, refund.metadata['key']

      refund.metadata['key'] = 'valu'
      refund.save

      assert_equal 'value', refund.metadata['key']
    end

    should "create should return a new refund" do
      @mock.expects(:get).once.returns(test_response(test_charge))
      @mock.expects(:post).once.returns(test_response(test_refund(:id => 'test_new_refund')))

      charge = Stripe::Charge.retrieve('test_charge')
      refund = charge.refunds.create(:amount => 20)
      assert_equal 'test_new_refund', refund.id
    end
  end
end
