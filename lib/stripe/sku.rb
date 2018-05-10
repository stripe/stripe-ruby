# frozen_string_literal: true

module Stripe
  class SKU < APIResource
    extend Stripe::APIOperations::List
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Save
    include Stripe::APIOperations::Delete

    OBJECT_NAME = "sku".freeze
  end
end
