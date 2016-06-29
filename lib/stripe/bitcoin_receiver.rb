module Stripe
  class BitcoinReceiver < APIResource
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Save
    include Stripe::APIOperations::Delete
    extend Stripe::APIOperations::List

    def self.resource_url
      "/v1/bitcoin/receivers"
    end

    def resource_url
      if respond_to?(:customer) && !self.customer.nil?
        "#{Customer.resource_url}/#{CGI.escape(customer)}/sources/#{CGI.escape(id)}"
      else
        "#{self.class.resource_url}/#{CGI.escape(id)}"
      end
    end
  end
end
