# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class Transfer < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save
    extend Stripe::APIOperations::NestedResource

    OBJECT_NAME = "transfer"

    nested_resource_class_methods :reversal,
                                  operations: %i[create retrieve update list]
  end
end
