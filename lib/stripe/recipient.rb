module Stripe
  class Recipient < APIResource
    include Stripe::APIOperations::Create
    include Stripe::APIOperations::Delete
    include Stripe::APIOperations::Update
    include Stripe::APIOperations::List

    def transfers
      Transfer.all({ :recipient => id }, @api_key)
    end
  end
end
