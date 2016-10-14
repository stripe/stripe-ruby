require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class ApplePayDomainTest < Test::Unit::TestCase
    include WithoutLegacyStubs

    should "create should return a new Apple Pay domain" do
      Stripe::ApplePayDomain.create(domain_name: "example.com")
      assert_requested :post, "#{Stripe.api_url}/v1/apple_pay/domains"
    end

    should "domains should be listable" do
      Stripe::ApplePayDomain.list
      assert_requested :get, "#{Stripe.api_url}/v1/apple_pay/domains"
    end

    should "domains should be retrievable" do
      domain = Stripe::ApplePayDomain.list.first
      domain = Stripe::ApplePayDomain.retrieve(domain.id)
      assert_requested :get, "#{Stripe.api_url}/v1/apple_pay/domains/#{domain.id}"
    end

    should "domains should be deletable" do
      domain = Stripe::ApplePayDomain.list.first
      domain.delete
      assert_requested :delete, "#{Stripe.api_url}/v1/apple_pay/domains/#{domain.id}"
    end
  end
end
