require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class ApplePayDomainTest < Test::Unit::TestCase
    include WithoutLegacyStubs

    should "be creatable" do
      domain = Stripe::ApplePayDomain.create(domain_name: "example.com")
      assert_kind_of Stripe::ApplePayDomain, domain
      assert_requested :post, "#{Stripe.api_url}/v1/apple_pay/domains"
    end

    should "be listable" do
      domains = Stripe::ApplePayDomain.list
      assert_kind_of Stripe::ApplePayDomain, domains.first
      assert_requested :get, "#{Stripe.api_url}/v1/apple_pay/domains"
    end

    should "be retrievable" do
      domain = Stripe::ApplePayDomain.retrieve("apwc_123")
      assert_kind_of Stripe::ApplePayDomain, domain
      assert_requested :get, "#{Stripe.api_url}/v1/apple_pay/domains/apwc_123"
    end

    should "be deletable" do
      domain = Stripe::ApplePayDomain.list.first
      domain = domain.delete
      assert_kind_of Stripe::ApplePayDomain, domain
      assert_requested :delete, "#{Stripe.api_url}/v1/apple_pay/domains/#{domain.id}"
    end
  end
end
