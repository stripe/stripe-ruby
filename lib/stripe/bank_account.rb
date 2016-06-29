module Stripe
  class BankAccount < APIResource
    include Stripe::APIOperations::Save
    include Stripe::APIOperations::Delete
    extend Stripe::APIOperations::List

    def verify(params={}, opts={})
      response, opts = request(:post, resource_url + '/verify', params, opts)
      initialize_from(response, opts)
    end

    def resource_url
      if respond_to?(:customer)
        "#{Customer.resource_url}/#{CGI.escape(customer)}/sources/#{CGI.escape(id)}"
      elsif respond_to?(:account)
        "#{Account.resource_url}/#{CGI.escape(account)}/external_accounts/#{CGI.escape(id)}"
      end
    end

    def self.update(id, params=nil, opts=nil)
      raise NotImplementedError.new("Bank accounts cannot be updated without an account ID. Update a bank account by using `a = account.external_accounts.retrieve('card_id'); a.save`")
    end

    def self.retrieve(id, opts=nil)
      raise NotImplementedError.new("Bank accounts cannot be retrieved without an account ID. Retrieve a bank account using account.external_accounts.retrieve('card_id')")
    end
  end
end
