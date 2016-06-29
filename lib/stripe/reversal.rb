module Stripe
  class Reversal < APIResource
    include Stripe::APIOperations::Save
    extend Stripe::APIOperations::List

    def resource_url
      "#{Transfer.resource_url}/#{CGI.escape(transfer)}/reversals/#{CGI.escape(id)}"
    end

    def self.update(id, params=nil, opts=nil)
      raise NotImplementedError.new("Reversals cannot be updated without a transfer ID. Update a reversal using `r = transfer.reversals.retrieve('reversal_id'); r.save`")
    end

    def self.retrieve(id, opts={})
      raise NotImplementedError.new("Reversals cannot be retrieved without a transfer ID. Retrieve a reversal using transfer.reversals.retrieve('reversal_id')")
    end
  end
end
