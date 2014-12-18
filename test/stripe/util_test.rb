require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class UtilTest < Test::Unit::TestCase
    should "symbolize_names should convert names to symbols" do
      start = {
        'foo' => 'bar',
        'array' => [{ 'foo' => 'bar' }],
        'nested' => {
          1 => 2,
          :symbol => 9,
          'string' => nil
        }
      }
      finish = {
        :foo => 'bar',
        :array => [{ :foo => 'bar' }],
        :nested => {
          1 => 2,
          :symbol => 9,
          :string => nil
        }
      }

      symbolized = Stripe::Util.symbolize_names(start)
      assert_equal(finish, symbolized)
    end

    should "parse a nil opts argument" do
      api_key, headers = Stripe::Util.parse_opts(nil)
      assert_equal({}, headers)
      assert_equal(nil, api_key)
    end

    should "parse a string opts argument" do
      api_key, headers = Stripe::Util.parse_opts('foo')
      assert_equal({}, headers)
      assert_equal('foo', api_key)
    end

    should "parse a hash opts argument with just api_key" do
      api_key, headers = Stripe::Util.parse_opts({:api_key => 'foo'})
      assert_equal({}, headers)
      assert_equal('foo', api_key)
    end

    should "parse a hash opts argument with just idempotency_key" do
      api_key, headers = Stripe::Util.parse_opts({:idempotency_key => 'foo'})
      assert_equal({:idempotency_key => 'foo'}, headers)
      assert_equal(nil, api_key)
    end

    should "parse a hash opts argument both idempotency_key and api_key" do
      api_key, headers = Stripe::Util.parse_opts({:api_key => 'bar', :idempotency_key => 'foo'})
      assert_equal({:idempotency_key => 'foo'}, headers)
      assert_equal('bar', api_key)
    end
  end
end
