require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class AlipayAccountTest < Test::Unit::TestCase
    should "raise on #retrieve" do
      assert_raises NotImplementedError do
        Stripe::AlipayAccount.retrieve API_FIXTURES[:alipay_account][:id]
      end
    end

    should "raise on #update" do
      assert_raises NotImplementedError do
        Stripe::AlipayAccount.update API_FIXTURES[:alipay_account][:id], {}
      end
    end
  end
end
