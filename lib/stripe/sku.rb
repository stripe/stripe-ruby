module Stripe
  class SKU < APIResource
    extend Stripe::APIOperations::List
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::Update
    include Stripe::APIOperations::Save
    include Stripe::APIOperations::Delete
  end
end
