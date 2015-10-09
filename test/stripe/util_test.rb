require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class UtilTest < Test::Unit::TestCase
    should "#encode_parameters should prepare parameters for an HTTP request" do
      params = {
        :a => 3,
        :b => "+foo?",
        :c => "bar&baz",
        :d => { :a => "a", :b => "b" },
        :e => [0, 1],
      }
      assert_equal(
        "a=3&b=%2Bfoo%3F&c=bar%26baz&d[a]=a&d[b]=b&e[]=0&e[]=1",
        Stripe::Util.encode_parameters(params)
      )
    end

    should "#url_encode should prepare strings for HTTP" do
      assert_equal "foo",      Stripe::Util.url_encode("foo")
      assert_equal "foo",      Stripe::Util.url_encode(:foo)
      assert_equal "foo%2B",   Stripe::Util.url_encode("foo+")
      assert_equal "foo%26",   Stripe::Util.url_encode("foo&")
      assert_equal "foo[bar]", Stripe::Util.url_encode("foo[bar]")
    end

    should "#flatten_params should encode parameters according to Rails convention" do
      params = {
        :a => 3,
        :b => "foo?",
        :c => "bar&baz",
        :d => { :a => "a", :b => "b" },
        :e => [0, 1],
      }
      assert_equal([
        ["a",    3],
        ["b",    "foo?"],
        ["c",    "bar&baz"],
        ["d[a]", "a"],
        ["d[b]", "b"],
        ["e[]",  0],
        ["e[]",  1],
      ], Stripe::Util.flatten_params(params))
    end

    should "#symbolize_names should convert names to symbols" do
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

    should "#normalize_opts should reject nil keys" do
      assert_raise { Stripe::Util.normalize_opts(nil) }
      assert_raise { Stripe::Util.normalize_opts(:api_key => nil) }
    end
  end
end
