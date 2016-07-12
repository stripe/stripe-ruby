require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class ThreeDSecureTest < Test::Unit::TestCase
    should "create should return a new 3D Secure object" do
      @mock.expects(:post).once.returns(make_response(make_three_d_secure))
      tds = Stripe::ThreeDSecure.create(
        :card => "tok_test",
        :amount => 1500,
        :currency => "usd",
        :return_url => "https://example.org/3d-secure-result"
      )
      assert_equal "tdsrc_test", tds.id
    end
  end
end
