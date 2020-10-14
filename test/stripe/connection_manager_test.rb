# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

module Stripe
  class ConnectionManagerTest < Test::Unit::TestCase
    setup do
      @manager = Stripe::ConnectionManager.new
    end

    context "#initialize" do
      should "set #last_used to current time" do
        t = 123.0
        Util.stubs(:monotonic_time).returns(t)
        assert_equal t, Stripe::ConnectionManager.new.last_used
      end
    end

    context "#clear" do
      should "clear any active connections" do
        stub_request(:post, "#{Stripe.api_base}/path")
          .to_return(body: JSON.generate(object: "account"))

        # Making a request lets us know that at least one connection is open.
        @manager.execute_request(:post, "#{Stripe.api_base}/path")

        # Now clear the manager.
        @manager.clear

        # This check isn't great, but it's otherwise difficult to tell that
        # anything happened with just the public-facing API.
        assert_equal({}, @manager.instance_variable_get(:@active_connections))
      end
    end

    context "#connection_for" do
      should "correctly initialize a connection" do
        old_proxy = Stripe.proxy

        old_open_timeout = Stripe.open_timeout
        old_read_timeout = Stripe.read_timeout
        old_write_timeout = Stripe.write_timeout

        begin
          # Make sure any global initialization here is undone in the `ensure`
          # block below.
          Stripe.proxy = "http://user:pass@localhost:8080"

          Stripe.open_timeout = 123
          Stripe.read_timeout = 456
          Stripe.write_timeout = 789 if WRITE_TIMEOUT_SUPPORTED

          conn = @manager.connection_for("https://stripe.com")

          # Host/port
          assert_equal "stripe.com", conn.address
          assert_equal 443, conn.port

          # Proxy
          assert_equal "localhost", conn.proxy_address
          assert_equal 8080, conn.proxy_port
          assert_equal "user", conn.proxy_user
          assert_equal "pass", conn.proxy_pass

          # Timeouts
          assert_equal 123, conn.open_timeout
          assert_equal 456, conn.read_timeout
          assert_equal 789, conn.write_timeout if WRITE_TIMEOUT_SUPPORTED

          assert_equal true, conn.use_ssl?
          assert_equal OpenSSL::SSL::VERIFY_PEER, conn.verify_mode
          assert_equal Stripe.ca_store, conn.cert_store
        ensure
          Stripe.proxy = old_proxy

          Stripe.open_timeout = old_open_timeout
          Stripe.read_timeout = old_read_timeout
          Stripe.write_timeout = old_write_timeout if WRITE_TIMEOUT_SUPPORTED
        end
      end

      should "produce the same connection multiple times" do
        conn1 = @manager.connection_for("https://stripe.com")
        conn2 = @manager.connection_for("https://stripe.com")

        assert_equal conn1, conn2
      end

      should "produce different connections for different hosts" do
        conn1 = @manager.connection_for("https://example.com")
        conn2 = @manager.connection_for("https://stripe.com")

        refute_equal conn1, conn2
      end

      should "produce different connections for different ports" do
        conn1 = @manager.connection_for("https://stripe.com:80")
        conn2 = @manager.connection_for("https://stripe.com:443")

        refute_equal conn1, conn2
      end
    end

    context "#execute_request" do
      should "make a request" do
        stub_request(:post, "#{Stripe.api_base}/path?query=bar")
          .with(
            body: "body=foo",
            headers: { "Stripe-Account" => "bar" }
          )
          .to_return(body: JSON.generate(object: "account"))

        @manager.execute_request(:post, "#{Stripe.api_base}/path",
                                 body: "body=foo",
                                 headers: { "Stripe-Account" => "bar" },
                                 query: "query=bar")
      end

      should "perform basic argument validation" do
        e = assert_raises ArgumentError do
          @manager.execute_request("POST", "#{Stripe.api_base}/path")
        end
        assert_equal e.message, "method should be a symbol"

        e = assert_raises ArgumentError do
          @manager.execute_request(:post, :uri)
        end
        assert_equal e.message, "uri should be a string"

        e = assert_raises ArgumentError do
          @manager.execute_request(:post, "#{Stripe.api_base}/path",
                                   body: {})
        end
        assert_equal e.message, "body should be a string"

        e = assert_raises ArgumentError do
          @manager.execute_request(:post, "#{Stripe.api_base}/path",
                                   headers: "foo")
        end
        assert_equal e.message, "headers should be a hash"

        e = assert_raises ArgumentError do
          @manager.execute_request(:post, "#{Stripe.api_base}/path",
                                   query: {})
        end
        assert_equal e.message, "query should be a string"
      end

      should "set #last_used to current time" do
        stub_request(:post, "#{Stripe.api_base}/path")
          .to_return(body: JSON.generate(object: "account"))

        t = 123.0
        Util.stubs(:monotonic_time).returns(t)

        manager = Stripe::ConnectionManager.new

        # `#last_used` is also set by the constructor, so make sure we get a
        # new value for it.
        Util.stubs(:monotonic_time).returns(t + 1.0)

        manager.execute_request(:post, "#{Stripe.api_base}/path")
        assert_equal t + 1.0, manager.last_used
      end
    end
  end
end
