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
      assert_equal i.next_payment_attempt, nil
    end

    context "when specifying per-object credentials" do
      setup do
        Stripe.api_key = "global"
        @api_key = 'sk_test_local'

        @mock.expects(:get).once.returns(test_response(test_invoice))
        @invoice = Stripe::Invoice.retrieve("test_customer")

        Stripe.expects(:execute_request).with do |opts|
          opts[:headers][:authorization] == "Bearer #{@api_key}"
        end.returns(test_response({}))
      end

      teardown do
        Stripe.api_key = "nil"
      end

      should "use the per-object credentials when getting the upcoming invoice" do
        Stripe::Invoice.upcoming({}, @api_key)
      end

      should "use the per-object credentials when paying the invoice" do
        @invoice.pay(@api_key)
      end
    end
  end
end
