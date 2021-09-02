# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

module EwStripe
  class BalanceTest < Test::Unit::TestCase
    should "be retrievable" do
      balance = EwStripe::Balance.retrieve
      assert_requested :get, "#{EwStripe.api_base}/v1/balance"
      assert balance.is_a?(EwStripe::Balance)
    end
  end
end
