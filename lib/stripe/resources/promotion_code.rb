# File generated from our OpenAPI spec
# frozen_string_literal: true

module EwStripe
  class PromotionCode < APIResource
    extend EwStripe::APIOperations::Create
    extend EwStripe::APIOperations::List
    include EwStripe::APIOperations::Save

    OBJECT_NAME = "promotion_code"
  end
end
