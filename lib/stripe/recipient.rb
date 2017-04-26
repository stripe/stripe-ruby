module Stripe
  class Recipient < APIResource
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Delete
    include Stripe::APIOperations::Save
    extend Stripe::APIOperations::List

    OBJECT_NAME = 'recipient'

    def transfers
      Transfer.all({ :recipient => id }, @api_key)
    end
  end
end
