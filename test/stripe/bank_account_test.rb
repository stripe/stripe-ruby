# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

module Stripe
  class BankAccountTest < Test::Unit::TestCase
    context "#resource_url" do
      should "return an external account URL" do
        bank_account = Stripe::BankAccount.construct_from(
          account: "acct_123",
          id: "ba_123"
        )
        assert_equal "/v1/accounts/acct_123/external_accounts/ba_123",
                     bank_account.resource_url
      end

      should "return a customer URL" do
        bank_account = Stripe::BankAccount.construct_from(
          customer: "cus_123",
          id: "ba_123"
        )
        assert_equal "/v1/customers/cus_123/sources/ba_123",
                     bank_account.resource_url
      end
    end

    context "#verify" do
      should "verify the account" do
        bank_account = Stripe::BankAccount.construct_from(customer: "cus_123",
                                                          id: "ba_123")
        bank_account = bank_account.verify(amounts: [1, 2])
        assert bank_account.is_a?(Stripe::BankAccount)
      end
    end
  end
end
