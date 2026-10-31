# frozen_string_literal: true

require File.expand_path("../test_helper", __dir__)

module Stripe
  class StripeServiceTest < Test::Unit::TestCase
    context "deserialization" do
      should "correctly deserializes account object" do
        stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/accounts")
          .to_return(body: JSON.generate(object: "account"))

        client = Stripe::StripeClient.new("sk_test_123")

        acc = client.v1.accounts.create

        assert acc.is_a?(Stripe::Account)
      end

      should "correctly deserialize v2 account object" do
        stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v2/billing/meter_event_session")
          .to_return(body: JSON.generate(object: "v2.billing.meter_event_session"))

        client = Stripe::StripeClient.new("sk_test_123")

        session = client.v2.billing.meter_event_session.create

        assert session.is_a?(Stripe::V2::Billing::MeterEventSession)
      end
    end

    class TestMeterEventsBaseService < StripeService
      def retrieve(foo, params = {}, opts = {})
        request(
          method: :get,
          path: "/v2/foo/#{foo}",
          params: params,
          opts: opts,
          base_address: :meter_events
        )
      end
    end

    class StripeClientDecorator
      def initialize(client)
        @client = client
        @meter_events_bases = TestMeterEventsBaseService.new(client.instance_variable_get(:@requestor))
      end

      def method_missing(method, ...)
        @client.send(method, ...)
      end

      def respond_to_missing?(method, include_private = false)
        @client.respond_to?(method, include_private) || super
      end

      attr_reader :meter_events_bases
    end

    context "base addresses" do
      should "be able to send to events base" do
        stub_request(:get, "#{Stripe::DEFAULT_METER_EVENTS_BASE}/v2/foo/foo_123")
          .to_return(body: JSON.generate(object: "foo"))

        client = StripeClientDecorator.new(Stripe::StripeClient.new("sk_test_123"))
        client.meter_events_bases.retrieve("foo_123")
      end
    end

    class TestV2SearchParams < RequestParams
      attr_accessor :limit, :query
    end

    context "v2 search parameters" do
      should "convert typed request parameters before lifting limit into the query" do
        requestor = APIRequestor.new("sk_test_123")
        service = StripeService.new(requestor)
        params = TestV2SearchParams.new
        params.limit = 2
        params.query = "widgets"

        requestor.expects(:execute_request)
                 .with(:post, "/v2/widgets/search?limit=2", :api,
                       has_entries(params: { query: "widgets" }))
                 .returns([{ object: "v2.search_result", data: [] }, nil])

        service.request_v2_search(
          method: :post,
          path: "/v2/widgets/search",
          base_address: :api,
          params: params
        )
        assert_equal 2, params.limit
        assert_equal "widgets", params.query
      end
    end

    context "v2 search dispatch" do
      [
        ["/v2/widgets/search", { limit: 2, query: "widgets" }, "/v2/widgets/search?limit=2", { query: "widgets" }],
        ["/v2/widgets/search", { "limit" => 2, "query" => "widgets" }, "/v2/widgets/search?limit=2", { "query" => "widgets" }],
        ["/v2/widgets/search?page=2&limit=2", { limit: 9, query: "widgets" }, "/v2/widgets/search?page=2&limit=2", { query: "widgets" }],
        ["/v2/widgets/search?page=2", { limit: 9, query: "widgets" }, "/v2/widgets/search?page=2", { query: "widgets" }],
        ["/v2/widgets/search", { query: "widgets" }, "/v2/widgets/search", { query: "widgets" }],
      ].each_with_index do |(path, params, expected_path, body), index|
        should "prepare and delegate search once for case #{index}" do
          service = StripeService.new(nil)
          original = params.dup
          opts = { stripe_account: "acct_123" }
          service.expects(:request).once.with(method: :post, path: expected_path,
                                              base_address: :meter_events, params: body, opts: opts)
          service.request_v2_search(method: :post, path: path, params: params,
                                    base_address: :meter_events, opts: opts)
          assert_equal original, params
        end
      end

      should "keep custom search limit in the body and preserve options and usage" do
        requestor = APIRequestor.new("sk_test_123")
        service = StripeService.new(requestor)
        params = { limit: 2, query: "widgets" }.freeze
        requestor.expects(:execute_request).once
                 .with(:post, "/v2/data/operations/search", :api,
                       has_entries(params: params, opts: has_entries(stripe_account: "acct_123"),
                                   usage: ["stripe_client"]))
        service.request(method: :post, path: "/v2/data/operations/search", base_address: :api,
                        params: params, opts: { stripe_account: "acct_123" })
      end
    end

    context "usage parameter" do
      should "send usage stripe_client with request" do
        stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/test")
          .to_return(body: JSON.generate(object: "test"))

        requestor = APIRequestor.new("sk_test_123")
        service = StripeService.new(requestor)

        requestor.expects(:execute_request)
                 .with(:get, "/v1/test", :api,
                       has_entries(params: {},
                                   usage: ["stripe_client"]))
                 .returns([{ object: "test" }, nil])

        service.request(
          method: :get,
          path: "/v1/test",
          base_address: :api
        )
      end

      should "send usage stripe_client with request_stream" do
        stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/test")
          .to_return(body: "test response")

        requestor = APIRequestor.new("sk_test_123")
        service = StripeService.new(requestor)

        requestor.expects(:execute_request_stream)
                 .with(:get, "/v1/test", :api,
                       has_entries(params: {},
                                   usage: ["stripe_client"]))
                 .yields("test response")
                 .returns([nil, "test response"])

        accumulated_body = +""
        service.request_stream(
          method: :get,
          path: "/v1/test",
          base_address: :api
        ) do |body_chunk|
          accumulated_body << body_chunk
        end

        assert_equal "test response", accumulated_body
      end
    end
  end
end
