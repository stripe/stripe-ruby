module Stripe
  class Card < APIResource
    include Stripe::APIOperations::Update
    include Stripe::APIOperations::Delete
    include Stripe::APIOperations::List

    def url
      "#{Customer.url}/#{CGI.escape(customer)}/cards/#{CGI.escape(id)}"
    end

    def self.retrieve(id, api_key=nil)
      raise NotImplementedError.new("Cards cannot be retrieved without a customer ID. Retrieve a card using customer.cards.retrieve('card_id')")
    end
  end
end
