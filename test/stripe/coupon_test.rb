require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class CouponTest < Test::Unit::TestCase
    should "create should return a new coupon" do
      stub_request(:post, "#{Stripe.api_base}/v1/coupons").
        to_return(body: JSON.generate(make_coupon))
      _ = Stripe::Coupon.create
    end

    should "coupons should be saveable" do
      stub_request(:get, "#{Stripe.api_base}/v1/coupons/test_coupon").
        to_return(body: JSON.generate(make_coupon))
      c = Stripe::Coupon.retrieve("test_coupon")

      stub_request(:post, "#{Stripe.api_base}/v1/coupons/#{c.id}").
        with(body: { metadata: { foo: "bar" } }).
        to_return(body: JSON.generate(make_customer))
      c.metadata['foo'] = 'bar'
      c.save
    end

    should "coupons should be updateable" do
      stub_request(:post, "#{Stripe.api_base}/v1/coupons/test_coupon").
        with(body: { metadata: { foo: "bar" } }).
        to_return(body: JSON.generate(make_customer))
      _ = Stripe::Coupon.update("test_coupon", metadata: {foo: 'bar'})
    end
  end
end
