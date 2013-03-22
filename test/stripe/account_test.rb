require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class AccountTest < Test::Unit::TestCase
    should "account should be retrievable" do
      resp = {:email => "test+bindings@stripe.com", :charge_enabled => false, :details_submitted => false}
      @mock.expects(:get).once.returns(test_response(resp))
      a = Stripe::Account.retrieve
      assert_equal "test+bindings@stripe.com", a.email
      assert !a.charge_enabled
      assert !a.details_submitted
    end
  end
end