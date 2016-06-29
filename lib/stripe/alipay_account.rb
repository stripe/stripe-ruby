module Stripe
  class AlipayAccount < APIResource
    include Stripe::APIOperations::Save
    include Stripe::APIOperations::Delete

    def resource_url
      if respond_to?(:customer) && !self.customer.nil?
        "#{Customer.resource_url}/#{CGI.escape(customer)}/sources/#{CGI.escape(id)}"
      end
    end

    def self.update(id, params=nil, opts=nil)
      raise NotImplementedError.new("Alipay accounts cannot be updated without a customer ID. Update an Alipay account by `a = customer.sources.retrieve('alipay_account_id'); a.save`")
    end

    def self.retrieve(id, opts=nil)
      raise NotImplementedError.new("Alipay accounts cannot be retrieved without a customer ID. Retrieve an Alipay account using customer.sources.retrieve('alipay_account_id')")
    end
  end
end
