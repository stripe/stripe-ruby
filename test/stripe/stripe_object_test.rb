require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class StripeObjectTest < Test::Unit::TestCase
    should "implement #respond_to correctly" do
      obj = Stripe::StripeObject.construct_from({ :id => 1, :foo => 'bar' })
      assert obj.respond_to?(:id)
      assert obj.respond_to?(:foo)
      assert !obj.respond_to?(:baz)
    end

    should "marshal a stripe object correctly" do
      obj = Stripe::StripeObject.construct_from({ :id => 1, :name => 'Stripe' }, 'apikey')
      m = Marshal.load(Marshal.dump(obj))
      assert_equal m.id, 1
      assert_equal m.name, 'Stripe'
      assert_equal m.api_key, 'apikey'
    end
  end
end
