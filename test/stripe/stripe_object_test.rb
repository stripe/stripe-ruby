require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class StripeObjectTest < Test::Unit::TestCase
    should "implement #respond_to correctly" do
      obj = Stripe::StripeObject.construct_from({ :some_key => "something", :id => 123 })

      assert obj.respond_to_missing?(:id)
      assert obj.respond_to_missing?(:some_key)
      assert !obj.respond_to_missing?(:some_other_key)
    end
  end
end