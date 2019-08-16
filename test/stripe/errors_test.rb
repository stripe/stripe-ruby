# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

module Stripe
  class StripeErrorTest < Test::Unit::TestCase
    context "StripeError" do
      context "#initialize" do
        should "initialize error if json_body is set" do
          e = StripeError.new("message", json_body: { error: { code: "some_error" } })
          assert_not_nil e.error
          assert_equal "some_error", e.error.code
          assert_nil e.error.charge
        end
      end

      context "#to_s" do
        should "convert to string" do
          e = StripeError.new("message")
          assert_equal "message", e.to_s

          e = StripeError.new("message", http_status: 200)
          assert_equal "(Status 200) message", e.to_s

          e = StripeError.new("message", http_status: nil, http_body: nil, json_body: nil, http_headers: { request_id: "request-id" })
          assert_equal "(Request request-id) message", e.to_s
        end
      end
    end

    context "OAuth::OAuthError" do
      context "#initialize" do
        should "initialize error if json_body is set" do
          e = OAuth::OAuthError.new("message", "description", json_body: { error: "some_oauth_error" })
          assert_not_nil e.error
          assert_equal "some_oauth_error", e.error.error
        end
      end
    end
  end
end
