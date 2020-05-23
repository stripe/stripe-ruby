# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

module Stripe
  class ChargeTest < Test::Unit::TestCase
    should "be listable" do
      charges = StripeClient.new.charges.list
      assert_requested :get, "#{Stripe.api_base}/v1/charges"
      assert charges.data.is_a?(Array)
      assert charges.data[0].is_a?(Stripe::Charge)
    end

    should "be retrievable" do
      charge = StripeClient.new.charges.retrieve("ch_123")
      assert_requested :get, "#{Stripe.api_base}/v1/charges/ch_123"
      assert charge.is_a?(Stripe::Charge)
    end

    should "be creatable" do
      charge = StripeClient.new.charges.create(
        amount: 100,
        currency: "USD",
        source: "src_123"
      )
      assert_requested :post, "#{Stripe.api_base}/v1/charges"
      assert charge.is_a?(Stripe::Charge)
    end

    should "be saveable" do
      charge = StripeClient.new.charges.retrieve("ch_123")
      charge.metadata["key"] = "value"
      charge.save
      assert_requested :post, "#{Stripe.api_base}/v1/charges/#{charge.id}"
    end

    should "be updateable" do
      charge = StripeClient.new.charges.update("ch_123", metadata: { foo: "bar" })
      assert_requested :post, "#{Stripe.api_base}/v1/charges/ch_123"
      assert charge.is_a?(Stripe::Charge)
    end

    context "#capture" do
      should "capture the charge" do
        charge = StripeClient.new.charges.retrieve("ch_123")
        charge = charge.capture(amount: 100)
        assert_requested :post,
                         "#{Stripe.api_base}/v1/charges/ch_123/capture",
                         body: { amount: 100 }
        assert charge.is_a?(Stripe::Charge)
      end
    end

    context ".capture" do
      should "capture the charge" do
        charge = StripeClient.new.charges.capture("ch_123", amount: 100)
        assert_requested :post,
                         "#{Stripe.api_base}/v1/charges/ch_123/capture",
                         body: { amount: 100 }
        assert charge.is_a?(Stripe::Charge)
      end
    end
  end
end
