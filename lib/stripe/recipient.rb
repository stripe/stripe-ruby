# frozen_string_literal: true

module Stripe
  # Recipients objects are deprecated. Please use Stripe Connect instead.
  class Recipient < APIResource
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Delete
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "recipient".freeze

    def transfers
      Transfer.all({ recipient: id }, @api_key)
    end
  end
end
