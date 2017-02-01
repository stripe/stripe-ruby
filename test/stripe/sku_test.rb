require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class SKUTest < Test::Unit::TestCase
    FIXTURE = API_FIXTURES.fetch(:sku)

    should "be listable" do
      skus = Stripe::SKU.list
      assert_requested :get, "#{Stripe.api_base}/v1/skus"
      assert skus.data.kind_of?(Array)
      assert skus.data[0].kind_of?(Stripe::SKU)
    end

    should "be retrievable" do
      sku = Stripe::SKU.retrieve(FIXTURE[:id])
      assert_requested :get, "#{Stripe.api_base}/v1/skus/#{FIXTURE[:id]}"
      assert sku.kind_of?(Stripe::SKU)
    end

    should "be creatable" do
      _ = Stripe::SKU.create(
        currency: "USD",
        inventory: { type: "finite", quantity: 500 },
        price: 100,
        product: API_FIXTURES.fetch(:product)[:id]
      )
      assert_requested :post, "#{Stripe.api_base}/v1/skus"
    end

    should "be saveable" do
      sku = Stripe::SKU.retrieve(FIXTURE[:id])
      sku.metadata['key'] = 'value'
      sku.save
      assert_requested :post, "#{Stripe.api_base}/v1/skus/#{FIXTURE[:id]}"
    end

    should "be updateable" do
      sku = Stripe::SKU.update(FIXTURE[:id], metadata: {foo: 'bar'})
      assert_requested :post, "#{Stripe.api_base}/v1/skus/#{FIXTURE[:id]}"
      assert sku.kind_of?(Stripe::SKU)
    end

    should "be deletable" do
      sku = Stripe::SKU.retrieve(FIXTURE[:id])
      sku = sku.delete
      assert_requested :delete, "#{Stripe.api_base}/v1/skus/#{FIXTURE[:id]}"
      assert sku.kind_of?(Stripe::SKU)
    end
  end
end
