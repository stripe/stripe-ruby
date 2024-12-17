# frozen_string_literal: true

require File.expand_path("../test_helper", __dir__)

module Stripe
  class RequestParamsTest < Test::Unit::TestCase
    class FooCreateParams < Stripe::RequestParams
      attr_accessor :fun, :team

      def initialize(fun: nil, team: nil)
        @fun = fun
        @team = team
      end

      class Fun < Stripe::RequestParams
        attr_accessor :games

        def initialize(games: nil)
          @games = games
        end
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

      should "convert nested lists" do
        params = FooCreateParams.new(
          fun: [FooCreateParams::Fun.new(games: "chess"), FooCreateParams::Fun.new(games: "go"), FooCreateParams::Fun.new(games: "sorry")],
          team: 42
        )
        expected = { fun: [{ games: "chess" }, { games: "go" }, { games: "sorry" }], team: 42 }
        assert_equal expected, params.to_h
      end

      should "make request with params class" do
        stub_request(:post, "#{Stripe.api_base}/v1/customers")
          .with do |req|
            assert req.body == "name=foo"
          end
          .to_return(body: JSON.generate(object: "customer"))
        params = Stripe::Customer::CreateParams.new(name: "foo")
        cus = Stripe::Customer.create(params)
        assert cus.is_a?(Stripe::Customer)
      end
    end
  end
end
