module Stripe
  class Coupon < APIResource
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Save
    include Stripe::APIOperations::Delete
    extend Stripe::APIOperations::List

    OBJECT_NAME = 'coupon'
  end
end
