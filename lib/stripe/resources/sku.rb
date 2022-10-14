# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Stores representations of [stock keeping units](http://en.wikipedia.org/wiki/Stock_keeping_unit).
  # SKUs describe specific product variations, taking into account any combination of: attributes,
  # currency, and cost. For example, a product may be a T-shirt, whereas a specific SKU represents
  # the `size: large`, `color: red` version of that shirt.
  #
  # Can also be used to manage inventory.
  class SKU < APIResource
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Delete
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "sku"
  end
end
