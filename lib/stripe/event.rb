module Stripe
  class Event < APIResource
    include Stripe::APIOperations::List
  end
end
