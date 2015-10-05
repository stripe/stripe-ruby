module Stripe
  class Coupon < APIResource
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Update
    include Stripe::APIOperations::Delete
    extend Stripe::APIOperations::List
  end
end
