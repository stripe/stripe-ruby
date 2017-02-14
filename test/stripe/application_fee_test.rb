require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class ApplicationFeeTest < Test::Unit::TestCase
    FIXTURE = API_FIXTURES.fetch(:platform_earning)

    should "be listable" do
      fees = Stripe::ApplicationFee.list
      assert_requested :get, "#{Stripe.api_base}/v1/application_fees"
      assert fees.data.kind_of?(Array)
      assert fees.data[0].kind_of?(Stripe::ApplicationFee)
    end
  end
end
