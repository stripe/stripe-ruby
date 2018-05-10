# frozen_string_literal: true

module Stripe
  class Product < APIResource
    extend Stripe::APIOperations::List
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Save
    include Stripe::APIOperations::Delete

    OBJECT_NAME = "product".freeze
  end
end
