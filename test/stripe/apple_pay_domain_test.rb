require File.expand_path('../../test_helper', __FILE__)

module Stripe
  module ApplePay
    class DomainTest < Test::Unit::TestCase
      should "create should return a new Apple Pay domain" do
        @mock.expects(:post).once
             .with('https://api.stripe.com/v1/apple_pay/domains', nil, '')
             .returns(make_response(make_apple_pay_domain))
        d = Stripe::ApplePay::Domain.create
        assert_equal "apwc_test_domain", d.id
      end

      should "domains should be deletable" do
        @mock.expects(:get).once
             .with('https://api.stripe.com/v1/apple_pay/domains/apwc_test_domain', nil, nil)
             .returns(make_response(make_apple_pay_domain))
        @mock.expects(:delete).once.returns(make_response(make_apple_pay_domain(:deleted => true)))
        domain = Stripe::ApplePay::Domain.retrieve('apwc_test_domain')
        domain.delete
        assert domain.deleted
      end

      should "domains should be listable" do
        @mock.expects(:get).once.with('https://api.stripe.com/v1/apple_pay/domains', nil, nil)
             .returns(make_response(make_apple_pay_domain_array))
        domains = Stripe::ApplePay::Domain.list
        assert domains.data.kind_of?(Array)
        assert_equal 3, domains.data.length
        domains.each do |domain|
          assert domain.kind_of?(Stripe::ApplePay::Domain)
        end
      end
    end
  end
end
