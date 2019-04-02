# frozen_string_literal: true

require ::File.expand_path("../../test_helper", __FILE__)

module Stripe
  class ChargeTest < Test::Unit::TestCase
    should "be listable" do
      charges = Stripe::Charge.list
      assert_requested :get, "#{Stripe.api_base}/v1/charges"
      assert charges.data.is_a?(Array)
      assert charges.data[0].is_a?(Stripe::Charge)
    end

    should "be retrievable" do
      charge = Stripe::Charge.retrieve("ch_123")
      assert_requested :get, "#{Stripe.api_base}/v1/charges/ch_123"
      assert charge.is_a?(Stripe::Charge)
    end

    should "be creatable" do
      charge = Stripe::Charge.create(
        amount: 100,
        currency: "USD",
        source: "src_123"
      )
      assert_requested :post, "#{Stripe.api_base}/v1/charges"
      assert charge.is_a?(Stripe::Charge)
    end

    should "be saveable" do
      charge = Stripe::Charge.retrieve("ch_123")
      charge.metadata["key"] = "value"
      charge.save
      assert_requested :post, "#{Stripe.api_base}/v1/charges/#{charge.id}"
    end

    should "be updateable" do
      charge = Stripe::Charge.update("ch_123", metadata: { foo: "bar" })
      assert_requested :post, "#{Stripe.api_base}/v1/charges/ch_123"
      assert charge.is_a?(Stripe::Charge)
    end

    context "#capture" do
      should "capture the charge" do
        charge = Stripe::Charge.retrieve("ch_123")
        charge = charge.capture(amount: 100)
        assert_requested :post,
                         "#{Stripe.api_base}/v1/charges/ch_123/capture",
                         body: { amount: 100 }
        assert charge.is_a?(Stripe::Charge)
      end
    end

    context ".capture" do
      should "capture the charge" do
        charge = Stripe::Charge.capture("ch_123", amount: 100)
        assert_requested :post,
                         "#{Stripe.api_base}/v1/charges/ch_123/capture",
                         body: { amount: 100 }
        assert charge.is_a?(Stripe::Charge)
      end
    end

    context "#mark_as_fraudulent" do
      should "charges should be able to be marked as fraudulent" do
        charge = Stripe::Charge.retrieve("ch_123")
        charge = charge.mark_as_fraudulent
        assert charge.is_a?(Stripe::Charge)
      end
    end

    context "#mark_as_safe" do
      should "charges should be able to be marked as safe" do
        charge = Stripe::Charge.retrieve("ch_123")
        charge = charge.mark_as_safe
        assert charge.is_a?(Stripe::Charge)
      end
    end
  end
end
