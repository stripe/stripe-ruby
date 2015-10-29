require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class BankAccountTest < Test::Unit::TestCase

    should 'be verifiable' do
      bank = Stripe::BankAccount.construct_from({
        :id => 'ba_foo',
        :customer => 'cus_bar'
      })

      @mock.expects(:post).
        once.
        with('https://api.stripe.com/v1/customers/cus_bar/sources/ba_foo/verify', nil, 'amounts[]=1&amounts[]=2').
        returns(make_response(:status => 'verified'))

      bank.verify(:amounts => [1,2])
    end

  end
end
