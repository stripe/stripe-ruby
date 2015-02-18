require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class InvoiceTest < Test::Unit::TestCase
    should "retrieve should retrieve invoices" do
      @mock.expects(:get).once.returns(test_response(test_invoice))
      i = Stripe::Invoice.retrieve('in_test_invoice')
      assert_equal 'in_test_invoice', i.id
    end

    should "create should create a new invoice" do
      @mock.expects(:post).once.returns(test_response(test_invoice))
      i = Stripe::Invoice.create
      assert_equal "in_test_invoice", i.id
    end

    should "pay should pay an invoice" do
      @mock.expects(:get).once.returns(test_response(test_invoice))
      i = Stripe::Invoice.retrieve('in_test_invoice')

      @mock.expects(:post).once.with('https://api.stripe.com/v1/invoices/in_test_invoice/pay', nil, '').returns(test_response(test_paid_invoice))
      i.pay
      assert_equal nil, i.next_payment_attempt
    end

    should "pay with extra opts should pay an invoice" do
      @mock.expects(:get).once.returns(test_response(test_invoice))
      i = Stripe::Invoice.retrieve('in_test_invoice', {:api_key => 'foobar'})

      Stripe.expects(:execute_request).with do |opts|
        opts[:url] == "#{Stripe.api_base}/v1/invoices/in_test_invoice/pay" &&
          opts[:method] == :post &&
          opts[:headers][:authorization] == 'Bearer foobar'
      end.returns(test_response(test_paid_invoice))

      i.pay
      assert_equal nil, i.next_payment_attempt
    end
  end
end
