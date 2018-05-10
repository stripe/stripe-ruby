# frozen_string_literal: true

module Stripe
  class Plan < APIResource
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Delete
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "plan".freeze
  end
end
