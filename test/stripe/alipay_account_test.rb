require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class AlipayAccountTest < Test::Unit::TestCase
    FIXTURE = API_FIXTURES.fetch(:alipay_account)

    should "raise on #retrieve" do
      assert_raises NotImplementedError do
        Stripe::AlipayAccount.retrieve FIXTURE[:id]
      end
    end

    should "raise on #update" do
      assert_raises NotImplementedError do
        Stripe::AlipayAccount.update FIXTURE[:id], {}
      end
    end
  end
end
