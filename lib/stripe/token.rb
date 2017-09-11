module Stripe
  class Token < APIResource
    extend Stripe::APIOperations::Create

    OBJECT_NAME = "token".freeze
  end
end
