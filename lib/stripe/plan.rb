module Stripe
  class Plan < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::Update
    include Stripe::APIOperations::Delete
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save
  end
end
