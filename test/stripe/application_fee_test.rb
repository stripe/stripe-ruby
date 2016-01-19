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
      fee = Stripe::ApplicationFee.construct_from(make_application_fee)

      @mock.expects(:post).once.
        with("#{Stripe.api_base}/v1/application_fees/#{fee.id}/refunds", nil, '').
        returns(make_response(make_application_fee_refund))

      refund = fee.refunds.create
      assert refund.is_a?(Stripe::ApplicationFeeRefund)
    end
  end
end
