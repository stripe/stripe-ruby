require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class StripeErrorTest < Test::Unit::TestCase
    context "#to_s" do
      should "convert to string" do
        e = StripeError.new("message")
        assert_equal "message", e.to_s

        e = StripeError.new("message", 200)
        assert_equal "(Status 200) message", e.to_s

        e = StripeError.new("message", nil, nil, nil, { :request_id => "request-id" })
        assert_equal "(Request request-id) message", e.to_s
      end
    end
  end
end
