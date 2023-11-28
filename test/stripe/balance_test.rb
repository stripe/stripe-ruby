# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

module Stripe
  class BalanceTest < Test::Unit::TestCase
    should "be retrievable with no arguments" do
      balance = Stripe::Balance.retrieve
      assert_requested :get, "#{Stripe.api_base}/v1/balance"
      assert balance.is_a?(Stripe::Balance)
    end
    should "be retrievable with opts only" do
      balance = Stripe::Balance.retrieve({stripe_account: "acct_123"})
      assert_requested :get, "#{Stripe.api_base}/v1/balance" do |req|
        assert_equal("acct_123", req.headers["Stripe-Account"])
        true
      end
      assert balance.is_a?(Stripe::Balance)
    end
    should "be retrievable with opts and params" do
      balance = Stripe::Balance.retrieve({expand: ["available"]}, {stripe_account: "acct_123"})
      assert_requested :get, "#{Stripe.api_base}/v1/balance?expand[]=available" do |req|
        assert_equal("acct_123", req.headers["Stripe-Account"])
        true
      end
      assert balance.is_a?(Stripe::Balance)
    end
    should "be retrievable with params and an explicitly empty opts" do
      balance = Stripe::Balance.retrieve({expand: ["available"]}, {})
      assert_requested :get, "#{Stripe.api_base}/v1/balance?expand[]=available" do |req|
        assert_nil(req.headers["Stripe-Account"])
        true
      end
      assert balance.is_a?(Stripe::Balance)
    end
    should "warn you if you are attempting to pass only params" do
      exception = assert_raises(ArgumentError) do
        Stripe::Balance.retrieve({expand: ["available"]})
      end
      assert_match(/Unrecognized request option/, exception.message)
    end
  end
end
