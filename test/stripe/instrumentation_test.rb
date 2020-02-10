# frozen_string_literal: true

require_relative "../test_helper"

module Stripe
  class InstrumentationTest < Test::Unit::TestCase
    context ".notify" do
      teardown do
        Stripe::Instrumentation.send(:subscribers).clear
      end

      should "notify subscribers for the right topic" do
        sub1_events = []
        Stripe::Instrumentation.subscribe(:test1, :sub1) { |event| sub1_events << event }
        sub2_events = []
        Stripe::Instrumentation.subscribe(:test2, :sub2) { |event| sub2_events << event }

        Stripe::Instrumentation.notify(:test1, "hello")
        assert_equal(1, sub1_events.size)
        assert_equal(0, sub2_events.size)
      end

      should "notify multiple subscribers of the same topic" do
        sub1_events = []
        Stripe::Instrumentation.subscribe(:test, :sub1) { |event| sub1_events << event }
        sub2_events = []
        Stripe::Instrumentation.subscribe(:test, :sub2) { |event| sub2_events << event }

        Stripe::Instrumentation.notify(:test, "hello")
        assert_equal(1, sub1_events.size)
        assert_equal(1, sub2_events.size)
      end

      should "not notify a subscriber once it has unsubscribed" do
        events = []
        Stripe::Instrumentation.subscribe(:test, :sub) { |event| events << event }

        Stripe::Instrumentation.notify(:test, "hello")
        assert_equal(1, events.size)

        Stripe::Instrumentation.unsubscribe(:test, :sub)
        Stripe::Instrumentation.notify(:test, "hello")
        assert_equal(1, events.size)
      end
    end

    context "RequestEventBegin" do
      should "return a frozen object" do
        event = Stripe::Instrumentation::RequestBeginEvent.new(
          method: :get,
          path: "/v1/test",
          user_data: nil
        )

        assert(event.frozen?)
      end
    end

    context "RequestEventEnd" do
      should "return a frozen object" do
        event = Stripe::Instrumentation::RequestEndEvent.new(
          duration: 0.1,
          http_status: 200,
          method: :get,
          num_retries: 0,
          path: "/v1/test",
          user_data: nil
        )

        assert(event.frozen?)
      end
    end
  end
end
