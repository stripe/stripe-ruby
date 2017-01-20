require 'stripe'
require 'test/unit'
require 'mocha/setup'
require 'stringio'
require 'shoulda/context'
require 'webmock/test_unit'
require File.expand_path('../test_data', __FILE__)

class Test::Unit::TestCase
  include Stripe::TestData
  include Mocha

  setup do
    Stripe.api_key = "foo"
  end

  teardown do
    Stripe.api_key = nil
  end
end
