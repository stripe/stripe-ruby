# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

module EwStripe
  class TaxCodeTest < Test::Unit::TestCase
    should "be listable" do
      tax_codes = EwStripe::TaxCode.list
      assert_requested :get, "#{EwStripe.api_base}/v1/tax_codes"
      assert tax_codes.data.is_a?(Array)
      assert tax_codes.first.is_a?(EwStripe::TaxCode)
    end

    should "be retrievable" do
      tax_code = EwStripe::TaxCode.retrieve("txcd_123")
      assert_requested :get, "#{EwStripe.api_base}/v1/tax_codes/txcd_123"
      assert tax_code.is_a?(EwStripe::TaxCode)
    end
  end
end
