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
        :f => "",

        # note the empty hash won't even show up in the request
        :g => [],
      }
      assert_equal(
        "a=3&b=%2Bfoo%3F&c=bar%26baz&d[a]=a&d[b]=b&e[]=0&e[]=1&f=",
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
      params = [
        [:a, 3],
        [:b, "foo?"],
        [:c, "bar&baz"],
        [:d, { :a => "a", :b => "b" }],
        [:e, [0, 1]],
        [:f, [
          { :bar => "1", :foo => "2" },
          { :baz => "3", :foo => "4" },
        ]],
      ]
      assert_equal([
        ["a",        3],
        ["b",        "foo?"],
        ["c",        "bar&baz"],
        ["d[a]",     "a"],
        ["d[b]",     "b"],
        ["e[]",      0],
        ["e[]",      1],

        # *The key here is the order*. In order to be properly interpreted as
        # an array of hashes on the server, everything from a single hash must
        # come in at once. A duplicate key in an array triggers a new element.
        ["f[][bar]", "1"],
        ["f[][foo]", "2"],
        ["f[][baz]", "3"],
        ["f[][foo]", "4"],
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

    should "#convert_to_stripe_object should pass through unknown types" do
      obj = Util.convert_to_stripe_object(7, {})
      assert_equal 7, obj
    end

    should "#convert_to_stripe_object should turn hashes into StripeObjects" do
      obj = Util.convert_to_stripe_object({ :foo => "bar" }, {})
      assert obj.is_a?(StripeObject)
      assert_equal "bar", obj.foo
    end

    should "#convert_to_stripe_object should turn lists into ListObjects" do
      obj = Util.convert_to_stripe_object({ :object => "list" }, {})
      assert obj.is_a?(ListObject)
    end

    should "#convert_to_stripe_object should marshal other classes" do
      obj = Util.convert_to_stripe_object({ :object => "account" }, {})
      assert obj.is_a?(Account)
    end

    should "#convert_to_stripe_object should marshal arrays" do
      obj = Util.convert_to_stripe_object([1, 2, 3], {})
      assert_equal [1, 2, 3], obj
    end
  end
end
