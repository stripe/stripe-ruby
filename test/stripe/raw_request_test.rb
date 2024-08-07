# frozen_string_literal: true

require File.expand_path("../test_helper", __dir__)

class RawRequestTest < Test::Unit::TestCase
  context "raw_request" do
    should "send get request and return a response" do
      expected_body = "{\"id\": \"acc_123\"}"
      req = nil

      stub_request(:get, "#{Stripe.api_base}/v1/accounts/acc_123")
        .with { |request| req = request }
        .to_return(body: expected_body)

      resp = Stripe.raw_request(:get, "/v1/accounts/acc_123")

      assert_equal expected_body, resp.http_body
      assert_equal "application/x-www-form-urlencoded", req.headers["Content-Type"]
      assert_equal Stripe::ApiVersion::CURRENT, req.headers["Stripe-Version"]
    end

    should "send post request with body and return a response" do
      expected_body = "{\"id\": \"acc_123\"}"
      req = nil

      stub_request(:post, "#{Stripe.api_base}/v1/accounts/acc_123")
        .with(body: "p1=1&p2=string")
        .with { |request| req = request }
        .to_return(body: expected_body)

      resp = Stripe.raw_request(:post, "/v1/accounts/acc_123", { p1: 1, p2: "string" })

      assert_equal expected_body, resp.http_body
      assert_equal "application/x-www-form-urlencoded", req.headers["Content-Type"]
      assert_equal Stripe::ApiVersion::CURRENT, req.headers["Stripe-Version"]
    end

    should "report usage" do
      expected_body = "{\"id\": \"acc_123\"}"
      telemetry_header = nil

      Stripe.enable_telemetry = true

      stub_request(:get, "#{Stripe.api_base}/v1/accounts/acc_124")
        .with { |request| telemetry_header = request.headers["X-Stripe-Client-Telemetry"] }
        .to_return(body: expected_body)

      Stripe.raw_request(:get, "/v1/accounts/acc_123", {}, {})
      Stripe.raw_request(:get, "/v1/accounts/acc_124", {}, {})
      parsed_telemetry_header = JSON.parse(telemetry_header)

      assert(parsed_telemetry_header["last_request_metrics"]["usage"] == ["raw_request"])
    end
  end
end
