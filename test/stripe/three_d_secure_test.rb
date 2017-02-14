require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class ThreeDSecureTest < Test::Unit::TestCase
    should "retrieve an existing 3D Secure object" do
      stub_request(:get, "#{Stripe.api_base}/v1/3d_secure/tdsrc_test").
        to_return(body: JSON.generate(make_three_d_secure))
      tds = Stripe::ThreeDSecure.retrieve("tdsrc_test")
      assert_equal "tdsrc_test", tds.id
    end

    should "create should return a new 3D Secure object" do
      stub_request(:post, "#{Stripe.api_base}/v1/3d_secure").
        with(body: { card: "tok_test", amount: "1500", currency: "usd", return_url: "https://example.org/3d-secure-result" }).
        to_return(body: JSON.generate(make_three_d_secure))
      _ = Stripe::ThreeDSecure.create(
        :card => "tok_test",
        :amount => 1500,
        :currency => "usd",
        :return_url => "https://example.org/3d-secure-result"
      )
    end
  end
end
