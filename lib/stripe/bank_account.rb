module Stripe
  class BankAccount < APIResource
    include Stripe::APIOperations::Update
    include Stripe::APIOperations::Delete
    include Stripe::APIOperations::List

    def url
      if respond_to?(:customer)
        "#{Customer.url}/#{CGI.escape(customer)}/sources/#{CGI.escape(id)}"
      elsif respond_to?(:account)
        "#{Account.url}/#{CGI.escape(account)}/external_accounts/#{CGI.escape(id)}"
      end
    end

    def self.retrieve(id, opts=nil)
      raise NotImplementedError.new("Bank accounts cannot be retrieved without an account ID. Retrieve a bank account using account.external_accounts.retrieve('card_id')")
    end

    def verify(opts={})
      response, opts = request(:post, verify_url, {}, opts)
      refresh_from(response, opts)
    end

    private

    def verify_url
      "#{Customer.url}/#{CGI.escape(customer)}/bank_accounts/#{CGI.escape(id)}/verify"
    end
  end
end
