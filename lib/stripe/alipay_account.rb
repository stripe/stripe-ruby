module Stripe
  class AlipayAccount < APIResource
    include Stripe::APIOperations::Update
    include Stripe::APIOperations::Delete

    def resource_url
      if respond_to?(:customer) && !self.customer.nil?
        "#{Customer.resource_url}/#{CGI.escape(customer)}/sources/#{CGI.escape(id)}"
      end
    end

    def self.retrieve(id, opts=nil)
      raise NotImplementedError.new("Alipay accounts cannot be retrieved without a customer ID. Retrieve an Alipay account using customer.sources.retrieve('alipay_account_id')")
    end
  end
end
