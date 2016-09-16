require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class InvoiceTest < Test::Unit::TestCase
    should "retrieve should retrieve invoices" do
      @mock.expects(:get).once.returns(make_response(make_invoice))
      i = Stripe::Invoice.retrieve('in_test_invoice')
      assert_equal 'in_test_invoice', i.id
    end

    should "create should create a new invoice" do
      @mock.expects(:post).once.returns(make_response(make_invoice))
      i = Stripe::Invoice.create
      assert_equal "in_test_invoice", i.id
    end

    should "pay should pay an invoice" do
      @mock.expects(:get).once.returns(make_response(make_invoice))
      i = Stripe::Invoice.retrieve('in_test_invoice')

      @mock.expects(:post).once.with('https://api.stripe.com/v1/invoices/in_test_invoice/pay', nil, '').returns(make_response(make_paid_invoice))
      i.pay
      assert_equal nil, i.next_payment_attempt
    end

    should "invoices should be updateable" do
      @mock.expects(:post).once.
        with("https://api.stripe.com/v1/invoices/test_invoice", nil, "metadata[foo]=bar").
        returns(make_response(make_invoice(metadata: {foo: 'bar'})))
      i = Stripe::Invoice.update("test_invoice", metadata: {foo: 'bar'})
      assert_equal('bar', i.metadata['foo'])
    end

    should "pay with extra opts should pay an invoice" do
      @mock.expects(:get).once.returns(make_response(make_invoice))
      i = Stripe::Invoice.retrieve('in_test_invoice', {:api_key => 'foobar'})

      Stripe.expects(:execute_request).with do |opts|
        opts[:url] == "#{Stripe.api_base}/v1/invoices/in_test_invoice/pay" &&
          opts[:method] == :post &&
          opts[:headers]['Authorization'] == 'Bearer foobar'
      end.returns(make_response(make_paid_invoice))

      i.pay
      assert_equal nil, i.next_payment_attempt
    end

    should "be able to retrieve upcoming invoices" do
      base = "#{Stripe.api_base}/v1/invoices/upcoming?"
      cus_sub = "customer=c_test_customer&subscription=s_test_subscription&"
      item0 = "subscription_items[][plan]=gold&subscription_items[][quantity]=1&"
      item1 = "subscription_items[][plan]=silver&subscription_items[][quantity]=2"
      @mock.expects(:get).once.with(base + cus_sub + item0 + item1, nil, nil).
        returns(make_response(make_invoice(:customer => 'c_test_customer', :subscription => 's_test_subscription')))

      i = Stripe::Invoice.upcoming(
        :customer => 'c_test_customer',
        :subscription => 's_test_subscription',
        :subscription_items => [{:plan => 'gold', :quantity =>1}, {:plan => 'silver', :quantity =>2}]
      )

      assert_equal 'c_test_customer', i.customer
      assert_equal 's_test_subscription', i.subscription
    end
  end
end
