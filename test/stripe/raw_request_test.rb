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
      assert_nil req.headers["Content-Type"]
      assert_equal Stripe::ApiVersion::CURRENT, req.headers["Stripe-Version"]
    end

    should "send post request with body and return a response" do
      expected_body = "{\"id\": \"acc_123\"}"
      req = nil

      stub_request(:post, "#{Stripe.api_base}/v1/accounts/acc_123")
        .with(body: "p1=1&p2=string")
        .with { |request| req = request }
        .to_return(body: expected_body)

      resp = Stripe.raw_request(:post, "/v1/accounts/acc_123", params: { p1: 1, p2: "string" })

      assert_equal expected_body, resp.http_body
      assert_equal "application/x-www-form-urlencoded", req.headers["Content-Type"]
      assert_equal Stripe::ApiVersion::CURRENT, req.headers["Stripe-Version"]
    end

    should "send post request with json body and return a response" do
      expected_body = "{\"id\": \"acc_123\"}"
      req = nil

      stub_request(:post, "#{Stripe.api_base}/v2/accounts/acc_123")
        .with(body: "{\"p1\":1,\"p2\":\"string\"}")
        .with { |request| req = request }
        .to_return(body: expected_body)

      resp = Stripe.raw_request(:post, "/v2/accounts/acc_123", params: { p1: 1, p2: "string" })

      assert_equal expected_body, resp.http_body
      assert_equal "application/json", req.headers["Content-Type"]
      assert_equal Stripe::ApiVersion::PREVIEW, req.headers["Stripe-Version"]
    end

    should "send post request with json body and headers and return a response" do
      expected_body = "{\"id\": \"acc_123\"}"
      req = nil

      stub_request(:post, "#{Stripe.api_base}/v2/accounts/acc_123")
        .with(body: "{\"p1\":1,\"p2\":\"string\"}")
        .with { |request| req = request }
        .to_return(body: expected_body)

      resp = Stripe.raw_request(:post, "/v2/accounts/acc_123", params: { p1: 1, p2: "string" }, opts: { "Stripe-Context": "bar" })

      assert_equal expected_body, resp.http_body
      assert_equal "application/json", req.headers["Content-Type"]
      assert_equal Stripe::ApiVersion::PREVIEW, req.headers["Stripe-Version"]
      assert_equal "bar", req.headers["Stripe-Context"]
    end

    should "send get request with json body and headers and return a response" do
      expected_body = "{\"id\": \"acc_123\"}"
      req = nil

      stub_request(:get, "#{Stripe.api_base}/v2/accounts/acc_123")
        .with { |request| req = request }
        .to_return(body: expected_body)

      resp = Stripe.raw_request(:get, "/v2/accounts/acc_123", opts: { "Stripe-Account": "bar" })

      assert_nil req.headers["Content-Type"]
      assert_equal expected_body, resp.http_body
    end

    should "set default preview version for v2 endpoints when stripe_version not specified" do
      expected_body = "{\"id\": \"acc_123\"}"
      req = nil

      stub_request(:get, "#{Stripe.api_base}/v2/accounts/acc_123")
        .with { |request| req = request }
        .to_return(body: expected_body)

      Stripe.raw_request(:get, "/v2/accounts/acc_123")

      assert_equal Stripe::ApiVersion::PREVIEW, req.headers["Stripe-Version"]
    end

    should "allow overriding stripe version for v2 endpoints" do
      expected_body = "{\"id\": \"acc_123\"}"
      req = nil

      stub_request(:get, "#{Stripe.api_base}/v2/accounts/acc_123")
        .with { |request| req = request }
        .to_return(body: expected_body)

      stripe_version_override = "2023-05-15.preview"
      Stripe.raw_request(:get, "/v2/accounts/acc_123", opts: { stripe_version: stripe_version_override })

      assert_equal stripe_version_override, req.headers["Stripe-Version"]
    end

    should "allow overriding base address" do
      expected_body = "{\"id\": \"acc_123\"}"

      stub_request(:get, "#{Stripe.uploads_base}/v1/accounts/acc_123")
        .to_return(body: expected_body)

      Stripe.raw_request(:get, "/v1/accounts/acc_123", base_address: :files)

      assert_requested(:get, "#{Stripe.uploads_base}/v1/accounts/acc_123")
    end
  end
end
