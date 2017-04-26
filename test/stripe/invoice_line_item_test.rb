require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class InvoiceLineItemTest < Test::Unit::TestCase
    FIXTURE = API_FIXTURES.fetch(:invoice_line_item)
  end
end
