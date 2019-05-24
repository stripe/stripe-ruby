# frozen_string_literal: true

require ::File.expand_path("../../test_helper", __dir__)

module Stripe
  module Issuing
    class ScheduledQueryRunTest < Test::Unit::TestCase
      should "be listable" do
        runs = Stripe::Sigma::ScheduledQueryRun.list
        assert_requested :get, "#{Stripe.api_base}/v1/sigma/scheduled_query_runs"
        assert runs.data.is_a?(Array)
        assert runs.data[0].is_a?(Stripe::Sigma::ScheduledQueryRun)
      end

      should "be retrievable" do
        run = Stripe::Sigma::ScheduledQueryRun.retrieve("sqr_123")
        assert_requested :get, "#{Stripe.api_base}/v1/sigma/scheduled_query_runs/sqr_123"
        assert run.is_a?(Stripe::Sigma::ScheduledQueryRun)
      end
    end
  end
end
