require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class ApplicationFeeRefundTest < Test::Unit::TestCase
    include WithoutLegacyStubs

    should "be creatable" do
      fee = Stripe::ApplicationFee.list.first
      refund = fee.refunds.create(:amount => 20)
      assert_kind_of Stripe::ApplicationFeeRefund, refund
      assert_requested :post, "#{Stripe.api_url}/v1/application_fees/#{fee.id}/refunds"
    end

    should "be retrievable" do
      fee = Stripe::ApplicationFee.list.first
      refund = fee.refunds.retrieve("ref_123")
      assert_kind_of Stripe::ApplicationFeeRefund, refund
      assert_requested :get, "#{Stripe.api_url}/v1/application_fees/#{fee.id}/refunds/ref_123"
    end

    should "be updateable" do
      fee = Stripe::ApplicationFee.list.first
      refund = fee.refunds.retrieve("ref_123")
      refund.metadata['key'] = 'val'
      refund.save
      assert_requested :post, "#{Stripe.api_url}/v1/application_fees/#{fee.id}/refunds/#{refund.id}"
    end
  end
end
