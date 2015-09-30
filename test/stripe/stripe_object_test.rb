require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class StripeObjectTest < Test::Unit::TestCase
    should "implement #respond_to correctly" do
      obj = Stripe::StripeObject.construct_from({ :id => 1, :foo => 'bar' })
      assert obj.respond_to?(:id)
      assert obj.respond_to?(:foo)
      assert !obj.respond_to?(:baz)
    end

    should "marshal be insensitive to strings vs. symbols when constructin" do
      obj = Stripe::StripeObject.construct_from({ :id => 1, 'name' => 'Stripe' })
      assert_equal 1, obj[:id]
      assert_equal 'Stripe', obj[:name]
    end

    should "marshal a stripe object correctly" do
      obj = Stripe::StripeObject.construct_from({ :id => 1, :name => 'Stripe' }, {:api_key => 'apikey'})
      m = Marshal.load(Marshal.dump(obj))
      assert_equal 1, m.id
      assert_equal 'Stripe', m.name
      expected_hash = {:api_key => 'apikey'}
      assert_equal expected_hash, m.instance_variable_get('@opts')
    end

    should "recursively call to_hash on its values" do
      nested_hash = { :id => 7, :foo => 'bar' }
      nested = Stripe::StripeObject.construct_from(nested_hash)
      obj = Stripe::StripeObject.construct_from({ :id => 1, :nested => nested, :list => [nested] })
      expected_hash = { :id => 1, :nested => nested_hash, :list => [nested_hash] }
      assert_equal expected_hash, obj.to_hash
    end

    should "assign question mark accessors for booleans" do
      obj = Stripe::StripeObject.construct_from({ :id => 1, :bool => true, :not_bool => 'bar' })
      assert obj.respond_to?(:bool?)
      assert obj.bool?
      refute obj.respond_to?(:not_bool?)
    end
  end
end
