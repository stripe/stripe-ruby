# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

module Stripe
  class StripeResponseTest < Test::Unit::TestCase
    context "StripeResponseHeaders" do
      should "allow case-insensitive header access" do
        headers = { "Request-Id" => "request-id" }
        http_resp = create_net_http_resp(200, "", headers)

        headers = StripeResponseHeaders.from_net_http(http_resp)

        assert_equal "request-id", headers["request-id"]
        assert_equal "request-id", headers["Request-Id"]
        assert_equal "request-id", headers["Request-ID"]
      end

      should "initialize without error" do
        StripeResponseHeaders.new({})
        StripeResponseHeaders.new("Request-Id" => [])
        StripeResponseHeaders.new("Request-Id" => ["request-id"])
      end

      should "initialize with error on a malformed hash" do
        assert_raises(ArgumentError) do
          StripeResponseHeaders.new(nil)
        end

        assert_raises(ArgumentError) do
          StripeResponseHeaders.new(1 => [])
        end

        assert_raises(ArgumentError) do
          StripeResponseHeaders.new("Request-Id" => 1)
        end

        assert_raises(ArgumentError) do
          StripeResponseHeaders.new("Request-Id" => [1])
        end
      end

      should "warn on duplicate header values" do
        old_stderr = $stderr
        $stderr = StringIO.new
        begin
          headers = StripeResponseHeaders.new("Duplicated" => %w[a b])
          assert_equal "a", headers["Duplicated"]
          assert_equal "Duplicate header values for `Duplicated`; returning only first",
                       $stderr.string.rstrip
        ensure
          $stderr = old_stderr
        end
      end
    end

    [StripeResponse, StripeHeadersOnlyResponse].each do |response_class|
      context "StripeResponseBase mixin for #{response_class}" do
        context ".from_net_http" do
          should "populate the base fields" do
            code = 200
            body = '{"foo": "bar"}'
            headers = { "Request-Id" => "request-id" }
            http_resp = create_net_http_resp(code, body, headers)

            resp = response_class.from_net_http(http_resp)

            assert_equal "request-id", resp.http_headers["Request-ID"]
            assert_equal code, resp.http_status
            assert_equal "request-id", resp.request_id
          end
        end
      end
    end

    context "#StripeResponse" do
      context ".from_net_http" do
        should "converts to StripeResponse" do
          code = 200
          body = '{"foo": "bar"}'
          http_resp = create_net_http_resp(code, body, {})

          resp = StripeResponse.from_net_http(http_resp)

          assert_instance_of StripeResponse, resp
          assert_equal JSON.parse(body, symbolize_names: true), resp.data
          assert_equal body, resp.http_body
        end
      end

      context "Headers backwards compatibility" do
        should "alias StripeResponseHeaders" do
          headers = StripeResponse::Headers.new("Request-Id" => ["request-id"])

          assert_instance_of StripeResponseHeaders, headers
        end
      end
    end

    # Synthesizes a `Net::HTTPResponse` object for testing purposes.
    private def create_net_http_resp(code, body, headers)
      # The "1.1" is HTTP version.
      http_resp = Net::HTTPResponse.new("1.1", code.to_s, nil)
      http_resp.body = body

      # This is obviously super sketchy, but the Ruby team has done everything
      # in their power to make these objects as difficult to test with as
      # possible. Even if you specify a body, accessing `#body` the first time
      # will attempt to read from a non-existent socket which will subsequently
      # blow up. Setting this internal variable skips that read and allows the
      # object to use the body that we specified above.
      http_resp.instance_variable_set(:@read, true)

      headers.each do |name, value|
        http_resp[name] = value
      end

      http_resp
    end
  end
end
