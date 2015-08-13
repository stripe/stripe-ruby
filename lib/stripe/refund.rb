module Stripe
  class Refund < APIResource
    include Stripe::APIOperations::Create
    include Stripe::APIOperations::List
    include Stripe::APIOperations::Update
  end
end
