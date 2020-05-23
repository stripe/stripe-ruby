# frozen_string_literal: true

require ::File.expand_path("../../test_helper", __FILE__)

module Stripe
  class CustomerBalanceTransactionTest < Test::Unit::TestCase
    context "#resource_url" do
      should "return a resource URL" do
        transaction = StripeClient.new.customer_balance_transactions.construct_from(
          id: "cbtxn_123",
          customer: "cus_123"
        )
        assert_equal "/v1/customers/cus_123/balance_transactions/cbtxn_123",
                     transaction.resource_url
      end

      should "raise without a customer" do
        transaction = StripeClient.new.customer_balance_transactions.construct_from(id: "cbtxn_123")
        assert_raises NotImplementedError do
          transaction.resource_url
        end
      end
    end

    should "raise on #retrieve" do
      assert_raises NotImplementedError do
        StripeClient.new.customer_balance_transactions.retrieve("cbtxn_123")
      end
    end

    should "raise on #update" do
      assert_raises NotImplementedError do
        StripeClient.new.customer_balance_transactions.update("cbtxn_123")
      end
    end
  end
end
