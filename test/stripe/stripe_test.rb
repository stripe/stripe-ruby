require 'pry'
require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class BaseTest < Test::Unit::TestCase
    context "api key override" do
      setup do
        Stripe.api_key = "global"
      end

      teardown do
        Stripe.api_key = nil
      end

      should 'be backwards compatible' do
        Thread.new do
          assert_equal Stripe.api_key, 'global'
        end
      end

      should 'allow api_key to be overridden' do
        Stripe.api_key_override = 'local'
        assert_equal 'local', Stripe.api_key
      end

      should 'not share override between threads' do
        Stripe.api_key_override = 'local'
        assert_equal 'local', Stripe.api_key
        Thread.new do
          assert_equal 'global', Stripe.api_key
        end
      end

      should 'allow key to be passed into request method' do
        @mock.expects(:get).once.returns(make_response(make_customer_array))
        Stripe.api_key_override = 'local'
        _, opts = Stripe.request(:get, '/v1/customers', 'override_key')
        assert_equal 'override_key', opts
      end

      should 'green light' do
        @mock.expects(:get).once.returns(make_response(make_customer_array))
        _, opts = Stripe.request(:get, '/v1/customers', nil)
        assert_equal 'global', opts
      end
    end
  end
end
