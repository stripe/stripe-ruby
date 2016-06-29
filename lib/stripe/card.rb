module Stripe
  class Card < APIResource
    include Stripe::APIOperations::Save
    include Stripe::APIOperations::Delete
    extend Stripe::APIOperations::List

    def resource_url
      if respond_to?(:recipient)
        "#{Recipient.resource_url}/#{CGI.escape(recipient)}/cards/#{CGI.escape(id)}"
      elsif respond_to?(:customer)
        "#{Customer.resource_url}/#{CGI.escape(customer)}/sources/#{CGI.escape(id)}"
      elsif respond_to?(:account)
        "#{Account.resource_url}/#{CGI.escape(account)}/external_accounts/#{CGI.escape(id)}"
      end
    end

    def self.update(id, params=nil, opts=nil)
      raise NotImplementedError.new("Cards cannot be updated without a customer ID. Update a card using `c = customer.sources.retrieve('card_id'); c.save`")
    end

    def self.retrieve(id, opts=nil)
      raise NotImplementedError.new("Cards cannot be retrieved without a customer ID. Retrieve a card using customer.sources.retrieve('card_id')")
    end
  end
end
