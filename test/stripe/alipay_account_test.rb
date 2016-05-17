require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class AlipayAccountTest < Test::Unit::TestCase
    should "raise if accessing Stripe::Alipay.account directly" do
      assert_raises NotImplementedError do
        Stripe::AlipayAccount.retrieve "card_12345"
      end
    end
  end
end
