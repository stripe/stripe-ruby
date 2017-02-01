require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class ThreeDSecureTest < Test::Unit::TestCase
    FIXTURE = API_FIXTURES.fetch(:three_d_secure)

    should "be retrievable" do
      secure = Stripe::ThreeDSecure.retrieve(FIXTURE[:id])
      assert_requested :get, "#{Stripe.api_base}/v1/3d_secure/#{FIXTURE[:id]}"
      assert secure.kind_of?(Stripe::ThreeDSecure)
    end

    should "be creatable" do
      _ = Stripe::ThreeDSecure.create(
        card: API_FIXTURES.fetch(:token)[:id],
        amount: 1500,
        currency: "usd",
        return_url: "https://example.org/3d-secure-result"
      )
      assert_requested :post, "#{Stripe.api_base}/v1/3d_secure"
    end
  end
end
