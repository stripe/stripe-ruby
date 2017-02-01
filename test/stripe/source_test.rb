require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class SourceTest < Test::Unit::TestCase
    FIXTURE = API_FIXTURES.fetch(:source)

    should "be retrievable" do
      source = Stripe::Source.retrieve(FIXTURE[:id])
      assert_requested :get, "#{Stripe.api_base}/v1/sources/#{FIXTURE[:id]}"
      assert source.kind_of?(Stripe::Source)
    end

    should "be creatable" do
      source = Stripe::Source.create(
        type: 'card',
        token: API_FIXTURES.fetch(:token)[:id]
      )
      assert_requested :post, "#{Stripe.api_base}/v1/sources"
      assert source.kind_of?(Stripe::Card)
    end

    should "be saveable" do
      source = Stripe::Source.retrieve(FIXTURE[:id])
      source.metadata['key'] = 'value'
      source.save
      assert_requested :post, "#{Stripe.api_base}/v1/sources/#{FIXTURE[:id]}"
    end

    should "be updateable" do
      source = Stripe::Source.update(FIXTURE[:id], metadata: {foo: 'bar'})
      assert_requested :post, "#{Stripe.api_base}/v1/sources/#{FIXTURE[:id]}"
      assert source.kind_of?(Stripe::Card)
    end

    context "#verify" do
      should "verify the source" do
        source = Stripe::Source.retrieve(FIXTURE[:id])
        source = source.verify(:values => [1,2])
        assert source.kind_of?(Stripe::Source)
      end
    end
  end
end
