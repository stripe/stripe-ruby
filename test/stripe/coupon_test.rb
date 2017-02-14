require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class CouponTest < Test::Unit::TestCase
    FIXTURE = API_FIXTURES.fetch(:coupon)

    should "be listable" do
      coupons = Stripe::Coupon.list
      assert_requested :get, "#{Stripe.api_base}/v1/coupons"
      assert coupons.data.kind_of?(Array)
      assert coupons.first.kind_of?(Stripe::Coupon)
    end

    should "be retrievable" do
      coupon = Stripe::Coupon.retrieve(FIXTURE[:id])
      assert_requested :get, "#{Stripe.api_base}/v1/coupons/#{FIXTURE[:id]}"
      assert coupon.kind_of?(Stripe::Coupon)
    end

    should "be creatable" do
      coupon = Stripe::Coupon.create(
        percent_off: 25,
        duration: 'repeating',
        duration_in_months: 3,
        id: '25OFF'
      )
      assert_requested :post, "#{Stripe.api_base}/v1/coupons"
      assert coupon.kind_of?(Stripe::Coupon)
    end

    should "be saveable" do
      coupon = Stripe::Coupon.retrieve(FIXTURE[:id])
      coupon.metadata['key'] = 'value'
      coupon.save
      assert_requested :post, "#{Stripe.api_base}/v1/coupons/#{FIXTURE[:id]}"
    end

    should "be updateable" do
      coupon = Stripe::Coupon.update(FIXTURE[:id], metadata: { key: 'value' })
      assert_requested :post, "#{Stripe.api_base}/v1/coupons/#{FIXTURE[:id]}"
      assert coupon.kind_of?(Stripe::Coupon)
    end
  end
end
