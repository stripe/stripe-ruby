# File generated from our OpenAPI spec
# frozen_string_literal: true

module EwStripe
  module Checkout
    class Session < APIResource
      extend EwStripe::APIOperations::Create
      extend EwStripe::APIOperations::List
      extend EwStripe::APIOperations::NestedResource

      OBJECT_NAME = "checkout.session"

      nested_resource_class_methods :line_item, operations: %i[list]
    end
  end
end
