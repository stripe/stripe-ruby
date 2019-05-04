# frozen_string_literal: true

module Stripe
  class InvoiceLineItem < APIResource
    extend Stripe::APIOperations::List

    OBJECT_NAME = 'line_item'.freeze
  end
end
