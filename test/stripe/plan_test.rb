require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class PlanTest < Test::Unit::TestCase
    should "plans should be listable" do
      @mock.expects(:get).once.returns(make_response(make_plan_array))
      plans = Stripe::Plan.list
      assert plans.data.kind_of?(Array)
      plans.each do |plan|
        assert plan.kind_of?(Stripe::Plan)
      end
    end

    should "plans should be saveable" do
      @mock.expects(:get).once.returns(make_response(make_plan))
      @mock.expects(:post).once.returns(make_response(make_plan))
      p = Stripe::Plan.new("test_plan")
      p.refresh
      p.metadata['foo'] = 'bar'
      p.save
    end

    should "plans should be updateable" do
      @mock.expects(:post).once.
        with('https://api.stripe.com/v1/plans/test_plan', nil, 'metadata[foo]=bar').
        returns(make_response(make_plan(metadata: {foo: 'bar'})))
      p = Stripe::Plan.update("test_plan", metadata: {foo: 'bar'})
      assert_equal('bar', p.metadata['foo'])
    end
  end
end
