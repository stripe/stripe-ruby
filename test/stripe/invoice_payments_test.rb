# frozen_string_literal: true

require File.expand_path("../test_helper", __dir__)

module Stripe
  class InvoicePaymentsTest < Test::Unit::TestCase
    context "invoice.payments field" do
      should "return nil after instance method calls when field not in response" do
        # Simulate invoice.retrieve() with payments field expanded
        stub_request(:get, "#{Stripe.api_base}/v1/invoices/in_123")
          .to_return(body: JSON.generate({
            id: "in_123",
            object: "invoice",
            amount_paid: 0,
            payments: {
              object: "list",
              data: [{
                id: "invpay_123",
                object: "invoice.payment",
                status: "open",
              }],
              has_more: false,
              url: "/v1/invoices/in_123/payments",
            },
          }))

        # Simulate invoice.pay(), which returns invoice WITHOUT payments field
        stub_request(:post, "#{Stripe.api_base}/v1/invoices/in_123/pay")
          .to_return(body: JSON.generate({
            id: "in_123",
            object: "invoice",
            amount_paid: 0,
            status: "paid",
            # NOTE: payments field is NOT included in response
          }))

        invoice = Stripe::Invoice.retrieve("in_123", expand: ["payments"])

        assert_not_nil invoice.payments, "payments should be non-nil before pay"
        invoice.pay
        assert_nil invoice.payments, "payments should be nil after pay when not in response"
      end
    end
  end
end
