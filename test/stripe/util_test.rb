# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

module Stripe
  class UtilTest < Test::Unit::TestCase
    context "OPTS_COPYABLE" do
      should "include :apibase" do
        assert_include Stripe::Util::OPTS_COPYABLE, :api_base
      end
    end

    context "OPTS_PERSISTABLE" do
      should "include :client" do
        assert_include Stripe::Util::OPTS_PERSISTABLE, :client
      end

      should "not include :idempotency_key" do
        refute_includes Stripe::Util::OPTS_PERSISTABLE, :idempotency_key
      end
    end

    should "#encode_parameters should prepare parameters for an HTTP request" do
      params = {
        a: 3,
        b: "+foo?",
        c: "bar&baz",
        d: { a: "a", b: "b" },
        e: [0, 1],
        f: "",

        # note the empty hash won't even show up in the request
        g: [],
      }
      assert_equal(
        "a=3&b=%2Bfoo%3F&c=bar%26baz&d[a]=a&d[b]=b&e[0]=0&e[1]=1&f=",
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
        [:d, { a: "a", b: "b" }],
        [:e, [0, 1]],
        [:f, [
          { foo: "1", ghi: "2" },
          { foo: "3", bar: "4" },
        ],],
      ]
      assert_equal([
        ["a", 3],
        ["b",        "foo?"],
        ["c",        "bar&baz"],
        ["d[a]",     "a"],
        ["d[b]",     "b"],
        ["e[0]",      0],
        ["e[1]",      1],

        # *The key here is the order*. In order to be properly interpreted as
        # an array of hashes on the server, everything from a single hash must
        # come in at once. A duplicate key in an array triggers a new element.
        ["f[0][foo]", "1"],
        ["f[0][ghi]", "2"],
        ["f[1][foo]", "3"],
        ["f[1][bar]", "4"],
      ], Stripe::Util.flatten_params(params))
    end

    should "#symbolize_names should convert names to symbols" do
      start = {
        "foo" => "bar",
        "array" => [{ "foo" => "bar" }],
        "nested" => {
          1 => 2,
          :symbol => 9,
          "string" => nil,
        },
      }
      finish = {
        foo: "bar",
        array: [{ foo: "bar" }],
        nested: {
          1 => 2,
          :symbol => 9,
          :string => nil,
        },
      }

      symbolized = Stripe::Util.symbolize_names(start)
      assert_equal(finish, symbolized)
    end

    should "#normalize_opts should reject nil keys" do
      assert_raise { Stripe::Util.normalize_opts(nil) }
      assert_raise { Stripe::Util.normalize_opts(api_key: nil) }
    end

    should "#convert_to_stripe_object should pass through unknown types" do
      obj = Util.convert_to_stripe_object(7, {})
      assert_equal 7, obj
    end

    should "#convert_to_stripe_object should turn hashes into StripeObjects" do
      obj = Util.convert_to_stripe_object({ foo: "bar" }, {})
      assert obj.is_a?(StripeObject)
      assert_equal "bar", obj.foo
    end

    should "#convert_to_stripe_object should turn lists into ListObjects" do
      obj = Util.convert_to_stripe_object({ object: "list" }, {})
      assert obj.is_a?(ListObject)
    end

    should "#convert_to_stripe_object should marshal other classes" do
      obj = Util.convert_to_stripe_object({ object: "account" }, {})
      assert obj.is_a?(Account)
    end

    should "#convert_to_stripe_object should marshal arrays" do
      obj = Util.convert_to_stripe_object([1, 2, 3], {})
      assert_equal [1, 2, 3], obj
    end

    context ".request_id_dashboard_url" do
      should "generate a livemode URL" do
        assert_equal "https://dashboard.stripe.com/live/logs/request-id",
                     Util.request_id_dashboard_url("request-id", "sk_live_123")
      end

      should "generate a testmode URL" do
        assert_equal "https://dashboard.stripe.com/test/logs/request-id",
                     Util.request_id_dashboard_url("request-id", "sk_test_123")
      end

      should "default to a testmode URL" do
        assert_equal "https://dashboard.stripe.com/test/logs/request-id",
                     Util.request_id_dashboard_url("request-id", nil)
      end
    end

    context ".log_*" do
      setup do
        @old_log_level = Stripe.log_level
        Stripe.log_level = nil

        @old_stderr = $stderr
        $stderr = StringIO.new

        @old_stdout = $stdout
        $stdout = StringIO.new
      end

      teardown do
        Stripe.log_level = @old_log_level
        $stderr = @old_stderr
        $stdout = @old_stdout
      end

      context ".log_debug" do
        should "not log if logging is disabled" do
          Util.log_debug("foo")
          assert_equal "", $stdout.string
        end

        should "log if level set to debug" do
          Stripe.log_level = Stripe::LEVEL_DEBUG
          Util.log_debug("foo")
          assert_equal "message=foo level=debug \n", $stdout.string
        end

        should "not log if level set to error" do
          Stripe.log_level = Stripe::LEVEL_ERROR
          Util.log_debug("foo")
          assert_equal "", $stdout.string
        end

        should "not log if level set to info" do
          Stripe.log_level = Stripe::LEVEL_INFO
          Util.log_debug("foo")
          assert_equal "", $stdout.string
        end
      end

      context ".log_error" do
        should "not log if logging is disabled" do
          Util.log_error("foo")
          assert_equal "", $stdout.string
        end

        should "log if level set to debug" do
          Stripe.log_level = Stripe::LEVEL_DEBUG
          Util.log_error("foo")
          assert_equal "message=foo level=error \n", $stderr.string
        end

        should "log if level set to error" do
          Stripe.log_level = Stripe::LEVEL_ERROR
          Util.log_error("foo")
          assert_equal "message=foo level=error \n", $stderr.string
        end

        should "log if level set to info" do
          Stripe.log_level = Stripe::LEVEL_INFO
          Util.log_error("foo")
          assert_equal "message=foo level=error \n", $stderr.string
        end
      end

      context ".log_info" do
        should "not log if logging is disabled" do
          Util.log_info("foo")
          assert_equal "", $stdout.string
        end

        should "log if level set to debug" do
          Stripe.log_level = Stripe::LEVEL_DEBUG
          Util.log_info("foo")
          assert_equal "message=foo level=info \n", $stdout.string
        end

        should "not log if level set to error" do
          Stripe.log_level = Stripe::LEVEL_ERROR
          Util.log_debug("foo")
          assert_equal "", $stdout.string
        end

        should "log if level set to info" do
          Stripe.log_level = Stripe::LEVEL_INFO
          Util.log_info("foo")
          assert_equal "message=foo level=info \n", $stdout.string
        end
      end
    end

    context ".log_* with a logger" do
      setup do
        @out = StringIO.new
        logger = ::Logger.new(@out)

        # Set a really simple formatter to make matching output as easy as
        # possible.
        logger.formatter = proc { |_severity, _datetime, _progname, message|
          message
        }

        Stripe.logger = logger
      end

      context ".log_debug" do
        should "log to the logger" do
          Util.log_debug("foo")
          assert_equal "message=foo ", @out.string
        end
      end

      context ".log_error" do
        should "log to the logger" do
          Util.log_error("foo")
          assert_equal "message=foo ", @out.string
        end
      end

      context ".log_info" do
        should "log to the logger" do
          Util.log_info("foo")
          assert_equal "message=foo ", @out.string
        end
      end
    end

    context ".normalize_headers" do
      should "normalize the format of a header key" do
        assert_equal({ "Request-Id" => nil },
                     Util.normalize_headers("Request-Id" => nil))
        assert_equal({ "Request-Id" => nil },
                     Util.normalize_headers("request-id" => nil))
        assert_equal({ "Request-Id" => nil },
                     Util.normalize_headers("Request-ID" => nil))
        assert_equal({ "Request-Id" => nil },
                     Util.normalize_headers(request_id: nil))
      end

      should "tolerate bad formatting" do
        assert_equal({ "Request-Id" => nil },
                     Util.normalize_headers("-Request--Id-" => nil))
        assert_equal({ "Request-Id" => nil },
                     Util.normalize_headers(request__id: nil))
      end
    end

    #
    # private
    #
    # I don't feel particularly good about using #send to invoke these, but I
    # want them hidden from the public interface, and each method is far easier
    # to test in isolation (as opposed to going through a public method).
    #

    context ".colorize" do
      should "colorize for a TTY" do
        assert_equal "\033[0;32;49mfoo\033[0m",
                     Util.send(:colorize, "foo", :green, true)
      end

      should "not colorize otherwise" do
        assert_equal "foo", Util.send(:colorize, "foo", :green, false)
      end
    end

    context ".level_name" do
      should "convert levels to names" do
        assert_equal "debug", Util.send(:level_name, LEVEL_DEBUG)
        assert_equal "error", Util.send(:level_name, LEVEL_ERROR)
        assert_equal "info", Util.send(:level_name, LEVEL_INFO)
      end
    end

    context ".log_internal" do
      should "log in a terminal friendly way" do
        out = StringIO.new

        # Sketchy as anything, but saves us from pulling in a mocking library.
        # Open this instance of StringIO, and add a method override so that it
        # looks like a TTY.
        out.instance_eval do
          def isatty
            true
          end
        end

        Util.send(:log_internal, "message", { foo: "bar" },
                  color: :green, level: Stripe::LEVEL_DEBUG, logger: nil, out: out)
        assert_equal "\e[0;32;49mDEBU\e[0m message \e[0;32;49mfoo\e[0m=bar\n",
                     out.string
      end

      should "log in a data friendly way" do
        out = StringIO.new
        Util.send(:log_internal, "message", { foo: "bar" },
                  color: :green, level: Stripe::LEVEL_DEBUG, logger: nil, out: out)
        assert_equal "message=message level=debug foo=bar\n",
                     out.string
      end

      should "log to a logger if set" do
        out = StringIO.new
        logger = ::Logger.new(out)

        # Set a really simple formatter to make matching output as easy as
        # possible.
        logger.formatter = proc { |_severity, _datetime, _progname, message|
          message
        }

        Util.send(:log_internal, "message", { foo: "bar" },
                  color: :green, level: Stripe::LEVEL_DEBUG, logger: logger, out: $stdout)
        assert_equal "message=message foo=bar",
                     out.string
      end
    end

    context ".wrap_logfmt_value" do
      should "pass through simple values" do
        assert_equal "abc", Util.send(:wrap_logfmt_value, "abc")
        assert_equal "123", Util.send(:wrap_logfmt_value, "123")
        assert_equal "a-b_c/d", Util.send(:wrap_logfmt_value, "a-b_c/d")
      end

      should "pass through numerics" do
        assert_equal 123, Util.send(:wrap_logfmt_value, 123)
        assert_equal 1.23, Util.send(:wrap_logfmt_value, 1.23)
      end

      should "wrap more complex values in double quotes" do
        assert_equal %("abc=123"), Util.send(:wrap_logfmt_value, %(abc=123))
      end

      should "escape double quotes already in the value" do
        assert_equal %("abc=\\"123\\""), Util.send(:wrap_logfmt_value, %(abc="123"))
      end

      should "remove newlines" do
        assert_equal %("abc"), Util.send(:wrap_logfmt_value, "a\nb\nc")
      end

      should "not error if given a non-string" do
        assert_equal "true", Util.send(:wrap_logfmt_value, true)
      end
    end
  end
end
