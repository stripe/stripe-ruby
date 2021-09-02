# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

module EwStripe
  class CountrySpecTest < Test::Unit::TestCase
    should "be listable" do
      c = EwStripe::CountrySpec.list
      assert_requested :get, "#{EwStripe.api_base}/v1/country_specs"
      assert c.data.is_a?(Array)
      assert c.data[0].is_a?(EwStripe::CountrySpec)
    end

    should "be retrievable" do
      s = EwStripe::CountrySpec.retrieve("US")
      assert_requested :get, "#{EwStripe.api_base}/v1/country_specs/US"
      assert(s.is_a?(EwStripe::CountrySpec))
    end
  end
end
