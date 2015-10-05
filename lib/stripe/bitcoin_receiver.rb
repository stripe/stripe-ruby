module Stripe
  class BitcoinReceiver < APIResource
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Update
    include Stripe::APIOperations::Delete
    extend Stripe::APIOperations::List

    def self.url
      "/v1/bitcoin/receivers"
    end

    def url
      if respond_to?(:customer)
        "#{Customer.url}/#{CGI.escape(customer)}/sources/#{CGI.escape(id)}"
      else
        "#{self.class.url}/#{CGI.escape(id)}"
      end
    end
  end
end
