# frozen_string_literal: true

require ::File.expand_path("../../../test_helper", __FILE__)

module Stripe
  module Terminal
    class ConnectionTokenTest < Test::Unit::TestCase
      should "be creatable" do
        connection_token = Stripe::Terminal::ConnectionToken.create

        assert_requested :post, "#{Stripe.api_base}/v1/terminal/connection_tokens"
        assert connection_token.is_a?(Stripe::Terminal::ConnectionToken)
      end
    end
  end
end
