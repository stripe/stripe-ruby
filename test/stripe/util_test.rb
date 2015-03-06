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

    should "parse an empty argument list" do
      assert_equal([{}, {}], Stripe::Util.parse_argument_list([]))
    end

    should "parse a 1-item argument list" do
      assert_equal(['foo', {}], Stripe::Util.parse_argument_list(['foo']))
    end

    should "parse a 2-item argument list" do
      assert_equal(['foo', 'bar'], Stripe::Util.parse_argument_list(['foo', 'bar']))
    end

    should "raise on NilClass arguments" do
      assert_raise { Stripe::Util.parse_opts(nil) }
    end

    should "raise on NilClass api keys" do
      assert_raise { Stripe::Util.parse_opts(api_key: nil) }
    end

    should "check api keys" do
      assert_raise { Stripe::Util.check_bad_api_key!(nil) }
      assert_nothing_raised { Stripe::Util.check_bad_api_key!('test-key') }
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
