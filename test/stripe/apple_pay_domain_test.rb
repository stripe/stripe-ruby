# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

module EwStripe
  class ApplePayDomainTest < Test::Unit::TestCase
    should "be listable" do
      domains = EwStripe::ApplePayDomain.list
      assert_requested :get, "#{EwStripe.api_base}/v1/apple_pay/domains"
      assert domains.data.is_a?(Array)
      assert domains.data[0].is_a?(EwStripe::ApplePayDomain)
    end

    should "be retrievable" do
      domain = EwStripe::ApplePayDomain.retrieve("apwc_123")
      assert_requested :get, "#{EwStripe.api_base}/v1/apple_pay/domains/apwc_123"
      assert domain.is_a?(EwStripe::ApplePayDomain)
    end

    should "be creatable" do
      domain = EwStripe::ApplePayDomain.create(domain_name: "example.com")
      assert_requested :post, "#{EwStripe.api_base}/v1/apple_pay/domains"
      assert domain.is_a?(EwStripe::ApplePayDomain)
    end

    should "be deletable" do
    end

    context "#delete" do
      should "be deletable" do
        domain = EwStripe::ApplePayDomain.retrieve("apwc_123")
        domain = domain.delete
        assert_requested :delete, "#{EwStripe.api_base}/v1/apple_pay/domains/#{domain.id}"
        assert domain.is_a?(EwStripe::ApplePayDomain)
      end
    end

    context ".delete" do
      should "be deletable" do
        domain = EwStripe::ApplePayDomain.delete("apwc_123")
        assert_requested :delete, "#{EwStripe.api_base}/v1/apple_pay/domains/apwc_123"
        assert domain.is_a?(EwStripe::ApplePayDomain)
      end
    end
  end
end
