require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class ChargeTest < Test::Unit::TestCase
    should "charges should be listable" do
      stub_request(:get, "#{Stripe.api_base}/v1/charges").
        to_return(body: JSON.generate(make_charge_array))
      c = Stripe::Charge.list
      assert c.data.kind_of? Array
      c.each do |charge|
        assert charge.kind_of?(Stripe::Charge)
      end
    end

    should "charges should not be deletable" do
      stub_request(:get, "#{Stripe.api_base}/v1/charges/test_charge").
        to_return(body: JSON.generate(make_charge))
      c = Stripe::Charge.retrieve("test_charge")

      assert_raises NoMethodError do
        c.delete
      end
    end

    should "charges should be updateable" do
      stub_request(:post, "#{Stripe.api_base}/v1/charges/test_charge").
        with(body: { metadata: { foo: "bar" } }).
        to_return(body: JSON.generate(make_charge))
      _ = Stripe::Charge.update("test_charge", metadata: {foo: 'bar'})
    end

    should "charges should be saveable" do
      stub_request(:get, "#{Stripe.api_base}/v1/charges/test_charge").
        to_return(body: JSON.generate(make_charge))
      c = Stripe::Charge.retrieve("test_charge")

      stub_request(:post, "#{Stripe.api_base}/v1/charges/#{c.id}").
        with(body: { mnemonic: "updated" }).
        to_return(body: JSON.generate(make_charge))
      c.mnemonic = "updated"
      c.save
    end

    should "charges should be able to be marked as fraudulent" do
      stub_request(:get, "#{Stripe.api_base}/v1/charges/test_charge").
        to_return(body: JSON.generate(make_charge))
      c = Stripe::Charge.retrieve("test_charge")

      stub_request(:post, "#{Stripe.api_base}/v1/charges/#{c.id}").
        with(body: { :fraud_details => { :user_report => 'fraudulent' } }).
        to_return(body: JSON.generate(make_charge))
      c.mark_as_fraudulent
    end

    should "charges should be able to be marked as safe" do
      stub_request(:get, "#{Stripe.api_base}/v1/charges/test_charge").
        to_return(body: JSON.generate(make_charge))
      c = Stripe::Charge.retrieve("test_charge")

      stub_request(:post, "#{Stripe.api_base}/v1/charges/#{c.id}").
        with(body: { :fraud_details => { :user_report => 'safe' } }).
        to_return(body: JSON.generate(make_charge))
      c.mark_as_safe
    end

    should "create a new charge" do
      stub_request(:post, "#{Stripe.api_base}/v1/charges").
        with(body: { amount: "20" }).
        to_return(body: JSON.generate(make_charge))
      _ = Charge.create(:amount => 20)
    end
  end
end
