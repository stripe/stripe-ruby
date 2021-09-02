# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

module EwStripe
  class SKUTest < Test::Unit::TestCase
    should "be listable" do
      skus = EwStripe::SKU.list
      assert_requested :get, "#{EwStripe.api_base}/v1/skus"
      assert skus.data.is_a?(Array)
      assert skus.data[0].is_a?(EwStripe::SKU)
    end

    should "be retrievable" do
      sku = EwStripe::SKU.retrieve("sku_123")
      assert_requested :get, "#{EwStripe.api_base}/v1/skus/sku_123"
      assert sku.is_a?(EwStripe::SKU)
    end

    should "be creatable" do
      _ = EwStripe::SKU.create(
        currency: "USD",
        inventory: { type: "finite", quantity: 500 },
        price: 100,
        product: "prod_123"
      )
      assert_requested :post, "#{EwStripe.api_base}/v1/skus"
    end

    should "be saveable" do
      sku = EwStripe::SKU.retrieve("sku_123")
      sku.metadata["key"] = "value"
      sku.save
      assert_requested :post, "#{EwStripe.api_base}/v1/skus/#{sku.id}"
    end

    should "be updateable" do
      sku = EwStripe::SKU.update("sku_123", metadata: { foo: "bar" })
      assert_requested :post, "#{EwStripe.api_base}/v1/skus/sku_123"
      assert sku.is_a?(EwStripe::SKU)
    end

    context "#delete" do
      should "be deletable" do
        sku = EwStripe::SKU.retrieve("sku_123")
        sku = sku.delete
        assert_requested :delete, "#{EwStripe.api_base}/v1/skus/#{sku.id}"
        assert sku.is_a?(EwStripe::SKU)
      end
    end

    context ".delete" do
      should "be deletable" do
        sku = EwStripe::SKU.delete("sku_123")
        assert_requested :delete, "#{EwStripe.api_base}/v1/skus/sku_123"
        assert sku.is_a?(EwStripe::SKU)
      end
    end
  end
end
