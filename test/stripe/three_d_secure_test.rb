# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

module EwStripe
  class ThreeDSecureTest < Test::Unit::TestCase
    should "be retrievable" do
      secure = EwStripe::ThreeDSecure.retrieve("tdsrc_123")
      assert_requested :get, "#{EwStripe.api_base}/v1/3d_secure/tdsrc_123"
      assert secure.is_a?(EwStripe::ThreeDSecure)
    end

    should "be creatable" do
      _ = EwStripe::ThreeDSecure.create(
        card: "tok_123",
        amount: 1500,
        currency: "usd",
        return_url: "https://example.org/3d-secure-result"
      )
      assert_requested :post, "#{EwStripe.api_base}/v1/3d_secure"
    end
  end
end
