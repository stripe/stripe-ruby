require "coveralls"
Coveralls.wear!("test_frameworks")

require "stripe"
require "test/unit"
require "mocha/setup"
require "stringio"
require "shoulda/context"
require "timecop"
require "webmock/test_unit"

PROJECT_ROOT = File.expand_path("../../", __FILE__)

require File.expand_path("../test_data", __FILE__)

MOCK_MINIMUM_VERSION = "0.11.1".freeze
MOCK_PORT = ENV["STRIPE_MOCK_PORT"] || 12_111

# Disable all real network connections except those that are outgoing to
# stripe-mock.
WebMock.disable_net_connect!(allow: "localhost:#{MOCK_PORT}")

# Try one initial test connection to stripe-mock so that if there's a problem
# we can print one error and fail fast so that it's more clear to the user how
# they should fix the problem.
begin
  resp = Faraday.get("http://localhost:#{MOCK_PORT}/")
  version = resp.headers["Stripe-Mock-Version"]
  if version != "master" &&
     Gem::Version.new(version) < Gem::Version.new(MOCK_MINIMUM_VERSION)
    abort("Your version of stripe-mock (#{version}) is too old. The minimum " \
      "version to run this test suite is #{MOCK_MINIMUM_VERSION}. Please " \
      "see its repository for upgrade instructions.")
  end
rescue Faraday::ConnectionFailed
  abort("Couldn't reach stripe-mock at `localhost:#{MOCK_PORT}`. Is " \
    "it running? Please see README for setup instructions.")
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

      private

      def stub_connect
        stub_request(:any, /^#{Stripe.connect_base}/).to_return(body: "{}")
      end
    end
  end
end
