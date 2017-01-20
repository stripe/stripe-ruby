require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class ApplePayDomainTest < Test::Unit::TestCase
    should "create should return a new Apple Pay domain" do
      stub_request(:post, "#{Stripe.api_base}/v1/apple_pay/domains").
        to_return(body: JSON.generate(make_apple_pay_domain))
      d = Stripe::ApplePayDomain.create
      assert_equal "apwc_test_domain", d.id
    end

    should "domains should be deletable" do
      stub_request(:get, "#{Stripe.api_base}/v1/apple_pay/domains/apwc_test_domain").
        to_return(body: JSON.generate(make_apple_pay_domain))
      stub_request(:delete, "#{Stripe.api_base}/v1/apple_pay/domains/apwc_test_domain").
        to_return(body: JSON.generate(make_apple_pay_domain(:deleted => true)))
      domain = Stripe::ApplePayDomain.retrieve('apwc_test_domain')
      domain.delete
      assert domain.deleted
    end

    should "domains should be listable" do
      stub_request(:get, "#{Stripe.api_base}/v1/apple_pay/domains").
        to_return(body: JSON.generate(make_apple_pay_domain_array))
      domains = Stripe::ApplePayDomain.list
      assert domains.data.kind_of?(Array)
      assert_equal 3, domains.data.length
      domains.each do |domain|
        assert domain.kind_of?(Stripe::ApplePayDomain)
      end
    end
  end
end
