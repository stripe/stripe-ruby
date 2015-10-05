module Stripe
  class Refund < APIResource
    include Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Update
  end
end
