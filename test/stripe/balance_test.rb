# frozen_string_literal: true

require File.expand_path("../test_helper", __dir__)

module Stripe
  class BalanceTest < Test::Unit::TestCase
    should "be retrievable with no arguments" do
      balance = Stripe::Balance.retrieve
      assert_requested :get, "#{Stripe.api_base}/v1/balance"
      assert balance.is_a?(Stripe::Balance)
    end
    should "be retrievable with opts and params" do
      balance = Stripe::Balance.retrieve({ expand: ["available"] }, { stripe_account: "acct_123" })
      assert_requested :get, "#{Stripe.api_base}/v1/balance?expand[]=available" do |req|
        assert_equal("acct_123", req.headers["Stripe-Account"])
        true
      end
      assert balance.is_a?(Stripe::Balance)
    end
    should "be retrievable with params and an explicitly empty opts" do
      balance = Stripe::Balance.retrieve({ expand: ["available"] }, {})
      assert_requested :get, "#{Stripe.api_base}/v1/balance?expand[]=available" do |req|
        assert_nil(req.headers["Stripe-Account"])
        true
      end
      assert balance.is_a?(Stripe::Balance)
    end

    context "invalid inputs" do
      should "handle null values gracefully" do
        assert_raises(ArgumentError) { Stripe::Balance.retrieve(nil) }
      end

      should "handle empty strings gracefully" do
        assert_raises(ArgumentError) { Stripe::Balance.retrieve("") }
      end

      should "handle incorrect data types gracefully" do
        assert_raises(TypeError) { Stripe::Balance.retrieve(123) }
      end
    end
  end
end
