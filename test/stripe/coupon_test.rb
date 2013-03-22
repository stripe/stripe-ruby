require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class CouponTest < Test::Unit::TestCase
    should "create should return a new coupon" do
      @mock.expects(:post).once.returns(test_response(test_coupon))
      c = Stripe::Coupon.create
      assert_equal "co_test_coupon", c.id
    end
  end
end