module Stripe
  class Token < APIResource
    include Stripe::APIOperations::Create
  end
end
