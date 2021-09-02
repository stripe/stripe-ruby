# File generated from our OpenAPI spec
# frozen_string_literal: true

module EwStripe
  class ApplicationFee < APIResource
    extend EwStripe::APIOperations::List
    extend EwStripe::APIOperations::NestedResource

    OBJECT_NAME = "application_fee"

    nested_resource_class_methods :refund,
                                  operations: %i[create retrieve update list]
  end
end
