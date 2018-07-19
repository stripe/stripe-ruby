# frozen_string_literal: true

module Stripe
  class OrderReturn < APIResource
    extend Stripe::APIOperations::List

    OBJECT_NAME = "order_return".freeze
  end
end
