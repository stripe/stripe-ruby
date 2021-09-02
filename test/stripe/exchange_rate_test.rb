# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

module EwStripe
  class ExchangeRateTest < Test::Unit::TestCase
    should "be listable" do
      list_rates = EwStripe::ExchangeRate.list
      assert_requested :get, "#{EwStripe.api_base}/v1/exchange_rates"
      assert list_rates.data.is_a?(Array)
      assert list_rates.data.first.is_a?(EwStripe::ExchangeRate)
    end

    should "be retrievable" do
      rates = EwStripe::ExchangeRate.retrieve("usd")
      assert_requested :get, "#{EwStripe.api_base}/v1/exchange_rates/usd"
      assert rates.is_a?(EwStripe::ExchangeRate)
    end
  end
end
