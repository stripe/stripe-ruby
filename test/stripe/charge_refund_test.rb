require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class ChargeRefundTest < Test::Unit::TestCase
    should "refunds should be listable" do
      stub_request(:get, "#{Stripe.api_base}/v1/charges/test_charge").
        to_return(body: JSON.generate(make_charge))
      charge = Stripe::Charge.retrieve('test_charge')

      assert charge.refunds.first.kind_of?(Stripe::Refund)
    end

    should "refunds should be refreshable" do
      stub_request(:get, "#{Stripe.api_base}/v1/charges/test_charge").
        to_return(body: JSON.generate(make_charge))
      charge = Stripe::Charge.retrieve('test_charge')
      refund = charge.refunds.first

      stub_request(:get, "#{Stripe.api_base}/v1/refunds/#{refund.id}").
        to_return(body: JSON.generate(make_refund))
      refund.refresh
    end

    should "refunds should be updateable" do
      stub_request(:get, "#{Stripe.api_base}/v1/charges/test_charge").
        to_return(body: JSON.generate(make_charge))
      charge = Stripe::Charge.retrieve('test_charge')
      refund = charge.refunds.first

      stub_request(:post, "#{Stripe.api_base}/v1/refunds/#{refund.id}").
        with(body: { metadata: { key: "value" } }).
        to_return(body: JSON.generate(make_refund))
      refund.metadata['key'] = 'value'
      refund.save
    end

    should "create a new refund" do
      stub_request(:get, "#{Stripe.api_base}/v1/charges/test_charge").
        to_return(body: JSON.generate(make_charge))
      charge = Stripe::Charge.retrieve('test_charge')

      stub_request(:post, "#{Stripe.api_base}/v1/charges/#{charge.id}/refunds").
        with(body: { amount: "20" }).
        to_return(body: JSON.generate(make_refund))
      _ = charge.refunds.create(:amount => 20)
    end

    should "create a new refund with the old helper" do
      stub_request(:get, "#{Stripe.api_base}/v1/charges/test_charge").
        to_return(body: JSON.generate(make_charge))
      charge = Stripe::Charge.retrieve('test_charge')

      stub_request(:get, "#{Stripe.api_base}/v1/charges/#{charge.id}").
        to_return(body: JSON.generate(charge))
      stub_request(:post, "#{Stripe.api_base}/v1/charges/#{charge.id}/refunds").
        with(body: { amount: "20" }).
        to_return(body: JSON.generate(make_refund))
      charge.refund(:amount => 20)
    end
  end
end
