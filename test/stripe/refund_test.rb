require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class RefundTest < Test::Unit::TestCase
    should "refunds should be listable" do
      @mock.expects(:get).
        with("#{Stripe.api_base}/v1/refunds", nil, nil).
        once.returns(make_response(make_refund_array))

      refunds = Stripe::Refund.list

      assert refunds.first.kind_of?(Stripe::Refund)
    end

    should "refunds should be refreshable" do
      @mock.expects(:get).
        with("#{Stripe.api_base}/v1/refunds/test_refund", nil, nil).
        twice.returns(make_response(make_refund(:id => 'test_refund')),
                       make_response(make_refund(:id => 'refreshed_refund')))

      refund = Stripe::Refund.retrieve('test_refund')
      refund.refresh

      assert_equal 'refreshed_refund', refund.id
    end

    should "refunds should be saveable" do
      @mock.expects(:get).
        with("#{Stripe.api_base}/v1/refunds/get_refund", nil, nil).
        once.returns(make_response(make_refund(:id => 'save_refund')))

      @mock.expects(:post).
        with("#{Stripe.api_base}/v1/refunds/save_refund", nil, 'metadata[key]=value').
        once.returns(make_response(make_refund(:metadata => {'key' => 'value'})))

      refund = Stripe::Refund.retrieve('get_refund')

      assert_equal nil, refund.metadata['key']

      refund.metadata['key'] = 'value'
      refund.save

      assert_equal 'value', refund.metadata['key']
    end

    should "refunds should be updateable" do
      @mock.expects(:post).
        with("#{Stripe.api_base}/v1/refunds/update_refund", nil, 'metadata[key]=value').
        once.returns(make_response(make_refund(:metadata => {'key' => 'value'})))

      refund = Stripe::Refund.update('update_refund', metadata: {key: 'value'})
      assert_equal 'value', refund.metadata['key']
    end

    should "create should return a new refund" do
      @mock.expects(:post).
        with("#{Stripe.api_base}/v1/refunds", nil, 'charge=test_charge').
        once.returns(make_response(make_refund(:id => 'test_new_refund')))

      refund = Stripe::Refund.create(:charge => 'test_charge')
      assert_equal 'test_new_refund', refund.id
    end
  end
end
