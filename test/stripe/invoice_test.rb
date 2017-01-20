require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class InvoiceTest < Test::Unit::TestCase
    should "retrieve should retrieve invoices" do
      stub_request(:get, "#{Stripe.api_base}/v1/invoices/in_test_invoice").
        to_return(body: JSON.generate(make_invoice))
      i = Stripe::Invoice.retrieve('in_test_invoice')
      assert_equal 'in_test_invoice', i.id
    end

    should "create should create a new invoice" do
      stub_request(:post, "#{Stripe.api_base}/v1/invoices").
        to_return(body: JSON.generate(make_invoice))
      _ = Stripe::Invoice.create
    end

    should "pay should pay an invoice" do
      stub_request(:get, "#{Stripe.api_base}/v1/invoices/in_test_invoice").
        to_return(body: JSON.generate(make_invoice))
      i = Stripe::Invoice.retrieve('in_test_invoice')

      stub_request(:post, "#{Stripe.api_base}/v1/invoices/#{i.id}/pay").
        to_return(body: JSON.generate(make_invoice))
      i.pay
    end

    should "invoices should be updateable" do
      stub_request(:post, "#{Stripe.api_base}/v1/invoices/test_invoice").
        with(body: { metadata: { foo: "bar" } }).
        to_return(body: JSON.generate(make_invoice))
      _ = Stripe::Invoice.update("test_invoice", metadata: {foo: 'bar'})
    end

    should "be able to retrieve upcoming invoices" do
      stub_request(:get, "#{Stripe.api_base}/v1/invoices/upcoming").
        with(query: {
          :customer => 'c_test_customer',
          :subscription => 's_test_subscription',
        }).
        to_return(body: JSON.generate(make_invoice))
      _ = Stripe::Invoice.upcoming(
        :customer => 'c_test_customer',
        :subscription => 's_test_subscription',
      )
    end
  end
end
