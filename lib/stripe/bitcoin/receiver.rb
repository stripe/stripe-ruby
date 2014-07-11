module Stripe
  module Bitcoin
    class Receiver < APIResource
      include Stripe::APIOperations::Create
      include Stripe::APIOperations::List
    end
  end
end
