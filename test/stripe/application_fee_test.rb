# frozen_string_literal: true

require ::File.expand_path("../../test_helper", __FILE__)

module Stripe
  class ApplicationFeeTest < Test::Unit::TestCase
    should "be listable" do
      fees = Stripe::ApplicationFee.list
      assert_requested :get, "#{Stripe.api_base}/v1/application_fees"
      assert fees.data.is_a?(Array)
      assert fees.data[0].is_a?(Stripe::ApplicationFee)
    end
  end
end
