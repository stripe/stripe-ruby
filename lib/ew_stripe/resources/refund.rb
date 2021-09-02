# File generated from our OpenAPI spec
# frozen_string_literal: true

module EwStripe
  class Refund < APIResource
    extend EwStripe::APIOperations::Create
    extend EwStripe::APIOperations::List
    include EwStripe::APIOperations::Save

    OBJECT_NAME = "refund"
  end
end
