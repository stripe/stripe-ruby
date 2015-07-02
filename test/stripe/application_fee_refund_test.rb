require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class ApplicationFeeRefundTest < Test::Unit::TestCase
    should "refunds should be listable" do
      @mock.expects(:get).once.returns(make_response(make_application_fee))

      application_fee = Stripe::ApplicationFee.retrieve('test_application_fee')

      assert application_fee.refunds.first.kind_of?(Stripe::ApplicationFeeRefund)
    end

    should "refunds should be refreshable" do
      @mock.expects(:get).twice.returns(make_response(make_application_fee), make_response(make_application_fee_refund(:id => 'refreshed_refund')))

      application_fee = Stripe::ApplicationFee.retrieve('test_application_fee')
      refund = application_fee.refunds.first
      refund.refresh

      assert_equal 'refreshed_refund', refund.id
    end

    should "refunds should be updateable" do
      @mock.expects(:get).once.returns(make_response(make_application_fee))
      @mock.expects(:post).once.returns(make_response(make_application_fee_refund(:metadata => {'key' => 'value'})))

      application_fee = Stripe::ApplicationFee.retrieve('test_application_fee')
      refund = application_fee.refunds.first

      assert_equal nil, refund.metadata['key']

      refund.metadata['key'] = 'valu'
      refund.save

      assert_equal 'value', refund.metadata['key']
    end

    should "create should return a new refund" do
      @mock.expects(:get).once.returns(make_response(make_application_fee))
      @mock.expects(:post).once.returns(make_response(make_application_fee_refund(:id => 'test_new_refund')))

      application_fee = Stripe::ApplicationFee.retrieve('test_application_fee')
      refund = application_fee.refunds.create(:amount => 20)
      assert_equal 'test_new_refund', refund.id
    end
  end
end
