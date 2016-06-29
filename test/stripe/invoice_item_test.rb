require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class InvoiceItemTest < Test::Unit::TestCase
    should "retrieve should retrieve invoice items" do
      @mock.expects(:get).once.returns(make_response(make_invoice_item))
      ii = Stripe::InvoiceItem.retrieve('in_test_invoice_item')
      assert_equal 'ii_test_invoice_item', ii.id
    end

    should "invoice items should be updateable" do
      @mock.expects(:post).once.
        with('https://api.stripe.com/v1/invoiceitems/test_invoice_item', nil, 'metadata[foo]=bar').
        returns(make_response(make_charge(metadata: {'foo' => 'bar'})))
      ii = Stripe::InvoiceItem.update("test_invoice_item", metadata: {foo: 'bar'})
      assert_equal('bar', ii.metadata['foo'])
    end
  end
end
