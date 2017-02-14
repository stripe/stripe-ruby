require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class BankAccountTest < Test::Unit::TestCase
    FIXTURE = API_FIXTURES.fetch(:external_account_source)

    context "#resource_url" do
      should "return an external account URL" do
        account_id = API_FIXTURES.fetch(:account)[:id]
        bank_account = Stripe::BankAccount.construct_from(
          account: account_id,
          id: FIXTURE[:id]
        )
        assert_equal "/v1/accounts/#{account_id}/external_accounts/#{FIXTURE[:id]}",
          bank_account.resource_url
      end

      should "return a customer URL" do
        customer_id = API_FIXTURES.fetch(:customer)[:id]
        bank_account = Stripe::BankAccount.construct_from(
          customer: customer_id,
          id: FIXTURE[:id]
        )
        assert_equal "/v1/customers/#{customer_id}/sources/#{FIXTURE[:id]}",
          bank_account.resource_url
      end
    end

    context "#verify" do
      should 'verify the account' do
        customer_id = API_FIXTURES.fetch(:customer)[:id]
        bank_account = Stripe::BankAccount.construct_from({
          customer: customer_id,
          id: FIXTURE[:id]
        })
        bank_account = bank_account.verify(amounts: [1,2])
        assert bank_account.kind_of?(Stripe::BankAccount)
      end
    end
  end
end
