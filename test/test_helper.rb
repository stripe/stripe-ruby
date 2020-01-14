# frozen_string_literal: true

require "coveralls"
Coveralls.wear!("test_frameworks")

require "stripe"
require "test/unit"
require "mocha/setup"
require "stringio"
require "shoulda/context"
require "webmock/test_unit"

PROJECT_ROOT = ::File.expand_path("../", __dir__)

require ::File.expand_path("test_data", __dir__)
require ::File.expand_path("stripe_mock", __dir__)

# If changing this number, please also change it in `.travis.yml`.
MOCK_MINIMUM_VERSION = "0.79.0"
MOCK_PORT = Stripe::StripeMock.start

# Disable all real network connections except those that are outgoing to
# stripe-mock.
WebMock.disable_net_connect!(allow: "localhost:#{MOCK_PORT}")

# Try one initial test connection to stripe-mock so that if there's a problem
# we can print one error and fail fast so that it's more clear to the user how
# they should fix the problem.
begin
  resp = Net::HTTP.get_response(URI("http://localhost:#{MOCK_PORT}/"))
  version = resp["Stripe-Mock-Version"]

  if version.nil?
    abort("Couldn't find `Stripe-Mock-Version` in response from " \
      "`localhost:#{MOCK_PORT}`. Is the service running there stripe-mock?")
  end

  if version != "master" &&
     Gem::Version.new(version) < Gem::Version.new(MOCK_MINIMUM_VERSION)
    abort("Your version of stripe-mock (#{version}) is too old. The minimum " \
      "version to run this test suite is #{MOCK_MINIMUM_VERSION}. Please " \
      "see its repository for upgrade instructions.")
  end
rescue Errno::ECONNREFUSED
  abort("Couldn't reach stripe-mock at `localhost:#{MOCK_PORT}`. Is " \
    "it running? Please see README for setup instructions.")
end

Test::Unit.at_exit do
  Stripe::StripeMock.stop
end

module Test
  module Unit
    class TestCase
      include Stripe::TestData
      include Mocha

      setup do
        Stripe.api_key = "sk_test_123"
        Stripe.api_base = "http://localhost:#{MOCK_PORT}"

        stub_connect
      end

      teardown do
        Stripe.api_key = nil
      end

      private def stub_connect
        stub_request(:any, /^#{Stripe.connect_base}/).to_return(body: "{}")
      end
    end
  end
end
