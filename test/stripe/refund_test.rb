require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class RefundTest < Test::Unit::TestCase
    should "refunds should be listable" do
      stub_request(:get, "#{Stripe.api_base}/v1/refunds").
        to_return(body: make_response(make_refund_array))
      refunds = Stripe::Refund.list
      assert refunds.first.kind_of?(Stripe::Refund)
    end

    should "refunds should be saveable" do
      stub_request(:get, "#{Stripe.api_base}/v1/refunds/get_refund").
        to_return(body: make_response(make_refund))
      refund = Stripe::Refund.retrieve('get_refund')

      stub_request(:post, "#{Stripe.api_base}/v1/refunds/#{refund.id}").
        with(body: { metadata: { key: "value" } }).
        to_return(body: make_response(make_refund))
      refund.metadata['key'] = 'value'
      refund.save
    end

    should "refunds should be updateable" do
      stub_request(:post, "#{Stripe.api_base}/v1/refunds/update_refund").
        with(body: { metadata: { key: "value" } }).
        to_return(body: make_response(make_refund))
      _ = Stripe::Refund.update('update_refund', metadata: { key: 'value' })
    end

    should "create should return a new refund" do
      stub_request(:post, "#{Stripe.api_base}/v1/refunds").
        with(body: { charge: "test_charge" }).
        to_return(body: make_response(make_refund))
      _ = Stripe::Refund.create(:charge => 'test_charge')
    end
  end
end
