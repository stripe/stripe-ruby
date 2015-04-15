module Stripe
  class BankAccount < APIResource
    include Stripe::APIOperations::Update
    include Stripe::APIOperations::Delete
    include Stripe::APIOperations::List

    def url
      "#{Customer.url}/#{CGI.escape(customer)}/bank_accounts/#{CGI.escape(id)}"
    end

    def self.retrieve(id, opts=nil)
      raise NotImplementedError.new("Bank accounts cannot be retrieved without a customer ID. Retrieve a bank account using customer.bank_accounts.retrieve('bank_account_id')")
    end

    def verify(params={}, opts={})
      response, opts = request(:post, verify_url, params, opts)
      refresh_from(response, opts)
    end

    private

    def verify_url
      url + "/verify"
    end
  end
end
