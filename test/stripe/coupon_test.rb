require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class CouponTest < Test::Unit::TestCase
    should "create should return a new coupon" do
      @mock.expects(:post).once.returns(make_response(make_coupon))
      c = Stripe::Coupon.create
      assert_equal "co_test_coupon", c.id
    end

    should "coupons should be saveable" do
      @mock.expects(:get).once.returns(make_response(make_coupon))
      @mock.expects(:post).once.returns(make_response(make_coupon))
      c = Stripe::Coupon.new("test_coupon")
      c.refresh
      c.metadata['foo'] = 'bar'
      c.save
    end

    should "coupons should be updateable" do
      @mock.expects(:post).once.
        with("https://api.stripe.com/v1/coupons/test_coupon", nil, "metadata[foo]=bar").
        returns(make_response(make_coupon(metadata: {foo: 'bar'})))
      c = Stripe::Coupon.update("test_coupon", metadata: {foo: 'bar'})
      assert_equal('bar', c.metadata['foo'])
    end
  end
end
