require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class RecipientTest < Test::Unit::TestCase
    should "recipient should be retrievable" do
      stub_request(:get, "#{Stripe.api_base}/v1/recipients/test_recipient").
        to_return(body: JSON.generate(make_recipient))
      _ = Stripe::Recipient.retrieve('test_recipient')
    end

    should "recipient should be updateable" do
      stub_request(:post, "#{Stripe.api_base}/v1/recipients/test_recipient").
        with(body: { metadata: { key: "value" } }).
        to_return(body: JSON.generate(make_refund))
      _ = Stripe::Recipient.update('test_recipient', metadata: { key: 'value' })
    end
  end
end

