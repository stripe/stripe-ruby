module Stripe
  class Reversal < APIResource
    include Stripe::APIOperations::Update
    extend Stripe::APIOperations::List

    def resource_url
      "#{Transfer.resource_url}/#{CGI.escape(transfer)}/reversals/#{CGI.escape(id)}"
    end

    def self.retrieve(id, opts={})
      raise NotImplementedError.new("Reversals cannot be retrieved without a transfer ID. Retrieve a reversal using transfer.reversals.retrieve('reversal_id')")
    end
  end
end
