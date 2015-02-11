require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class AccountTest < Test::Unit::TestCase
    should "account should be retrievable" do
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

    should "account should be retrievable via plural endpoint" do
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

    should "be able to deauthorize an account" do
      resp = {:id => 'acct_1234', :email => "test+bindings@stripe.com", :charge_enabled => false, :details_submitted => false}
      @mock.expects(:get).once.returns(test_response(resp))
      a = Stripe::Account.retrieve


      @mock.expects(:post).once.with do |url, api_key, params|
        url == "#{Stripe.connect_base}/oauth/deauthorize" && api_key.nil? && CGI.parse(params) == { 'client_id' => [ 'ca_1234' ], 'stripe_user_id' => [ a.id ]}
      end.returns(test_response({ 'stripe_user_id' => a.id }))
      a.deauthorize('ca_1234', 'sk_test_1234')
    end
  end
end
