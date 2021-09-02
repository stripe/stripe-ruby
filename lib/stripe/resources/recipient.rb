# File generated from our OpenAPI spec
# frozen_string_literal: true

module EwStripe
  # Recipients objects are deprecated. Please use EwStripe Connect instead.
  class Recipient < APIResource
    extend EwStripe::APIOperations::Create
    include EwStripe::APIOperations::Delete
    extend EwStripe::APIOperations::List
    include EwStripe::APIOperations::Save

    OBJECT_NAME = "recipient"
  end
end
