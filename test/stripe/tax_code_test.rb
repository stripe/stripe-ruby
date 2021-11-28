# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

module Stripe
  class TaxCodeTest < Test::Unit::TestCase
    should "be listable" do
      tax_codes = Stripe::TaxCode.list
      assert_requested :get, "#{Stripe.api_base}/v1/tax_codes"
      assert tax_codes.data.is_a?(Array)
      assert tax_codes.first.is_a?(Stripe::TaxCode)
    end

    should "be retrievable" do
      tax_code = Stripe::TaxCode.retrieve("txcd_123")
      assert_requested :get, "#{Stripe.api_base}/v1/tax_codes/txcd_123"
      assert tax_code.is_a?(Stripe::TaxCode)
    end
  end
end
