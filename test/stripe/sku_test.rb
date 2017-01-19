require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class SKUTest < Test::Unit::TestCase
    should "SKUs should be listable" do
      stub_request(:get, "#{Stripe.api_base}/v1/skus").
        to_return(body: make_response(make_sku_array("test_product")))
      skus = Stripe::SKU.list
      assert skus.data.kind_of? Array
      skus.each do |sku|
        assert sku.kind_of?(Stripe::SKU)
      end
    end

    should "SKUs should be updateable" do
      stub_request(:post, "#{Stripe.api_base}/v1/skus/test_sku").
        with(body: { metadata: { foo: "bar" } }).
        to_return(body: make_response(make_sku))
      _ = Stripe::SKU.update("test_sku", metadata: {foo: 'bar'})
    end

    should "SKUs should be deletable" do
      stub_request(:get, "#{Stripe.api_base}/v1/skus/test_sku").
        to_return(body: make_response(make_sku))
      s = Stripe::SKU.retrieve("test_sku")

      stub_request(:delete, "#{Stripe.api_base}/v1/skus/#{s.id}").
        to_return(body: make_response(make_sku(:deleted => true)))
      s.delete
    end

  end
end
