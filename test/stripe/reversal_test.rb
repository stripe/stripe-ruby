require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class ReversalTest < Test::Unit::TestCase
    should "reversals should be listable" do
      stub_request(:get, "#{Stripe.api_base}/v1/transfers/test_transfer").
        to_return(body: JSON.generate(make_transfer))
      transfer = Stripe::Transfer.retrieve('test_transfer')
      assert transfer.reversals.first.kind_of?(Stripe::Reversal)
    end

    should "reversals should be updateable" do
      stub_request(:get, "#{Stripe.api_base}/v1/transfers/test_transfer").
        to_return(body: JSON.generate(make_transfer))
      transfer = Stripe::Transfer.retrieve('test_transfer')
      reversal = transfer.reversals.first

      stub_request(:post, "#{Stripe.api_base}/v1/transfers/#{transfer.id}/reversals/#{reversal.id}").
        with(body: { metadata: { key: "value" } }).
        to_return(body: JSON.generate(make_reversal))
      reversal.metadata['key'] = 'value'
      reversal.save
    end

    should "create should return a new reversal" do
      stub_request(:get, "#{Stripe.api_base}/v1/transfers/test_transfer").
        to_return(body: JSON.generate(make_transfer))
      transfer = Stripe::Transfer.retrieve('test_transfer')

      stub_request(:post, "#{Stripe.api_base}/v1/transfers/#{transfer.id}/reversals").
        with(body: { amount: "20" }).
        to_return(body: JSON.generate(make_reversal))
      _ = transfer.reversals.create(:amount => 20)
    end
  end
end
