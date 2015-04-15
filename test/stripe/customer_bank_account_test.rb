require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class BankAccountTest < Test::Unit::TestCase
    CUSTOMER_BANK_ACCOUNT_URL = '/v1/customers/test_customer/bank_accounts/test_bank_account'

    def customer
      @mock.expects(:get).once.returns(test_response(test_customer))
      Stripe::Customer.retrieve('test_customer')
    end

    should "customer bank accounts should be listable" do
      c = customer
      @mock.expects(:get).once.returns(test_response(test_customer_bank_account_array(customer.id)))
      bank_accounts = c.bank_accounts.all(:object => "bank_accounts").data
      assert bank_accounts.kind_of? Array
      assert bank_accounts[0].kind_of? Stripe::BankAccount
    end

    should "customer bank accounts should have the correct url" do
      c = customer
      @mock.expects(:get).once.returns(test_response(test_bank_account(
        :id => 'test_bank_account',
        :customer => 'test_customer'
      )))
      bank_account = c.bank_accounts.retrieve('bank_account')
      assert_equal CUSTOMER_BANK_ACCOUNT_URL, bank_account.url
    end

    should "customer bank accounts should be deletable" do
      c = customer
      @mock.expects(:get).once.returns(test_response(test_bank_account))
      @mock.expects(:delete).once.returns(test_response(test_bank_account(:deleted => true)))
      bank_account = c.bank_accounts.retrieve('bank_account')
      bank_account.delete
      assert bank_account.deleted
    end

    should "create should return a new customer bank account" do
      c = customer
      @mock.expects(:post).once.returns(test_response(test_bank_account(:id => "test_bank_account")))
      bank_account = c.bank_accounts.create(:source => "tok_41YJ05ijAaWaFS")
      assert_equal "test_bank_account", bank_account.id
    end
  end
end
