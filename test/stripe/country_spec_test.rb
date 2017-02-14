require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class CountrySpecTest < Test::Unit::TestCase
    FIXTURE = API_FIXTURES.fetch(:country_spec)

    should "be listable" do
      c = Stripe::CountrySpec.list
      assert_requested :get, "#{Stripe.api_base}/v1/country_specs"
      assert c.data.kind_of?(Array)
      assert c.data[0].kind_of?(Stripe::CountrySpec)
    end

    should "be retrievable" do
      s = Stripe::CountrySpec.retrieve(FIXTURE[:id])
      assert_requested :get, "#{Stripe.api_base}/v1/country_specs/#{FIXTURE[:id]}"
      assert(s.kind_of?(Stripe::CountrySpec))
    end
  end
end
