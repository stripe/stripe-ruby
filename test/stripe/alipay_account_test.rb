require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class AlipayAccountTest < Test::Unit::TestCase
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
