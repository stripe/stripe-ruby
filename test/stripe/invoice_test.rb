require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class InvoiceTest < Test::Unit::TestCase
    should "retrieve should retrieve invoices" do
      @mock.expects(:get).once.returns(make_response(make_invoice))
      i = Stripe::Invoice.retrieve('in_make_invoice')
      assert_equal 'in_make_invoice', i.id
    end

    should "create should create a new invoice" do
      @mock.expects(:post).once.returns(make_response(make_invoice))
      i = Stripe::Invoice.create
      assert_equal "in_make_invoice", i.id
    end

    should "pay should pay an invoice" do
      @mock.expects(:get).once.returns(make_response(make_invoice))
      i = Stripe::Invoice.retrieve('in_make_invoice')

      @mock.expects(:post).once.with('https://api.stripe.com/v1/invoices/in_make_invoice/pay', nil, '').returns(make_response(make_paid_invoice))
      i.pay
      assert_equal nil, i.next_payment_attempt
    end
  end
end
