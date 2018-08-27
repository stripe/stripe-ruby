# frozen_string_literal: true

require ::File.expand_path("../../test_helper", __FILE__)

module Stripe
  class ExchangeRateTest < Test::Unit::TestCase
    should "be listable" do
      list_rates = Stripe::ExchangeRate.list
      assert_requested :get, "#{Stripe.api_base}/v1/exchange_rates"
      assert list_rates.data.is_a?(Array)
      assert list_rates.data.first.is_a?(Stripe::ExchangeRate)
    end

    should "be retrievable" do
      rates = Stripe::ExchangeRate.retrieve("usd")
      assert_requested :get, "#{Stripe.api_base}/v1/exchange_rates/usd"
      assert rates.is_a?(Stripe::ExchangeRate)
    end
  end
end
