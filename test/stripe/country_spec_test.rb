# frozen_string_literal: true

require ::File.expand_path("../../test_helper", __FILE__)

module Stripe
  class CountrySpecTest < Test::Unit::TestCase
    should "be listable" do
      c = Stripe::CountrySpec.list
      assert_requested :get, "#{Stripe.api_base}/v1/country_specs"
      assert c.data.is_a?(Array)
      assert c.data[0].is_a?(Stripe::CountrySpec)
    end

    should "be retrievable" do
      s = Stripe::CountrySpec.retrieve("US")
      assert_requested :get, "#{Stripe.api_base}/v1/country_specs/US"
      assert(s.is_a?(Stripe::CountrySpec))
    end
  end
end
