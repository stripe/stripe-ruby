# frozen_string_literal: true

module Stripe
  class Token < APIResource
    extend Stripe::APIOperations::Create

    OBJECT_NAME = "token"
  end
end
