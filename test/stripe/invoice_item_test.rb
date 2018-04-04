require File.expand_path("../../test_helper", __FILE__)

module Stripe
  class InvoiceItemTest < Test::Unit::TestCase
    should "be listable" do
      invoiceitems = Stripe::InvoiceItem.list
      assert_requested :get, "#{Stripe.api_base}/v1/invoiceitems"
      assert invoiceitems.data.is_a?(Array)
      assert invoiceitems.first.is_a?(Stripe::InvoiceItem)
    end

    should "be retrievable" do
      item = Stripe::InvoiceItem.retrieve("ii_123")
      assert_requested :get,
                       "#{Stripe.api_base}/v1/invoiceitems/ii_123"
      assert item.is_a?(Stripe::InvoiceItem)
    end

    should "be creatable" do
      item = Stripe::InvoiceItem.create(
        amount: 100,
        currency: "USD",
        customer: "cus_123"
      )
      assert_requested :post,
                       "#{Stripe.api_base}/v1/invoiceitems"
      assert item.is_a?(Stripe::InvoiceItem)
    end

    should "be saveable" do
      item = Stripe::InvoiceItem.retrieve("ii_123")
      item.metadata["key"] = "value"
      item.save
      assert_requested :post,
                       "#{Stripe.api_base}/v1/invoiceitems/#{item.id}"
    end

    should "be updateable" do
      item = Stripe::InvoiceItem.update("ii_123", metadata: { key: "value" })
      assert_requested :post,
                       "#{Stripe.api_base}/v1/invoiceitems/ii_123"
      assert item.is_a?(Stripe::InvoiceItem)
    end

    should "be deletable" do
      item = Stripe::InvoiceItem.retrieve("ii_123")
      item_id = item.id
      item = item.delete
      assert_requested :delete,
                       "#{Stripe.api_base}/v1/invoiceitems/#{item_id}"
      assert item.is_a?(Stripe::InvoiceItem)
    end
  end
end
