# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

module EwStripe
  class PromotionCodeTest < Test::Unit::TestCase
    should "be listable" do
      promotion_codes = EwStripe::PromotionCode.list
      assert_requested :get, "#{EwStripe.api_base}/v1/promotion_codes"
      assert promotion_codes.data.is_a?(Array)
      assert promotion_codes.first.is_a?(EwStripe::PromotionCode)
    end

    should "be retrievable" do
      coupon = EwStripe::PromotionCode.retrieve("PROMO_123")
      assert_requested :get, "#{EwStripe.api_base}/v1/promotion_codes/PROMO_123"
      assert coupon.is_a?(EwStripe::PromotionCode)
    end

    should "be creatable" do
      coupon = EwStripe::PromotionCode.create(
        coupon: "co_123",
        code: "MYCODE"
      )
      assert_requested :post, "#{EwStripe.api_base}/v1/promotion_codes"
      assert coupon.is_a?(EwStripe::PromotionCode)
    end

    should "be saveable" do
      coupon = EwStripe::PromotionCode.retrieve("PROMO_123")
      coupon.metadata["key"] = "value"
      coupon.save
      assert_requested :post, "#{EwStripe.api_base}/v1/promotion_codes/#{coupon.id}"
    end

    should "be updateable" do
      coupon = EwStripe::PromotionCode.update("PROMO_123", metadata: { key: "value" })
      assert_requested :post, "#{EwStripe.api_base}/v1/promotion_codes/PROMO_123"
      assert coupon.is_a?(EwStripe::PromotionCode)
    end
  end
end
