require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class StripeResponseTest < Test::Unit::TestCase
    context ".from_faraday_hash" do
      should "converts to StripeResponse" do
        body = '{"foo": "bar"}'
        headers = { "Request-Id" => "request-id" }

        http_resp = {
          body: body,
          headers: headers,
          status: 200,
        }

        resp = StripeResponse.from_faraday_hash(http_resp)

        assert_equal JSON.parse(body, symbolize_names: true), resp.data
        assert_equal body, resp.http_body
        assert_equal headers, resp.http_headers
        assert_equal 200, resp.http_status
        assert_equal "request-id", resp.request_id
      end
    end

    context ".from_faraday_response" do
      should "converts to StripeResponse" do
        body = '{"foo": "bar"}'
        headers = { "Request-Id" => "request-id" }

        env = Faraday::Env.from(
          :status => 200, :body => body,
          :response_headers => headers)
        http_resp = Faraday::Response.new(env)

        resp = StripeResponse.from_faraday_response(http_resp)

        assert_equal JSON.parse(body, symbolize_names: true), resp.data
        assert_equal body, resp.http_body
        assert_equal headers, resp.http_headers
        assert_equal 200, resp.http_status
        assert_equal "request-id", resp.request_id
      end
    end
  end
end
