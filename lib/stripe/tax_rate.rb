# frozen_string_literal: true

module Stripe
  class TaxRate < APIResource
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Save
    extend Stripe::APIOperations::List

    OBJECT_NAME = "tax_rate".freeze
  end
end
