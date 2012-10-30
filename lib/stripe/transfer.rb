module Stripe
  class Transfer < APIResource
    include Stripe::APIOperations::List
  end
end
