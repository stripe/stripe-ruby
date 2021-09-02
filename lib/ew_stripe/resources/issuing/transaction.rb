# File generated from our OpenAPI spec
# frozen_string_literal: true

module EwStripe
  module Issuing
    class Transaction < APIResource
      extend EwStripe::APIOperations::List
      include EwStripe::APIOperations::Save

      OBJECT_NAME = "issuing.transaction"
    end
  end
end
