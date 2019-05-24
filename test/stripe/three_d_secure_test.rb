# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

module Stripe
  class ThreeDSecureTest < Test::Unit::TestCase
    should "be retrievable" do
      secure = Stripe::ThreeDSecure.retrieve("tdsrc_123")
      assert_requested :get, "#{Stripe.api_base}/v1/3d_secure/tdsrc_123"
      assert secure.is_a?(Stripe::ThreeDSecure)
    end

    should "be creatable" do
      _ = Stripe::ThreeDSecure.create(
        card: "tok_123",
        amount: 1500,
        currency: "usd",
        return_url: "https://example.org/3d-secure-result"
      )
      assert_requested :post, "#{Stripe.api_base}/v1/3d_secure"
    end
  end
end
