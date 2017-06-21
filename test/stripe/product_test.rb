require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class ProductTest < Test::Unit::TestCase
    should "be listable" do
      products = Stripe::Product.list
      assert_requested :get, "#{Stripe.api_base}/v1/products"
      assert products.data.kind_of?(Array)
      assert products.data[0].kind_of?(Stripe::Product)
    end

    should "be retrievable" do
      product = Stripe::Product.retrieve("prod_123")
      assert_requested :get, "#{Stripe.api_base}/v1/products/prod_123"
      assert product.kind_of?(Stripe::Product)
    end

    should "be creatable" do
      _ = Stripe::Product.create(
        name: "My Product"
      )
      assert_requested :post, "#{Stripe.api_base}/v1/products"
    end

    should "be saveable" do
      product = Stripe::Product.retrieve("prod_123")
      product.metadata['key'] = 'value'
      product.save
      assert_requested :post, "#{Stripe.api_base}/v1/products/#{product.id}"
    end

    should "be updateable" do
      product = Stripe::Product.update("prod_123", metadata: {foo: 'bar'})
      assert_requested :post, "#{Stripe.api_base}/v1/products/prod_123"
      assert product.kind_of?(Stripe::Product)
    end

    should "be deletable" do
      product = Stripe::Product.retrieve("prod_123")
      product = product.delete
      assert_requested :delete, "#{Stripe.api_base}/v1/products/#{product.id}"
      assert product.kind_of?(Stripe::Product)
    end
  end
end
