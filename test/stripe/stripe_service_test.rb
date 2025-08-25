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

      def method_missing(method, *args, &block)
        @client.send(method, *args, &block)
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

    context "usage parameter" do
      should "send usage stripe_client with request" do
        stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/test")
          .to_return(body: JSON.generate(object: "test"))

        requestor = APIRequestor.new("sk_test_123")
        service = StripeService.new(requestor)

        # Mock the execute_request method to capture the usage parameter
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

        # Mock the execute_request_stream method to capture the usage parameter
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
