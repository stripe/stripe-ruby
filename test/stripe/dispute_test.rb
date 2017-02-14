require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class DisputeTest < Test::Unit::TestCase
    should "disputes should be retrievable" do
      stub_request(:get, "#{Stripe.api_base}/v1/disputes/dp_test_dispute").
        to_return(body: JSON.generate(make_dispute))
      d = Stripe::Dispute.retrieve('dp_test_dispute')
      assert d.kind_of?(Stripe::Dispute)
    end

    should "disputes should be listable" do
      stub_request(:get, "#{Stripe.api_base}/v1/disputes").
        to_return(body: JSON.generate(make_dispute_array))
      d = Stripe::Dispute.list
      assert d.data.kind_of? Array
      d.each do |dispute|
        assert dispute.kind_of?(Stripe::Dispute)
      end
    end

    should "disputes should be closeable" do
      stub_request(:post, "#{Stripe.api_base}/v1/disputes/dp_test_dispute/close").
        to_return(body: JSON.generate(make_dispute))
      d = Stripe::Dispute.new('dp_test_dispute')
      d.close
    end

    should "disputes should be updateable" do
      stub_request(:post, "#{Stripe.api_base}/v1/disputes/dp_test_dispute").
        with(body: { metadata: { foo: "bar" } }).
        to_return(body: JSON.generate(make_dispute))
      _ = Stripe::Dispute.update("dp_test_dispute", metadata: {foo: 'bar'})
    end

    should "disputes should be saveable" do
      stub_request(:get, "#{Stripe.api_base}/v1/disputes/dp_test_dispute").
        to_return(body: JSON.generate(make_dispute))
      d = Stripe::Dispute.retrieve('dp_test_dispute')

      stub_request(:post, "#{Stripe.api_base}/v1/disputes/dp_test_dispute").
        with(body: { evidence: { customer_name: "customer" } }).
        to_return(body: JSON.generate(make_dispute))
      d.evidence['customer_name'] = 'customer'
      d.save
    end
  end
end
