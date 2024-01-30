# frozen_string_literal: true

require File.expand_path("../test_helper", __dir__)

module Stripe
  class CustomerCashBalanceTransactionTest < Test::Unit::TestCase
    should "raise on #list" do
      assert_raises InvalidRequestError do
        Stripe::CustomeCashBalanceTransaction.list
      end
    end
  end
end
