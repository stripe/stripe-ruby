module Stripe
  module Bitcoin
    class Transaction < APIResource
      include Stripe::APIOperations::List
    end
  end
end
