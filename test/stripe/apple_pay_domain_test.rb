require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class ApplePayDomainTest < Test::Unit::TestCase
    FIXTURE = API_FIXTURES.fetch(:apple_pay_domain)

    should "be listable" do
      domains = Stripe::ApplePayDomain.list
      assert_requested :get, "#{Stripe.api_base}/v1/apple_pay/domains"
      assert domains.data.kind_of?(Array)
      assert domains.data[0].kind_of?(Stripe::ApplePayDomain)
    end

    should "be retrievable" do
      domain = Stripe::ApplePayDomain.retrieve(FIXTURE[:id])
      assert_requested :get, "#{Stripe.api_base}/v1/apple_pay/domains/#{FIXTURE[:id]}"
      assert domain.kind_of?(Stripe::ApplePayDomain)
    end

    should "be creatable" do
      domain = Stripe::ApplePayDomain.create(:domain_name => "example.com")
      assert_requested :post, "#{Stripe.api_base}/v1/apple_pay/domains"
      assert domain.kind_of?(Stripe::ApplePayDomain)
    end

    should "be deletable" do
      domain = Stripe::ApplePayDomain.retrieve(FIXTURE[:id])
      domain = domain.delete
      assert_requested :delete, "#{Stripe.api_base}/v1/apple_pay/domains/#{FIXTURE[:id]}"
      assert domain.kind_of?(Stripe::ApplePayDomain)
    end
  end
end
