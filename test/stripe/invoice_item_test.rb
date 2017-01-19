require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class InvoiceItemTest < Test::Unit::TestCase
    should "retrieve should retrieve invoice items" do
      stub_request(:get, "#{Stripe.api_base}/v1/invoiceitems/ii_test_invoice_item").
        to_return(body: make_response(make_invoice_item))
      _ = Stripe::InvoiceItem.retrieve('ii_test_invoice_item')
    end

    should "invoice items should be updateable" do
      stub_request(:post, "#{Stripe.api_base}/v1/invoiceitems/ii_test_invoice_item").
        with(body: { metadata: { foo: "bar" } }).
        to_return(body: make_response(make_invoice_item))
      _ = Stripe::InvoiceItem.update("ii_test_invoice_item", metadata: {foo: 'bar'})
    end
  end
end
