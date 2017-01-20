require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class CountrySpecTest < Test::Unit::TestCase
    should "be listable" do
      stub_request(:get, "#{Stripe.api_base}/v1/country_specs").
        to_return(body: make_response(make_country_spec_array))
      c = Stripe::CountrySpec.list

      assert(c.data.kind_of?(Array))
      assert(c.data[0].kind_of?(Stripe::CountrySpec))
    end

    should "be retrievable" do
      stub_request(:get, "#{Stripe.api_base}/v1/country_specs/US").
        to_return(body: make_response(make_country_spec))
      s = Stripe::CountrySpec.retrieve('US')
      assert(s.kind_of?(Stripe::CountrySpec))
    end
  end
end
