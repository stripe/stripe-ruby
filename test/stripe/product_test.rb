require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class ProductTest < Test::Unit::TestCase
    should "products should be listable" do
      @mock.expects(:get).once.returns(make_response(make_product_array))
      products = Stripe::Product.list
      assert products.data.kind_of?(Array)
      products.each do |product|
        assert product.kind_of?(Stripe::Product)
      end
    end

    should "products should not be deletable" do
      assert_raises NoMethodError do
        @mock.expects(:get).once.returns(make_response(make_product))
        p = Stripe::Product.retrieve("test_product")
        p.delete
      end
    end

    should "products should be updateable" do
      @mock.expects(:get).once.returns(make_response(make_product))
      @mock.expects(:post).once.returns(make_response(make_product))
      p = Stripe::Product.new("test_product")
      p.refresh
      p.description = "New product description"
      p.save
    end

    should "products should allow metadata updates" do
      @mock.expects(:get).once.returns(make_response(make_product))
      @mock.expects(:post).once.returns(make_response(make_product))
      p = Stripe::Product.new("test_product")
      p.refresh
      p.metadata['key'] = 'value'
      p.save
    end

  end
end
