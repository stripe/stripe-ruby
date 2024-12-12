# frozen_string_literal: true

require File.expand_path("../test_helper", __dir__)

module Stripe
  class RequestOptionsTest < Test::Unit::TestCase
    class FooCreateParams < Stripe::RequestParams
      attr_accessor :fun, :team

      class Fun < Stripe::RequestParams
        attr_accessor :games
      end
    end

    context "#to_h" do
      should "convert to hash" do
        params = FooCreateParams.new(
          fun: FooCreateParams::Fun.new(games: %w[chess go]),
          team: "blue"
        )
        expected = { fun: { games: %w[chess go] }, team: "blue" }
        assert_equal expected, params.to_h
      end
    end
  end
end
