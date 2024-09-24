# frozen_string_literal: true

require File.expand_path("../test_helper", __dir__)

module Stripe
  class V2ErrorTest < Test::Unit::TestCase
    context "V2 Errors" do
      setup do
        @client = StripeClient.new("keyinfo_test_123")
      end

      should "raise when relevant" do
        method = :get
        path = "/v2/financial_addresses/faddr_xyz"
        error_response = {
          error: {
            type: "insufficient_funds",
            code: "outbound_payment_insufficient_funds",
            message: "you messed up",
          },
        }

        stub_request(method, Stripe::DEFAULT_API_BASE + path)
          .to_return(status: 400, body: error_response.to_json, headers: {})

        e = assert_raises Stripe::InsufficientFundsError do
          @client.v2.financial_addresses.retrieve("faddr_xyz")
        end

        assert_equal "outbound_payment_insufficient_funds", e.code
        assert_equal "you messed up", e.message

        assert_requested(method, Stripe::DEFAULT_API_BASE + path)
      end

      should "correctly set error fields" do
        method = :post
        path = "/v2/payment_methods/us_bank_accounts"

        error_response = {
          error: {
            type: "invalid_payment_method",
            code: "invalid_us_bank_account",
            message: "bank account is invalid",
            invalid_param: "routing_number",
          },
        }
        stub_request(method, /.*#{path}/)
          .to_return(status: 400, body: error_response.to_json, headers: {})

        e = assert_raises Stripe::InvalidPaymentMethodError do
          @client.v2.payment_methods.us_bank_accounts.create(
            { account_number: "123", routing_number: "456" }
          )
        end
        assert_equal "routing_number", e.invalid_param
        assert_equal "invalid_us_bank_account", e.code
        assert_equal "bank account is invalid", e.message

        assert_requested(method, Stripe::DEFAULT_API_BASE + path)
      end

      should "fall back to v1 errors" do
        method = :post
        obp_id = "obp_123"
        path = "/v2/outbound_payments/#{obp_id}/cancel"

        error_response = {
          error: {
            code: "invalid_request",
            message: "your request is invalid",
            param: "invalid_param",
          },
        }
        stub_request(method, Stripe::DEFAULT_API_BASE + path)
          .to_return(status: 400, body: error_response.to_json, headers: { "Request-Id" => "123" })

        e = assert_raises Stripe::InvalidRequestError do
          @client.v2.outbound_payments.cancel(obp_id)
        end
        assert_equal "invalid_param", e.param
        assert_equal "invalid_request", e.code
        assert_equal "your request is invalid", e.message

        assert_requested(method, Stripe::DEFAULT_API_BASE + path)
      end
    end
  end
end
