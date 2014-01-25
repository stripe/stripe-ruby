module Stripe
  class Recipient < APIResource
    include Stripe::APIOperations::Create
    include Stripe::APIOperations::Delete
    include Stripe::APIOperations::Update
    include Stripe::APIOperations::List

    def transfers(api_key=nil)
      api_key ||= @api_key
      Transfer.all({ :recipient => id }, api_key)
    end
  end
end
