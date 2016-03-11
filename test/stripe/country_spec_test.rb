require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class CountrySpecTest < Test::Unit::TestCase
    should "be listable" do
      @mock.expects(:get).once.
      returns(make_response(country_spec_array))
      c = Stripe::CountrySpec.list

      assert_equal('/v1/country_specs', c.resource_url)
      assert_equal('list', c.object)
      assert(c.data.kind_of?(Array))
      assert_equal('US', c.data[0].id)
      assert(c.data[0].kind_of?(Stripe::CountrySpec))
    end

    should "be retrievable" do
      resp = make_country_spec
      @mock.expects(:get).once.
      with('https://api.stripe.com/v1/country_specs/US', nil, nil).
      returns(make_response(resp))
      s = Stripe::CountrySpec.retrieve('US')

      assert_equal('/v1/country_specs/US', s.resource_url)
      assert_equal('country_spec', s.object)
      assert(s.kind_of?(Stripe::CountrySpec))

      s.supported_bank_account_currencies.map{ |k,v|  assert v.kind_of?(Array) }
      assert_equal(['US'], s.supported_bank_account_currencies['usd'])
      assert(s.supported_payment_currencies.include?('usd'))
      assert s.supported_payment_currencies.kind_of?(Array)
      assert s.supported_payment_methods.kind_of?(Array)

      ['individual', 'company'].map{ |type|
        item = s.verification_fields[type]
        assert item.minimum.include?('external_account')
        assert item.additional.include?('legal_entity.verification.document')
        assert item.additional.kind_of?(Array)
        assert item.minimum.kind_of?(Array)
      }
    end
  end
end
