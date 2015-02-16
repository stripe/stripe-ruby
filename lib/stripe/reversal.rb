module Stripe
  class Reversal < APIResource
    include Stripe::APIOperations::Update
    include Stripe::APIOperations::List

    def url
      "#{Transfer.url}/#{CGI.escape(transfer)}/reversals/#{CGI.escape(id)}"
    end

    def self.retrieve(id, opts={})
      raise NotImplementedError.new("Reversals cannot be retrieved without a transfer ID. Retrieve a reversal using transfer.reversals.retrieve('reversal_id')")
    end
  end
end
