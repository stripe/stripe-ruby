require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class ApplicationFeeTest < Test::Unit::TestCase
    should "application fees should be listable" do
      @mock.expects(:get).once.returns(test_response(test_application_fee_array))
      fees = Stripe::ApplicationFee.all
      assert fees.data.kind_of? Array
      fees.each do |fee|
        assert fee.kind_of?(Stripe::ApplicationFee)
      end
    end

    should "application fees should be refundable" do
      @mock.expects(:get).never
      @mock.expects(:post).once.returns(test_response({:id => "fee_test_fee", :refunded => true}))
      fee = Stripe::ApplicationFee.new("test_application_fee")
      fee.refund
      assert fee.refunded
    end
  end
end
