module Stripe
  class SKU < APIResource
    include Stripe::APIOperations::List
    include Stripe::APIOperations::Create
    include Stripe::APIOperations::Update

  end
end
