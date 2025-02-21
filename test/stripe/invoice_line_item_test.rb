# frozen_string_literal: true

require File.expand_path("../test_helper", __dir__)

module Stripe
  class InvoiceLineItemTest < Test::Unit::TestCase
    should "be updateable" do
      item = Stripe::InvoiceLineItem.update("in_123", "il_tmp_123")
      assert_requested :post, "#{Stripe.api_base}/v1/invoices/in_123/lines/il_tmp_123"
      assert item.is_a?(Stripe::InvoiceLineItem)
    end
  end
end
