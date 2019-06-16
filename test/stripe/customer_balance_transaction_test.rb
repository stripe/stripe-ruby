# frozen_string_literal: true

require ::File.expand_path("../../test_helper", __FILE__)

module Stripe
  class CustomerBalanceTransactionTest < Test::Unit::TestCase
    context "#resource_url" do
      should "return a resource URL" do
        transaction = Stripe::CustomerBalanceTransaction.construct_from(
          id: "cbtxn_123",
          customer: "cus_123"
        )
        assert_equal "/v1/customers/cus_123/balance_transactions/cbtxn_123",
                     transaction.resource_url
      end

      should "raise without a customer" do
        transaction = Stripe::CustomerBalanceTransaction.construct_from(id: "cbtxn_123")
        assert_raises NotImplementedError do
          transaction.resource_url
        end
      end
    end

    should "raise on #retrieve" do
      assert_raises NotImplementedError do
        Stripe::CustomerBalanceTransaction.retrieve("cbtxn_123")
      end
    end

    should "raise on #update" do
      assert_raises NotImplementedError do
        Stripe::CustomerBalanceTransaction.update("cbtxn_123")
      end
    end
  end
end
