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

    should "SKUs should not be deletable" do
      assert_raises NoMethodError do
        @mock.expects(:get).once.returns(make_response(make_sku))
        p = Stripe::SKU.retrieve("test_product")
        p.delete
      end
    end

  end
end
