# frozen_string_literal: true

require ::File.expand_path("../../test_helper", __FILE__)

module Stripe
  class CouponTest < Test::Unit::TestCase
    should "be listable" do
      coupons = Stripe::Coupon.list
      assert_requested :get, "#{Stripe.api_base}/v1/coupons"
      assert coupons.data.is_a?(Array)
      assert coupons.first.is_a?(Stripe::Coupon)
    end

    should "be retrievable" do
      coupon = Stripe::Coupon.retrieve("25OFF")
      assert_requested :get, "#{Stripe.api_base}/v1/coupons/25OFF"
      assert coupon.is_a?(Stripe::Coupon)
    end

    should "be creatable" do
      coupon = Stripe::Coupon.create(
        percent_off: 25,
        duration: "repeating",
        duration_in_months: 3,
        id: "25OFF"
      )
      assert_requested :post, "#{Stripe.api_base}/v1/coupons"
      assert coupon.is_a?(Stripe::Coupon)
    end

    should "be saveable" do
      coupon = Stripe::Coupon.retrieve("25OFF")
      coupon.metadata["key"] = "value"
      coupon.save
      assert_requested :post, "#{Stripe.api_base}/v1/coupons/#{coupon.id}"
    end

    should "be updateable" do
      coupon = Stripe::Coupon.update("25OFF", metadata: { key: "value" })
      assert_requested :post, "#{Stripe.api_base}/v1/coupons/25OFF"
      assert coupon.is_a?(Stripe::Coupon)
    end

    context "#delete" do
      should "be deletable" do
        coupon = Stripe::Coupon.delete("25OFF")
        assert_requested :delete, "#{Stripe.api_base}/v1/coupons/#{coupon.id}"
        assert coupon.is_a?(Stripe::Coupon)
      end
    end

    context ".delete" do
      should "be deletable" do
        coupon = Stripe::Coupon.retrieve("25OFF")
        coupon = coupon.delete
        assert_requested :delete, "#{Stripe.api_base}/v1/coupons/25OFF"
        assert coupon.is_a?(Stripe::Coupon)
      end
    end
  end
end
