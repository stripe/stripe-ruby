# frozen_string_literal: true

require File.expand_path("../test_helper", __dir__)

module Stripe
  class V2ErrorTest < Test::Unit::TestCase
    context "V2 Errors" do
      setup do
        @client = StripeClient.new("keyinfo_test_123")
      end

      should "raise when relevant" do
        method = :post
        path = "/v2/billing/meter_event_stream"
        error_response = {
          error: {
            type: "temporary_session_expired",
            code: "billing_meter_event_session_expired",
            message: "expired",
          },
        }

        stub_request(method, Stripe::DEFAULT_METER_EVENTS_BASE + path)
          .to_return(status: 400, body: error_response.to_json, headers: {})

        e = assert_raises Stripe::TemporarySessionExpiredError do
          @client.v2.billing.meter_event_stream.create
        end

        assert_equal "billing_meter_event_session_expired", e.code
        assert_equal "expired", e.message

        assert_requested(method, Stripe::DEFAULT_METER_EVENTS_BASE + path)
      end

      # TODO: Use a v2 specific error once we have a v2 error with fields
      should "correctly set error fields" do
        method = :post
        path = "/v2/billing/meter_event_session"

        error_response = {
          error: {
            type: "invalid_fields",
            code: "invalid_fields",
            message: "bar is invalid",
            param: "bar",
          },
        }
        stub_request(method, /.*#{path}/)
          .to_return(status: 400, body: error_response.to_json, headers: {})

        e = assert_raises Stripe::InvalidRequestError do
          @client.v2.billing.meter_event_session.create(
            { bar: "123" }
          )
        end
        assert_equal "bar", e.param
        assert_equal "invalid_fields", e.code
        assert_equal "bar is invalid", e.message

        assert_requested(method, Stripe::DEFAULT_API_BASE + path)
      end

      should "fall back to v1 errors" do
        method = :post
        path = "/v2/billing/meter_event_session"

        error_response = {
          error: {
            code: "invalid_fields",
            message: "your request is invalid",
            param: "invalid_param",
          },
        }
        stub_request(method, Stripe::DEFAULT_API_BASE + path)
          .to_return(status: 400, body: error_response.to_json, headers: { "Request-Id" => "123" })

        e = assert_raises Stripe::InvalidRequestError do
          @client.v2.billing.meter_event_session.create({ bar: "123" })
        end
        assert_equal "invalid_param", e.param
        assert_equal "invalid_fields", e.code
        assert_equal "your request is invalid", e.message

        assert_requested(method, Stripe::DEFAULT_API_BASE + path)
      end
    end
  end
end
