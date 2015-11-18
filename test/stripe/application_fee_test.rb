require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class ApplicationFeeTest < Test::Unit::TestCase
    should "application fees should be listable" do
      @mock.expects(:get).once.returns(make_response(make_application_fee_array))
      fees = Stripe::ApplicationFee.list
      assert fees.data.kind_of? Array
      fees.each do |fee|
        assert fee.kind_of?(Stripe::ApplicationFee)
      end
    end

    should "application fees should be refundable" do
      @mock.expects(:get).never
      @mock.expects(:post).once.
        with("#{Stripe.api_base}/v1/application_fees/test_application_fee/refunds", nil, '').
        returns(make_response(make_application_fee_refund))
      fee = Stripe::ApplicationFee.new("test_application_fee")
      refund = fee.refund
      assert refund.kind_of?(Stripe::ApplicationFeeRefund)
    end
  end
end
