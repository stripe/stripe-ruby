require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class InvoiceItemTest < Test::Unit::TestCase
    FIXTURE = API_FIXTURES.fetch(:invoice_item)

    should "be listable" do
      invoiceitems = Stripe::InvoiceItem.list
      assert_requested :get, "#{Stripe.api_base}/v1/invoiceitems"
      assert invoiceitems.data.kind_of?(Array)
      assert invoiceitems.first.kind_of?(Stripe::InvoiceItem)
    end

    should "be retrievable" do
      item = Stripe::InvoiceItem.retrieve(FIXTURE[:id])
      assert_requested :get,
        "#{Stripe.api_base}/v1/invoiceitems/#{FIXTURE[:id]}"
      assert item.kind_of?(Stripe::InvoiceItem)
    end

    should "be creatable" do
      item = Stripe::InvoiceItem.create(
        amount: 100,
        currency: "USD",
        customer: API_FIXTURES[:customer][:id]
      )
      assert_requested :post,
        "#{Stripe.api_base}/v1/invoiceitems"
      assert item.kind_of?(Stripe::InvoiceItem)
    end

    should "be saveable" do
      item = Stripe::InvoiceItem.retrieve(FIXTURE[:id])
      item.metadata['key'] = 'value'
      item.save
      assert_requested :post,
        "#{Stripe.api_base}/v1/invoiceitems/#{FIXTURE[:id]}"
    end

    should "be updateable" do
      item = Stripe::InvoiceItem.update(FIXTURE[:id], metadata: { key: 'value' })
      assert_requested :post,
        "#{Stripe.api_base}/v1/invoiceitems/#{FIXTURE[:id]}"
      assert item.kind_of?(Stripe::InvoiceItem)
    end

    should "be deletable" do
      item = Stripe::InvoiceItem.retrieve(FIXTURE[:id])
      item = item.delete
      assert_requested :delete,
        "#{Stripe.api_base}/v1/invoiceitems/#{FIXTURE[:id]}"
      assert item.kind_of?(Stripe::InvoiceItem)
    end
  end
end
