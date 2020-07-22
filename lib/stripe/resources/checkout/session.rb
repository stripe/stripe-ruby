# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Checkout
    class Session < APIResource
      extend Stripe::APIOperations::Create
      extend Stripe::APIOperations::List
      extend Stripe::APIOperations::NestedResource

      OBJECT_NAME = "checkout.session"

      nested_resource_class_methods :line_item, operations: %i[list]
    end
  end
end
