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

    context "different request types" do
      should "create a customer with params class" do
        stub_request(:post, "#{Stripe.api_base}/v1/customers")
          .with(body: "name=foo")
          .to_return(body: JSON.generate(object: "customer", id: "cus_123", name: "foo"))

        params = Stripe::Customer::CreateParams.new(name: "foo")
        customer = Stripe::Customer.create(params)

        assert customer.is_a?(Stripe::Customer)
        assert_equal "cus_123", customer.id
        assert_equal "foo", customer.name
      end

      should "update a customer with params class" do
        stub_request(:post, "#{Stripe.api_base}/v1/customers/cus_123")
          .with(body: "name=bar")
          .to_return(body: JSON.generate(object: "customer", id: "cus_123", name: "bar"))

        params = Stripe::Customer::UpdateParams.new(name: "bar")
        customer = Stripe::Customer.update("cus_123", params)

        assert customer.is_a?(Stripe::Customer)
        assert_equal "cus_123", customer.id
        assert_equal "bar", customer.name
      end

      # NOTE: Resource-based retrieve expand is a special case...
      should "retrieve a customer with params class" do
        stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/customers/cus_123?expand[]=foo")
          .to_return(body: JSON.generate(object: "customer", id: "cus_123", name: "foo"))

        @client = Stripe::StripeClient.new("sk_test_123")
        customer = @client.v1.customers.retrieve("cus_123", CustomerService::RetrieveParams.new(expand: [:foo]))

        assert customer.is_a?(Stripe::Customer)
      end

      should "list customers with params class" do
        stub_request(:get, "#{Stripe.api_base}/v1/customers")
          .to_return(body: JSON.generate(object: "list", data: [{ id: "cus_123", name: "foo" }, { id: "cus_456", name: "bar" }]))

        customers = Stripe::Customer.list

        assert customers.is_a?(Stripe::ListObject)
        assert_equal 2, customers.data.size
        assert_equal "cus_123", customers.data[0].id
        assert_equal "foo", customers.data[0].name
        assert_equal "cus_456", customers.data[1].id
        assert_equal "bar", customers.data[1].name
      end

      should "search customers with params class" do
        stub_request(:get, "#{Stripe.api_base}/v1/customers/search")
          .with(query: { query: "name:'foo'" })
          .to_return(body: JSON.generate(object: "search_result", data: [{ id: "cus_123", name: "foo" }]))

        params = Stripe::Customer::SearchParams.new(query: "name:'foo'")
        customers = Stripe::Customer.search(params)

        assert customers.is_a?(Stripe::SearchResultObject)
        assert_equal 1, customers.data.size
        assert_equal "cus_123", customers.data[0].id
        assert_equal "foo", customers.data[0].name
      end

      should "request params work in raw request" do
        expected_body = JSON.generate(id: "cus_123", name: "foo")
        req = nil

        stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/customers")
          .with(body: "name=foo")
          .with { |request| req = request }
          .to_return(body: expected_body)

        @client = Stripe::StripeClient.new("sk_test_123")
        resp = @client.raw_request(:post, "/v1/customers", params: Customer::CreateParams.new(name: "foo"))

        assert_equal expected_body, resp.http_body
      end
    end
  end
end
