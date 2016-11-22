require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class BalanceTest < Test::Unit::TestCase
    include WithoutLegacyStubs

    should "balance should be retrievable" do
      Stripe::Balance.retrieve
      assert_requested :get, "#{Stripe.api_url}/v1/balance"
    end
  end
end
