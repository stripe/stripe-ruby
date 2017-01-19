require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class BankAccountTest < Test::Unit::TestCase

    should 'be verifiable' do
      bank = Stripe::BankAccount.construct_from({
        :id => 'ba_foo',
        :customer => 'cus_bar'
      })

      stub_request(:post, "#{Stripe.api_base}/v1/customers/#{bank.customer}/sources/#{bank.id}/verify").
        with(body: { 'amounts' => ['1', '2'] }).
        to_return(body: make_response(:status => 'verified'))

      bank.verify(:amounts => [1,2])
    end

  end
end
