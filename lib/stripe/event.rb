module Stripe
  class Event < APIResource
    extend Stripe::APIOperations::List
  end
end
