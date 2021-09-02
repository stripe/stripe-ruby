# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

module EwStripe
  class InvoiceTest < Test::Unit::TestCase
    should "be listable" do
      invoices = EwStripe::Invoice.list
      assert_requested :get, "#{EwStripe.api_base}/v1/invoices"
      assert invoices.data.is_a?(Array)
      assert invoices.first.is_a?(EwStripe::Invoice)
    end

    should "be retrievable" do
      invoice = EwStripe::Invoice.retrieve("in_123")
      assert_requested :get, "#{EwStripe.api_base}/v1/invoices/in_123"
      assert invoice.is_a?(EwStripe::Invoice)
    end

    should "be creatable" do
      invoice = EwStripe::Invoice.create(
        customer: "cus_123"
      )
      assert_requested :post, "#{EwStripe.api_base}/v1/invoices"
      assert invoice.is_a?(EwStripe::Invoice)
    end

    should "be saveable" do
      invoice = EwStripe::Invoice.retrieve("in_123")
      invoice.metadata["key"] = "value"
      invoice.save
      assert_requested :post, "#{EwStripe.api_base}/v1/invoices/#{invoice.id}"
    end

    should "be updateable" do
      invoice = EwStripe::Invoice.update("in_123", metadata: { key: "value" })
      assert_requested :post, "#{EwStripe.api_base}/v1/invoices/in_123"
      assert invoice.is_a?(EwStripe::Invoice)
    end

    context "#delete" do
      should "be deletable" do
        invoice = EwStripe::Invoice.retrieve("in_123")
        invoice = invoice.delete
        assert_requested :delete, "#{EwStripe.api_base}/v1/invoices/#{invoice.id}"
        assert invoice.is_a?(EwStripe::Invoice)
      end
    end

    context ".delete" do
      should "be deletable" do
        invoice = EwStripe::Invoice.delete("in_123")
        assert_requested :delete, "#{EwStripe.api_base}/v1/invoices/in_123"
        assert invoice.is_a?(EwStripe::Invoice)
      end
    end

    context "#finalize" do
      should "finalize invoice" do
        invoice = EwStripe::Invoice.retrieve("in_123")
        invoice = invoice.finalize_invoice
        assert_requested :post,
                         "#{EwStripe.api_base}/v1/invoices/#{invoice.id}/finalize"
        assert invoice.is_a?(EwStripe::Invoice)
      end
    end

    context ".finalize" do
      should "finalize invoice" do
        invoice = EwStripe::Invoice.finalize_invoice("in_123")
        assert_requested :post, "#{EwStripe.api_base}/v1/invoices/in_123/finalize"
        assert invoice.is_a?(EwStripe::Invoice)
      end
    end

    context "#mark_uncollectible" do
      should "mark invoice as uncollectible" do
        invoice = EwStripe::Invoice.retrieve("in_123")
        invoice = invoice.mark_uncollectible
        assert_requested :post,
                         "#{EwStripe.api_base}/v1/invoices/#{invoice.id}/mark_uncollectible"
        assert invoice.is_a?(EwStripe::Invoice)
      end
    end

    context ".mark_uncollectible" do
      should "mark invoice as uncollectible" do
        invoice = EwStripe::Invoice.mark_uncollectible("in_123")
        assert_requested :post, "#{EwStripe.api_base}/v1/invoices/in_123/mark_uncollectible"
        assert invoice.is_a?(EwStripe::Invoice)
      end
    end

    context "#pay" do
      should "pay invoice" do
        invoice = EwStripe::Invoice.retrieve("in_123")
        invoice = invoice.pay
        assert_requested :post,
                         "#{EwStripe.api_base}/v1/invoices/#{invoice.id}/pay"
        assert invoice.is_a?(EwStripe::Invoice)
      end

      should "pay invoice with a specific source" do
        invoice = EwStripe::Invoice.retrieve("in_123")
        invoice = invoice.pay(
          source: "src_123"
        )
        assert_requested :post,
                         "#{EwStripe.api_base}/v1/invoices/#{invoice.id}/pay",
                         body: {
                           source: "src_123",
                         }
        assert invoice.is_a?(EwStripe::Invoice)
      end
    end

    context ".pay" do
      should "pay invoice" do
        invoice = EwStripe::Invoice.pay("in_123", source: "src_123")
        assert_requested :post,
                         "#{EwStripe.api_base}/v1/invoices/in_123/pay",
                         body: { source: "src_123" }
        assert invoice.is_a?(EwStripe::Invoice)
      end
    end

    context "#send_invoice" do
      should "send invoice" do
        invoice = EwStripe::Invoice.retrieve("in_123")
        invoice = invoice.send_invoice
        assert_requested :post,
                         "#{EwStripe.api_base}/v1/invoices/#{invoice.id}/send"
        assert invoice.is_a?(EwStripe::Invoice)
      end
    end

    context ".send_invoice" do
      should "send invoice" do
        invoice = EwStripe::Invoice.send_invoice("in_123")
        assert_requested :post, "#{EwStripe.api_base}/v1/invoices/in_123/send"
        assert invoice.is_a?(EwStripe::Invoice)
      end
    end

    context ".upcoming" do
      should "retrieve upcoming invoices" do
        invoice = EwStripe::Invoice.upcoming(
          customer: "cus_123",
          subscription: "sub_123"
        )
        assert_requested :get, "#{EwStripe.api_base}/v1/invoices/upcoming",
                         query: {
                           customer: "cus_123",
                           subscription: "sub_123",
                         }
        assert invoice.is_a?(EwStripe::Invoice)
      end

      should "retrieve upcoming invoices with items" do
        items = [
          { plan: "gold", quantity: 2 },
          { id: "si_123", deleted: true },
        ]

        invoice = EwStripe::Invoice.upcoming(
          customer: "cus_123",
          subscription_items: items
        )

        assert_requested :get, "#{EwStripe.api_base}/v1/invoices/upcoming",
                         query: {
                           customer: "cus_123",
                           subscription_items: [
                             { plan: "gold", quantity: "2" },
                             { id: "si_123", deleted: true },
                           ],
                         }
        assert invoice.is_a?(EwStripe::Invoice)
      end

      should "be callable with an empty string" do
        invoice = EwStripe::Invoice.upcoming(
          coupon: "",
          customer: "cus_123"
        )
        assert_requested :get, "#{EwStripe.api_base}/v1/invoices/upcoming",
                         query: {
                           coupon: "",
                           customer: "cus_123",
                         }
        assert invoice.is_a?(EwStripe::Invoice)
      end
    end

    context ".list_upcoming_line_items" do
      should "retrieve upcoming invoices" do
        line_items = EwStripe::Invoice.list_upcoming_line_items(
          customer: "cus_123",
          subscription: "sub_123"
        )
        assert_requested :get, "#{EwStripe.api_base}/v1/invoices/upcoming/lines",
                         query: {
                           customer: "cus_123",
                           subscription: "sub_123",
                         }
        assert line_items.data.is_a?(Array)
        assert line_items.data[0].is_a?(EwStripe::InvoiceLineItem)
      end
    end

    context "#void_invoice" do
      should "void invoice" do
        invoice = EwStripe::Invoice.retrieve("in_123")
        invoice = invoice.void_invoice
        assert_requested :post,
                         "#{EwStripe.api_base}/v1/invoices/#{invoice.id}/void"
        assert invoice.is_a?(EwStripe::Invoice)
      end
    end

    context ".void_invoice" do
      should "void invoice" do
        invoice = EwStripe::Invoice.void_invoice("in_123")
        assert_requested :post, "#{EwStripe.api_base}/v1/invoices/in_123/void"
        assert invoice.is_a?(EwStripe::Invoice)
      end
    end
  end
end
