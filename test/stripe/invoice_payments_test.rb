# frozen_string_literal: true

require File.expand_path("../test_helper", __dir__)

module Stripe
  class InvoicePaymentsTest < Test::Unit::TestCase
    context "invoice.payments field type consistency" do
      should "remain ListObject after instance method calls" do
        stub_request(:get, "#{Stripe.api_base}/v1/invoices/in_test")
          .to_return(body: JSON.generate({
            id: "in_test",
            object: "invoice",
            amount_paid: 0,
            payments: {
              object: "list",
              data: [{
                id: "invpay_test",
                object: "invoice.payment",
                status: "open",
              }],
              has_more: false,
              url: "/v1/invoices/in_test/payments",
            },
          }))

        stub_request(:post, "#{Stripe.api_base}/v1/invoices/in_test/void")
          .to_return(body: JSON.generate({
            id: "in_test",
            object: "invoice",
            amount_paid: 0,
            status: "void",
          }))

        invoice = Stripe::Invoice.retrieve("in_test")

        # Before void: payments should be a ListObject
        assert invoice.payments.is_a?(Stripe::ListObject),
               "payments should be ListObject before void, got #{invoice.payments.class}"

        # Call void_invoice which updates the invoice in-place
        invoice.void_invoice

        # After void: payments should still be accessible and should be a ListObject
        # (not a Hash, which was the bug)
        assert invoice.payments.is_a?(Stripe::ListObject),
               "payments should remain ListObject after void, got #{invoice.payments.class}"
      end

      should "properly convert payments to ListObject on initial retrieve" do
        stub_request(:get, "#{Stripe.api_base}/v1/invoices/in_test2")
          .to_return(body: JSON.generate({
            id: "in_test2",
            object: "invoice",
            payments: {
              object: "list",
              data: [],
              has_more: false,
              url: "/v1/invoices/in_test2/payments",
            },
          }))

        invoice = Stripe::Invoice.retrieve("in_test2")

        assert invoice.payments.is_a?(Stripe::ListObject),
               "payments should be ListObject, got #{invoice.payments.class}"
      end
    end
  end
end
