require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class BalanceTest < Test::Unit::TestCase
    should "be retrievable" do
      balance = Stripe::Balance.retrieve
      assert_requested :get, "#{Stripe.api_base}/v1/balance"
      assert balance.kind_of?(Stripe::Balance)
    end
  end
end
