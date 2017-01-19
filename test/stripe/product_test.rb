require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class ProductTest < Test::Unit::TestCase
    should "products should be listable" do
      stub_request(:get, "#{Stripe.api_base}/v1/products").
        to_return(body: make_response(make_product_array))
      products = Stripe::Product.list
      assert products.data.kind_of?(Array)
      products.each do |product|
        assert product.kind_of?(Stripe::Product)
      end
    end

    should "products should be deletable" do
      stub_request(:get, "#{Stripe.api_base}/v1/products/test_product").
        to_return(body: make_response(make_product))
      p = Stripe::Product.retrieve("test_product")

      stub_request(:delete, "#{Stripe.api_base}/v1/products/#{p.id}").
        to_return(body: make_response(make_product))
      p.delete
    end

    should "products should be saveable" do
      stub_request(:get, "#{Stripe.api_base}/v1/products/test_product").
        to_return(body: make_response(make_product))
      p = Stripe::Product.new("test_product")
      p.refresh

      stub_request(:post, "#{Stripe.api_base}/v1/products/#{p.id}").
        with(body: { :description => "update" }).
        to_return(body: make_response(make_product))
      p.description = "update"
      p.save
    end

    should "products should be updateable" do
      stub_request(:post, "#{Stripe.api_base}/v1/products/test_product").
        with(body: { :description => "update" }).
        to_return(body: make_response(make_product))
      _ = Stripe::Product.update("test_product", description: "update")
    end
  end
end
