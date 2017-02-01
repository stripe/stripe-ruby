require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class InvoiceTest < Test::Unit::TestCase
    FIXTURE = API_FIXTURES.fetch(:invoice)

    should "be listable" do
      invoices = Stripe::Invoice.list
      assert_requested :get, "#{Stripe.api_base}/v1/invoices"
      assert invoices.data.kind_of?(Array)
      assert invoices.first.kind_of?(Stripe::Invoice)
    end

    should "be retrievable" do
      invoice = Stripe::Invoice.retrieve(FIXTURE[:id])
      assert_requested :get, "#{Stripe.api_base}/v1/invoices/#{FIXTURE[:id]}"
      assert invoice.kind_of?(Stripe::Invoice)
    end

    should "be creatable" do
      invoice = Stripe::Invoice.create(
        :customer => API_FIXTURES[:customer][:id]
      )
      assert_requested :post, "#{Stripe.api_base}/v1/invoices"
      assert invoice.kind_of?(Stripe::Invoice)
    end

    should "be saveable" do
      invoice = Stripe::Invoice.retrieve(FIXTURE[:id])
      invoice.metadata['key'] = 'value'
      invoice.save
      assert_requested :post, "#{Stripe.api_base}/v1/invoices/#{FIXTURE[:id]}"
    end

    should "be updateable" do
      invoice = Stripe::Invoice.update(FIXTURE[:id], metadata: { key: 'value' })
      assert_requested :post, "#{Stripe.api_base}/v1/invoices/#{FIXTURE[:id]}"
      assert invoice.kind_of?(Stripe::Invoice)
    end

    context "#pay" do
      should "pay invoice" do
        invoice = Stripe::Invoice.retrieve(FIXTURE[:id])
        invoice = invoice.pay
        assert_requested :post,
          "#{Stripe.api_base}/v1/invoices/#{FIXTURE[:id]}/pay"
        assert invoice.kind_of?(Stripe::Invoice)
      end
    end

    context "#upcoming" do
      should "retrieve upcoming invoices" do
        invoice = Stripe::Invoice.upcoming(
          customer: API_FIXTURES[:customer][:id],
          subscription: API_FIXTURES[:subscription][:id]
        )
        assert_requested :get, "#{Stripe.api_base}/v1/invoices/upcoming",
          query: {
            customer: API_FIXTURES[:customer][:id],
            subscription: API_FIXTURES[:subscription][:id]
          }
        assert invoice.kind_of?(Stripe::Invoice)
      end
    end
  end
end
