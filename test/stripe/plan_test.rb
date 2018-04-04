require File.expand_path("../../test_helper", __FILE__)

module Stripe
  class PlanTest < Test::Unit::TestCase
    should "be listable" do
      plans = Stripe::Plan.list
      assert_requested :get, "#{Stripe.api_base}/v1/plans"
      assert plans.data.is_a?(Array)
      assert plans.data[0].is_a?(Stripe::Plan)
    end

    should "be retrievable" do
      plan = Stripe::Plan.retrieve("sapphire-elite")
      assert_requested :get, "#{Stripe.api_base}/v1/plans/sapphire-elite"
      assert plan.is_a?(Stripe::Plan)
    end

    should "be creatable" do
      plan = Stripe::Plan.create(
        amount: 5000,
        interval: "month",
        name: "Sapphire elite",
        currency: "usd",
        id: "sapphire-elite"
      )
      assert_requested :post, "#{Stripe.api_base}/v1/plans"
      assert plan.is_a?(Stripe::Plan)
    end

    should "be saveable" do
      plan = Stripe::Plan.retrieve("sapphire-elite")
      plan.metadata["key"] = "value"
      plan.save
      assert_requested :post, "#{Stripe.api_base}/v1/plans/#{plan.id}"
    end

    should "be updateable" do
      plan = Stripe::Plan.update("sapphire-elite", metadata: { foo: "bar" })
      assert_requested :post, "#{Stripe.api_base}/v1/plans/sapphire-elite"
      assert plan.is_a?(Stripe::Plan)
    end

    should "be deletable" do
      plan = Stripe::Plan.retrieve("sapphire-elite")
      plan_id = plan.id
      plan = plan.delete
      assert_requested :delete, "#{Stripe.api_base}/v1/plans/#{plan_id}"
      assert plan.is_a?(Stripe::Plan)
    end
  end
end
