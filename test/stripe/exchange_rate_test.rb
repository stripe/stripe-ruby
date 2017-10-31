require File.expand_path("../../test_helper", __FILE__)

module Stripe
  class ExchangeRateTest < Test::Unit::TestCase
    should "be listable" do
      # TODO: remove stub once stripe-mock supports /v1/exchange_rates
      stub_request(:get, "#{Stripe.api_base}/v1/exchange_rates")
        .to_return(body: JSON.generate(
          object: "list",
          data: [
            {
              id: "eur",
              object: "exchange_rate",
              rates: { "usd" => 1.18221 },
            },
            {
              id: "usd",
              object: "exchange_rate",
              rates: { "eur" => 0.845876 },
            },
          ]
        ))

      list_rates = Stripe::ExchangeRate.list
      assert_requested :get, "#{Stripe.api_base}/v1/exchange_rates"
      assert list_rates.data.is_a?(Array)
      assert list_rates.data.first.is_a?(Stripe::ExchangeRate)
    end

    should "be retrievable" do
      # TODO: remove stub once stripe-mock supports /v1/exchange_rates
      stub_request(:get, "#{Stripe.api_base}/v1/exchange_rates/usd")
        .to_return(body: JSON.generate(
          id: "usd",
          object: "exchange_rate",
          rates: { "eur" => 0.845876 }
        ))

      rates = Stripe::ExchangeRate.retrieve("usd")
      assert_requested :get, "#{Stripe.api_base}/v1/exchange_rates/usd"
      assert rates.is_a?(Stripe::ExchangeRate)
    end
  end
end
