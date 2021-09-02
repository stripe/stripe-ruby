# File generated from our OpenAPI spec
# frozen_string_literal: true

module EwStripe
  module Issuing
    class Cardholder < APIResource
      extend EwStripe::APIOperations::Create
      extend EwStripe::APIOperations::List
      include EwStripe::APIOperations::Save

      OBJECT_NAME = "issuing.cardholder"
    end
  end
end
