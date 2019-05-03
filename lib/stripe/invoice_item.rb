# frozen_string_literal: true

module Stripe
  class InvoiceItem < APIResource
    extend Stripe::APIOperations::List
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Delete
    include Stripe::APIOperations::Save

    OBJECT_NAME = 'invoiceitem'.freeze
  end
end
