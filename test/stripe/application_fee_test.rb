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

      # first a post to create a refund
      @mock.expects(:post).once.
        with("#{Stripe.api_base}/v1/application_fees/#{fee.id}/refunds", nil, '').
        returns(make_response(make_application_fee_refund))

      # then a get to refresh the current object
      @mock.expects(:get).once.
        with("#{Stripe.api_base}/v1/application_fees/#{fee.id}", nil, nil).
        returns(make_response({:id => "fee_test_fee", :refunded => true}))

      fee.refund
      assert fee.refunded
    end
  end
end
