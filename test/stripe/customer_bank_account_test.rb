require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class CustomerBankAccountTest < Test::Unit::TestCase
    CUSTOMER_CARD_URL = '/v1/customers/test_customer/sources/test_bank_account'

    def customer
      @mock.expects(:get).once.returns(test_response(test_customer))
      Stripe::Customer.retrieve('test_customer')
    end

    should "customer bank_accounts should be listable" do
      c = customer
      @mock.expects(:get).once.returns(test_response(test_bank_account_array(customer.id)))
      bank_accounts = c.sources.all(:object => "bank_account").data
      puts bank_accounts
      assert bank_accounts.kind_of? Array
      assert bank_accounts[0].kind_of? Stripe::BankAccount
    end

    should "be able to verify a bank account" do
      c = customer
      c.bank_account("test_bank_account").verify({:amounts=>[1,1]})
      @mock.expects(:post).once.with do |url, api_key, params|
        url == "#{Stripe.api_base}/v1/customers/test_customer/bank_accounts/test_bank_account/verify" && api_key.nil? && CGI.parse(params) == {'amounts' => [1,1]}
      end
      #.returns(test_response(test_bank_account_verify(:amounts => [1,1])))
    end

    should "customer cards should have the correct url" do
      c = customer
      @mock.expects(:get).once.returns(test_response(test_card(
                                                         :id => 'test_card',
                                                         :customer => 'test_customer'
                                                     )))
      card = c.sources.retrieve('card')
      assert_equal CUSTOMER_CARD_URL, card.url
    end

    should "customer cards should be deletable" do
      c = customer
      @mock.expects(:get).once.returns(test_response(test_card))
      @mock.expects(:delete).once.returns(test_response(test_card(:deleted => true)))
      card = c.sources.retrieve('card')
      card.delete
      assert card.deleted
    end

    should "customer cards should be updateable" do
      c = customer
      @mock.expects(:get).once.returns(test_response(test_card(:exp_year => "2000")))
      @mock.expects(:post).once.returns(test_response(test_card(:exp_year => "2100")))
      card = c.sources.retrieve('card')
      assert_equal "2000", card.exp_year
      card.exp_year = "2100"
      card.save
      assert_equal "2100", card.exp_year
    end

    should "create should return a new customer card" do
      c = customer
      @mock.expects(:post).once.returns(test_response(test_card(:id => "test_card")))
      card = c.sources.create(:source => "tok_41YJ05ijAaWaFS")
      assert_equal "test_card", card.id
    end
  end
end
