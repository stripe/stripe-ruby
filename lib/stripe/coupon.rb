module Stripe
  class Coupon < APIResource
    include Stripe::APIOperations::Create
    include Stripe::APIOperations::Update
    include Stripe::APIOperations::Delete
    include Stripe::APIOperations::List
  end
end
