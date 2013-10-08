module Stripe
  class Transfer < APIResource
    include Stripe::APIOperations::List
    include Stripe::APIOperations::Create
    include Stripe::APIOperations::Update
  end
end
