require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class BankAccountTest < Test::Unit::TestCase
    include WithoutLegacyStubs

    BANK_ACCOUNT_ID = "ba_1234"
    CUSTOMER_ID = "cus_1234"

    should "be verifiable" do
      account = Stripe::BankAccount.construct_from({
        :id => BANK_ACCOUNT_ID,
        :customer => CUSTOMER_ID,
      })
      account.verify(:amounts => [1,2])

      assert_requested :post, "#{Stripe.api_url}/v1/customers/#{CUSTOMER_ID}/sources/#{BANK_ACCOUNT_ID}/verify"
    end
  end
end
