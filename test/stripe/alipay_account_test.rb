# frozen_string_literal: true

require ::File.expand_path("../../test_helper", __FILE__)

module Stripe
  class AlipayAccountTest < Test::Unit::TestCase
    context "#resource_url" do
      should "return a resource URL" do
        alipay_account = Stripe::AlipayAccount.construct_from(
          id: "aliacc_123",
          customer: "cus_123"
        )
        assert_equal "/v1/customers/cus_123/sources/aliacc_123",
                     alipay_account.resource_url
      end

      should "raise without a customer" do
        alipay_account = Stripe::AlipayAccount.construct_from(id: "aliacc_123")
        assert_raises NotImplementedError do
          alipay_account.resource_url
        end
      end
    end

    should "raise on #retrieve" do
      assert_raises NotImplementedError do
        Stripe::AlipayAccount.retrieve("aliacc_123")
      end
    end

    should "raise on #update" do
      assert_raises NotImplementedError do
        Stripe::AlipayAccount.update("aliacc_123", {})
      end
    end
  end
end
