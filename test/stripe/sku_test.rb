require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class SKUTest < Test::Unit::TestCase
    should "SKUs should be listable" do
      @mock.expects(:get).once.
        returns(make_response(make_sku_array("test_product")))
      skus = Stripe::SKU.list
      assert skus.data.kind_of? Array
      skus.each do |sku|
        assert sku.kind_of?(Stripe::SKU)
      end
    end

    should "SKUs should be updateable" do
      @mock.expects(:post).once.
        with("#{Stripe.api_base}/v1/skus/test_sku", nil, 'metadata[foo]=bar').
        returns(make_response(make_sku(:metadata => {foo: 'bar'})))
      s = Stripe::SKU.update("test_sku", metadata: {foo: 'bar'})
      assert_equal 'bar', s.metadata['foo']
    end

    should "SKUs should be deletable" do
      @mock.expects(:get).once.returns(make_response(make_sku))
      @mock.expects(:delete).once.returns(make_response(make_sku(:deleted => true)))

      s = Stripe::SKU.retrieve("test_sku")
      s.delete
      assert s.deleted
    end

  end
end
