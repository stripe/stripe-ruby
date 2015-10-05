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

      should 'allows api_key to be overridden' do
        Thread.new do
          Stripe.api_key_override = 'local'
          assert_equal 'local', Stripe.api_key
        end
      end

      should 'doesnt share override between threads' do
        Thread.new do
          Stripe.api_key_override = 'local'
          assert_equal 'local', Stripe.api_key
          Thread.new do
            assert_equal 'global', Stripe.api_key
          end
        end
      end
    end
  end
end
