module Stripe
  class SKU < APIResource
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Create
    include Stripe::APIOperations::Update

  end
end
