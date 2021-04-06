# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

module Stripe
  class ProductTest < Test::Unit::TestCase
    should "be listable" do
      products = StripeClient.new.product.list
      assert_requested :get, "#{Stripe.api_base}/v1/products"
      assert products.data.is_a?(Array)
      assert products.data[0].is_a?(Stripe::Product)
    end

    should "be retrievable" do
      product = StripeClient.new.product.retrieve("prod_123")
      assert_requested :get, "#{Stripe.api_base}/v1/products/prod_123"
      assert product.is_a?(Stripe::Product)
    end

    should "be creatable" do
      product = StripeClient.new.product.create(
        name: "My Product"
      )
      assert_requested :post, "#{Stripe.api_base}/v1/products"
      assert product.is_a?(Stripe::Product)
    end

    should "be saveable" do
      product = StripeClient.new.product.retrieve("prod_123")
      product.metadata["key"] = "value"
      product.save
      assert_requested :post, "#{Stripe.api_base}/v1/products/#{product.id}"
    end

    should "be updateable" do
      product = StripeClient.new.product.update("prod_123", metadata: { foo: "bar" })
      assert_requested :post, "#{Stripe.api_base}/v1/products/prod_123"
      assert product.is_a?(Stripe::Product)
    end

    context "#delete" do
      should "be deletable" do
        product = StripeClient.new.product.retrieve("prod_123")
        product = product.delete
        assert_requested :delete, "#{Stripe.api_base}/v1/products/#{product.id}"
        assert product.is_a?(Stripe::Product)
      end
    end

    context ".delete" do
      should "be deletable" do
        product = StripeClient.new.product.delete("prod_123")
        assert_requested :delete, "#{Stripe.api_base}/v1/products/prod_123"
        assert product.is_a?(Stripe::Product)
      end
    end
  end
end
