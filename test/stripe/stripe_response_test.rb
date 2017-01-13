require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class StripeResponseTest < Test::Unit::TestCase
    context ".from_rest_client_response" do
      should "converts to StripeResponse" do
        body = '{"foo": "bar"}'
        headers = { :request_id => "request-id" }

        http_resp = make_response(body, 200, headers: headers)
        resp = StripeResponse.from_rest_client_response(http_resp)

        assert_equal JSON.parse(body, symbolize_names: true), resp.data
        assert_equal body, resp.http_body
        assert_equal headers, resp.http_headers
        assert_equal 200, resp.http_status
        assert_equal "request-id", resp.request_id
      end
    end
  end
end
