# frozen_string_literal: true

module Stripe
  class Reversal < APIResource
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "transfer_reversal".freeze

    def resource_url
      "#{Transfer.resource_url}/#{CGI.escape(transfer)}/reversals/#{CGI.escape(id)}"
    end

    def self.update(_id, _params = nil, _opts = nil)
      raise NotImplementedError, "Reversals cannot be updated without a transfer ID. Update a reversal using `r = transfer.reversals.retrieve('reversal_id'); r.save`"
    end

    def self.retrieve(_id, _opts = {})
      raise NotImplementedError, "Reversals cannot be retrieved without a transfer ID. Retrieve a reversal using transfer.reversals.retrieve('reversal_id')"
    end
  end
end
