require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class ApplicationFeeTest < Test::Unit::TestCase
    include WithoutLegacyStubs

    should "be listable" do
      fees = Stripe::ApplicationFee.list
      assert_kind_of Stripe::ApplicationFee, fees.first
      assert_requested :get, "#{Stripe.api_url}/v1/application_fees"
    end

    should "should be refundable" do
      fee = Stripe::ApplicationFee.list.first
      refund = fee.refunds.create
      assert_kind_of Stripe::ApplicationFeeRefund, refund
    end
  end
end
