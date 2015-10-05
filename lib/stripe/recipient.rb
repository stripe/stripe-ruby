module Stripe
  class Recipient < APIResource
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Delete
    include Stripe::APIOperations::Update
    extend Stripe::APIOperations::List

    def transfers
      Transfer.all({ :recipient => id }, @api_key)
    end
  end
end
