# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

module Stripe
  class ApplePayDomainTest < Test::Unit::TestCase
    should "be listable" do
      domains = Stripe::ApplePayDomain.list
      assert_requested :get, "#{Stripe.api_base}/v1/apple_pay/domains"
      assert domains.data.is_a?(Array)
      assert domains.data[0].is_a?(Stripe::ApplePayDomain)
    end

    should "be retrievable" do
      domain = Stripe::ApplePayDomain.retrieve("apwc_123")
      assert_requested :get, "#{Stripe.api_base}/v1/apple_pay/domains/apwc_123"
      assert domain.is_a?(Stripe::ApplePayDomain)
    end

    should "be creatable" do
      domain = Stripe::ApplePayDomain.create(domain_name: "example.com")
      assert_requested :post, "#{Stripe.api_base}/v1/apple_pay/domains"
      assert domain.is_a?(Stripe::ApplePayDomain)
    end

    should "be deletable" do
    end

    context "#delete" do
      should "be deletable" do
        domain = Stripe::ApplePayDomain.retrieve("apwc_123")
        domain = domain.delete
        assert_requested :delete, "#{Stripe.api_base}/v1/apple_pay/domains/#{domain.id}"
        assert domain.is_a?(Stripe::ApplePayDomain)
      end
    end

    context ".delete" do
      should "be deletable" do
        domain = Stripe::ApplePayDomain.delete("apwc_123")
        assert_requested :delete, "#{Stripe.api_base}/v1/apple_pay/domains/apwc_123"
        assert domain.is_a?(Stripe::ApplePayDomain)
      end
    end
  end
end
