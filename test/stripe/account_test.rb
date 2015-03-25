require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class AccountTest < Test::Unit::TestCase
    should "be retrievable" do
      resp = {:email => "test+bindings@stripe.com", :charge_enabled => false, :details_submitted => false}
      @mock.expects(:get).
        once.
        with('https://api.stripe.com/v1/account', nil, nil).
        returns(test_response(resp))
      a = Stripe::Account.retrieve
      assert_equal "test+bindings@stripe.com", a.email
      assert !a.charge_enabled
      assert !a.details_submitted
    end

    should "be retrievable via plural endpoint" do
      resp = {:email => "test+bindings@stripe.com", :charge_enabled => false, :details_submitted => false}
      @mock.expects(:get).
        once.
        with('https://api.stripe.com/v1/accounts/acct_foo', nil, nil).
        returns(test_response(resp))
      a = Stripe::Account.retrieve('acct_foo')
      assert_equal "test+bindings@stripe.com", a.email
      assert !a.charge_enabled
      assert !a.details_submitted
    end

    should "be retrievable using an API key as the only argument" do
      account = mock
      Stripe::Account.expects(:new).once.with(nil, {:api_key => 'sk_foobar'}).returns(account)
      account.expects(:refresh).once
      Stripe::Account.retrieve('sk_foobar')
    end

    should "be updatable" do
      resp = {
        :id => 'acct_foo',
        :legal_entity => {
          :address => {
            :line1 => '1 Two Three'
          }
        }
      }
      @mock.expects(:get).
        once.
        with('https://api.stripe.com/v1/accounts/acct_foo', nil, nil).
        returns(test_response(resp))

      @mock.expects(:post).
        once.
        with('https://api.stripe.com/v1/accounts/acct_foo', nil, 'legal_entity[first_name]=Bob&legal_entity[address][line1]=2%20Three%20Four').
        returns(test_response(resp))

      a = Stripe::Account.retrieve('acct_foo')
      a.legal_entity.first_name = 'Bob'
      a.legal_entity.address.line1 = '2 Three Four'
      a.save
    end

    should "be able to deauthorize an account" do
      resp = {:id => 'acct_1234', :email => "test+bindings@stripe.com", :charge_enabled => false, :details_submitted => false}
      @mock.expects(:get).once.returns(test_response(resp))
      a = Stripe::Account.retrieve


      @mock.expects(:post).once.with do |url, api_key, params|
        url == "#{Stripe.connect_base}/oauth/deauthorize" && api_key.nil? && CGI.parse(params) == { 'client_id' => [ 'ca_1234' ], 'stripe_user_id' => [ a.id ]}
      end.returns(test_response({ 'stripe_user_id' => a.id }))
      a.deauthorize('ca_1234', 'sk_test_1234')
    end

    should "reject nil api keys" do
      assert_raise TypeError do
        Stripe::Account.retrieve(nil)
      end
      assert_raise TypeError do
        Stripe::Account.retrieve(:api_key => nil)
      end
    end
  end
end
