module Stripe
  class Plan < APIResource
    include Stripe::APIOperations::Create
    include Stripe::APIOperations::Delete
    include Stripe::APIOperations::List
    include Stripe::APIOperations::Update
  end
end
