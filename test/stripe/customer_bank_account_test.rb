require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class CustomerBankAccountTest < Test::Unit::TestCase
    CUSTOMER_BANK_ACCOUNT_URL = '/v1/customers/test_customer/bank_accounts/test_bank_account'

    def customer
      @mock.expects(:get).once.returns(test_response(test_customer))
      Stripe::Customer.retrieve('test_customer')
    end

    should "customer bank_accounts should be listable" do
      c = customer
      @mock.expects(:get).once.returns(test_response(test_bank_account_array(customer.id)))
      bank_accounts = c.sources.all(:object => "bank_account").data
      assert bank_accounts.kind_of? Array
      assert bank_accounts[0].kind_of? Stripe::BankAccount
    end

    should "be able to verify a bank account" do
      c = customer
      @mock.expects(:get).once.returns(test_response(test_bank_account))
      bank_account = c.sources.retrieve("test_bank_account")
      @mock.expects(:post).once.with do |url, api_key, params|
        url == "#{Stripe.api_base}/v1/customers/#{c.id}/bank_accounts/#{bank_account.id}/verify" && api_key.nil? #&& CGI.parse(params) == 'amounts[]=1&amounts[]=1'
      end.returns(test_response(test_bank_account_verify(:amounts => [1,1])))
      assert bank_account.kind_of? Stripe::BankAccount
      response = bank_account.verify({:amounts=>[1,1]})
    end

    should "bank account should have the correct url" do
      c = customer
      @mock.expects(:get).once.returns(test_response(test_bank_account(
                                                         :id => 'test_bank_account',
                                                         :customer => 'test_customer'
                                                     )))
      card = c.sources.retrieve('bank_account')
      assert_equal CUSTOMER_BANK_ACCOUNT_URL, card.url
    end

    should "bank accounts should be deletable" do
      c = customer
      @mock.expects(:get).once.returns(test_response(test_bank_account))
      @mock.expects(:delete).once.returns(test_response(test_bank_account(:deleted => true)))
      card = c.sources.retrieve('bank_account')
      card.delete
      assert card.deleted
    end

    should "create should return a new bank account" do
      c = customer
      @mock.expects(:post).once.returns(test_response(test_bank_account(:id => "test_card")))
      card = c.sources.create(:source => "tok_41YJ05ijAaWaFS")
      assert_equal "test_card", card.id
    end
  end
end
