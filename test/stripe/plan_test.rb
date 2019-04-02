# frozen_string_literal: true

require ::File.expand_path("../../test_helper", __FILE__)

module Stripe
  class PlanTest < Test::Unit::TestCase
    should "be listable" do
      plans = Stripe::Plan.list
      assert_requested :get, "#{Stripe.api_base}/v1/plans"
      assert plans.data.is_a?(Array)
      assert plans.data[0].is_a?(Stripe::Plan)
    end

    should "be retrievable" do
      plan = Stripe::Plan.retrieve("pl_123")
      assert_requested :get, "#{Stripe.api_base}/v1/plans/pl_123"
      assert plan.is_a?(Stripe::Plan)
    end

    should "be creatable" do
      plan = Stripe::Plan.create(
        amount: 5000,
        interval: "month",
        name: "Sapphire elite",
        currency: "usd"
      )
      assert_requested :post, "#{Stripe.api_base}/v1/plans"
      assert plan.is_a?(Stripe::Plan)
    end

    should "be creatable with metered configuration" do
      plan = Stripe::Plan.create(
        amount: 5000,
        interval: "month",
        name: "Sapphire elite",
        currency: "usd",
        usage_type: "metered"
      )
      assert_requested :post, "#{Stripe.api_base}/v1/plans"
      assert plan.is_a?(Stripe::Plan)
    end

    should "be creatable with tiered configuration" do
      plan = Stripe::Plan.create(
        interval: "month",
        name: "Sapphire elite",
        currency: "usd",
        billing_scheme: "tiered",
        tiers_mode: "volume",
        tiers: [{ up_to: 100, amount: 1000 }, { up_to: "inf", amount: 2000 }]
      )
      assert_requested :post, "#{Stripe.api_base}/v1/plans"
      assert plan.is_a?(Stripe::Plan)
    end

    should "be creatable with transform_usage" do
      plan = Stripe::Plan.create(
        interval: "month",
        name: "Sapphire elite",
        currency: "usd",
        amount: 5000,
        transform_usage: { round: "up", divide_by: 50 }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/plans"
      assert plan.is_a?(Stripe::Plan)
    end

    should "be saveable" do
      plan = Stripe::Plan.retrieve("pl_123")
      plan.metadata["key"] = "value"
      plan.save
      assert_requested :post, "#{Stripe.api_base}/v1/plans/#{plan.id}"
    end

    should "be updateable" do
      plan = Stripe::Plan.update("pl_123", metadata: { foo: "bar" })
      assert_requested :post, "#{Stripe.api_base}/v1/plans/pl_123"
      assert plan.is_a?(Stripe::Plan)
    end

    context "#delete" do
      should "be deletable" do
        plan = Stripe::Plan.retrieve("pl_123")
        plan = plan.delete
        assert_requested :delete, "#{Stripe.api_base}/v1/plans/#{plan.id}"
        assert plan.is_a?(Stripe::Plan)
      end
    end

    context ".delete" do
      should "be deletable" do
        plan = Stripe::Plan.delete("pl_123")
        assert_requested :delete, "#{Stripe.api_base}/v1/plans/pl_123"
        assert plan.is_a?(Stripe::Plan)
      end
    end
  end
end
