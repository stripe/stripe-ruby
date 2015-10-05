module Stripe
  class Token < APIResource
    extend Stripe::APIOperations::Create
  end
end
