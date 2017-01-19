require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class PlanTest < Test::Unit::TestCase
    should "plans should be listable" do
      stub_request(:get, "#{Stripe.api_base}/v1/plans").
        to_return(body: make_response(make_plan_array))
      plans = Stripe::Plan.list
      assert plans.data.kind_of?(Array)
      plans.each do |plan|
        assert plan.kind_of?(Stripe::Plan)
      end
    end

    should "plans should be saveable" do
      stub_request(:get, "#{Stripe.api_base}/v1/plans/test_plan").
        to_return(body: make_response(make_plan))
      p = Stripe::Plan.retrieve("test_plan")

      stub_request(:post, "#{Stripe.api_base}/v1/plans/#{p.id}").
        with(body: { metadata: { foo: "bar" } }).
        to_return(body: make_response(make_plan))
      p.metadata['foo'] = 'bar'
      p.save
    end

    should "plans should be updateable" do
      stub_request(:post, "#{Stripe.api_base}/v1/plans/test_plan").
        with(body: { metadata: { foo: "bar" } }).
        to_return(body: make_response(make_plan))
      _ = Stripe::Plan.update("test_plan", metadata: {foo: 'bar'})
    end
  end
end
