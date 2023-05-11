# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

class PreviewTest < Test::Unit::TestCase
  context "preview raw requests" do
    should "send preview get request with correct default options" do
      expected_body = "{\"id\": \"acc_123\"}"
      req = nil

      stub_request(:get, "#{Stripe.api_base}/v2/accounts/acc_123")
        .with { |request| req = request }
        .to_return(body: expected_body)

      resp = Stripe::Preview.get("/v2/accounts/acc_123")

      assert_not_equal "application/x-www-form-urlencoded", req.headers["Content-Type"]
      assert_equal Stripe::ApiVersion::PREVIEW, req.headers["Stripe-Version"]
      assert_equal expected_body, resp.http_body
    end

    should "send preview post request with correct default options" do
      expected_body = "{\"id\": \"acc_123\"}"
      req = nil

      stub_request(:post, "#{Stripe.api_base}/v2/accounts")
        .with { |request| req = request }
        .to_return(body: expected_body)

      resp = Stripe::Preview.post("/v2/accounts", { p1: 1, p2: "string" })

      assert_equal "application/json", req.headers["Content-Type"]
      assert_equal Stripe::ApiVersion::PREVIEW, req.headers["Stripe-Version"]
      assert_equal "{\"p1\":1,\"p2\":\"string\"}", req.body
      assert_equal expected_body, resp.http_body
    end

    should "send preview delete request with correct default options" do
      expected_body = "{\"id\": \"acc_123\"}"
      req = nil

      stub_request(:delete, "#{Stripe.api_base}/v2/accounts/acc_123")
        .with { |request| req = request }
        .to_return(body: expected_body)

      resp = Stripe::Preview.delete("/v2/accounts/acc_123")

      assert_not_equal "application/x-www-form-urlencoded", req.headers["Content-Type"]
      assert_equal Stripe::ApiVersion::PREVIEW, req.headers["Stripe-Version"]
      assert_equal expected_body, resp.http_body
    end

    should "allow overriding default options for preview requests" do
      expected_body = "{\"id\": \"acc_123\"}"
      stripe_version_override = "2022-11-15"
      req = nil

      stub_request(:post, "#{Stripe.api_base}/v2/accounts")
        .with { |request| req = request }
        .to_return(body: expected_body)

      resp = Stripe::Preview.post("/v2/accounts", {}, { stripe_version: stripe_version_override })

      assert_not_equal "application/x-www-form-urlencoded", req.headers["Content-Type"]
      assert_equal stripe_version_override, req.headers["Stripe-Version"]
      assert_equal expected_body, resp.http_body
    end

    should "allow setting stripe_context for preview requests" do
      expected_body = "{\"id\": \"acc_123\"}"
      stripe_context = "acc_123"
      req = nil

      stub_request(:post, "#{Stripe.api_base}/v2/accounts")
        .with { |request| req = request }
        .to_return(body: expected_body)

      Stripe::Preview.post("/v2/accounts", {}, { stripe_context: stripe_context })

      assert_not_equal "application/x-www-form-urlencoded", req.headers["Content-Type"]
      assert_equal stripe_context, req.headers["Stripe-Context"]
    end
  end
end
