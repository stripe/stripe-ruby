# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

module Stripe
  class BalanceTest < Test::Unit::TestCase
    should "be retrievable" do
      balance = Stripe::Balance.retrieve
      assert_requested :get, "#{Stripe.api_base}/v1/balance"
      assert balance.is_a?(Stripe::Balance)
    end
  end
end
