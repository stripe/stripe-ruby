# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class Price < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "price"
  end
end
