# frozen_string_literal: true

require File.expand_path("../test_helper", __dir__)

module Stripe
  class RequestOptionsTest < Test::Unit::TestCase
    class FooCreateParams < Stripe::RequestParams
      attr_accessor :fun
      attr_accessor :times
    end

    context "#to_h" do
      should "convert to hash" do

        params = FooCreateParams.new
        params.fun = "yes"
        params.times = 42
        expected = {fun: "yes", times: 42}
        assert_equal expected, params.to_h
      end
    end
  end
end
