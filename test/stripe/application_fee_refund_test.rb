require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class ApplicationFeeRefundTest < Test::Unit::TestCase
    should "refunds should be listable" do
      stub_request(:get, "#{Stripe.api_base}/v1/application_fees/test_application_fee").
        to_return(body: JSON.generate(make_application_fee))

      application_fee = Stripe::ApplicationFee.retrieve('test_application_fee')

      assert application_fee.refunds.first.kind_of?(Stripe::ApplicationFeeRefund)
    end

    should "refunds should be updateable" do
      stub_request(:get, "#{Stripe.api_base}/v1/application_fees/test_application_fee").
        to_return(body: JSON.generate(make_application_fee))

      application_fee = Stripe::ApplicationFee.retrieve('test_application_fee')
      refund = application_fee.refunds.first

      stub_request(:post, "#{Stripe.api_base}/v1/application_fees/#{refund.fee}/refunds/#{refund.id}").
        to_return(body: JSON.generate(make_application_fee_refund(:metadata => {'key' => 'value'})))

      assert_equal nil, refund.metadata['key']

      refund.metadata['key'] = 'valu'
      refund.save

      assert_equal 'value', refund.metadata['key']
    end

    should "create should return a new refund" do
      stub_request(:get, "#{Stripe.api_base}/v1/application_fees/test_application_fee").
        to_return(body: JSON.generate(make_application_fee))
      application_fee = Stripe::ApplicationFee.retrieve('test_application_fee')

      stub_request(:post, "#{Stripe.api_base}/v1/application_fees/#{application_fee.id}/refunds").
        to_return(body: JSON.generate(make_application_fee_refund(:id => 'test_new_refund')))

      refund = application_fee.refunds.create(:amount => 20)
      assert_equal 'test_new_refund', refund.id
    end
  end
end
